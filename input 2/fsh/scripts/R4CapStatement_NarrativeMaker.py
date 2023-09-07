'''
Benjamin Langley

Usage: python3 R4CapStatement_NarrativeMaker.py [json file]
Dependecies: 
    fhirclient
    pandas
    xlrd
    openpyxl
    stringcase
    jinja2
    commonmark
    lxml

To install all dependencies: pip3 install -r requirements.txt
to run on windows: python -m pip ...

NOTE: this requires the r4models to be installed in the fhirclient pip site-package, to be installed in [installdir]/lib/python/site-packages/fhirclient
Email Eric Haas for these models

Modified from: https://github.com/Healthedata1/MyNotebooks/blob/master/CapStatement/R4CapStatement_Maker.ipynb
'''
import sys
import os
import os.path
from os import path
import validators
import fhirclient.r4models.capabilitystatement as CS
import fhirclient.r4models.codeableconcept as CC
import fhirclient.r4models.fhirdate as D
import fhirclient.r4models.extension as X
import fhirclient.r4models.contactdetail as CD
import fhirclient.r4models.narrative as N
import fhirclient.r4models.bundle as B
import re 

import tarfile
# import fhirclient.r4models.narrative as N
import json
from json import dumps, loads
from requests import post
from pathlib import Path
from collections import namedtuple
from pandas import *
from datetime import datetime, date
from stringcase import snakecase, titlecase
from jinja2 import Environment, FileSystemLoader, select_autoescape
from commonmark import commonmark
from lxml import etree

# GLOBALS
fhir_base_url = 'http://hl7.org/fhir/'
f_jurisdiction = CC.CodeableConcept({
    "coding": [
        {
            "system": "urn:iso:std:iso:3166",
            "code": "US"
        }
    ]
})
conf_url = 'http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation'
combo_url = 'http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination'
# dict to for SP to get right canonicals, may use spreadsheet or package file in future.
sp_specials = {
    'us-core-includeprovenance': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-includeprovenance'}
#this should be a map to the common
sp_common_list = ["address", "address-city", "address-country", "address-postalcode", "address-state", "address-use", "birthdate", "code", "context", "context-quantity", "context-type", "context-type-quantity", "context-type-value", "date", "description", "email", "encounter", "family", "gender", "given", "identifier", "jurisdiction", "medication", "name", "patient", "phone", "phonetic", "publisher", "status", "status", "telecom", "title", "type", "url", "version"]
none_list = ['', ' ', 'none', 'n/a', 'N/A', 'N', 'False']
sep_list = (',', ';', ' ', ', ', '; ')
f_now = D.FHIRDate(str(date.today()))

def markdown(text, *args, **kwargs):
    return commonmark(text, *args, **kwargs)

def main():
    if (len(sys.argv) < 2):
        print(
            "Error: missing json file - correct usage is:\n\tpython3 R4CapStatement_NarrativeMaker.py [json file]")
        return

    xls = sys.argv[1]

    in_json_file = sys.argv[1]
    
    print('....Generating CapabilityStatement Narrative.....')



    with open(in_json_file, 'r') as h:
        pjs = json.load(h)
    capStatement = CS.CapabilityStatement(pjs)
    #print(dumps(capStatement.as_json(), indent=3))    # %% [markdown]

    # CapabilityStatement loaded

    in_path = ''
    in_file = 'R4capabilitystatement-server.j2'

    env = Environment(
        loader=FileSystemLoader(searchpath=in_path),
        autoescape=select_autoescape(['html', 'xml', 'xhtml', 'j2', 'md'])
    )

    env.filters['markdown'] = markdown


    template = env.get_template(in_file)

    rendered = template.render(cs=capStatement, path_map='',
                            pname_map='', sp_map='')

    # print(HTML(rendered))
    

    parser = etree.XMLParser(remove_blank_text=True)
    root = etree.fromstring(rendered, parser=parser)

    div = (etree.tostring(root[1][0], encoding='unicode', method='html'))
    narr = N.Narrative()
    narr.status = 'generated'


    #div = re.sub('https://paciowg.github.io/advance-directives-ig/StructureDefinition-', 'SSSSSSSSSSSSSSSSS', div)
    # replace all of the supported profile urls in link text with just the profile name from inside the cononical url
    div = re.sub('">\(https?://.*/StructureDefinition-(.*)\.html\)</a>', '">\\1</a>', div)
    #div = re.sub('">\(https://paciowg.github.io/advance-directives-ig/StructureDefinition-ADI-(PersonalGoal.html)</a>', '\\1', div)
    narr.div = div

    #print(dumps(narr.div, indent=3))    # %% [markdown]
    capStatement.text = narr
    outfile = 'Narrative-' + in_json_file
    path = Path.cwd() / outfile
    path.write_text(dumps(capStatement.as_json(), indent=4))


    print('.............validating..............')
    r = validate(capStatement)
    if (r.status_code != 200):
        print("Error: Unable to validate - status code {}".format(r.status_code))
    path = Path.cwd() / 'validation.html'
    path.write_text(
        f'<h1>Validation output</h1><h3>Status Code = {r.status_code}</h3> {r.json()["text"]["div"]}')
    print(f"HTML webpage of validation saved to:\n\t {path}")

    # get from package (json) file in local .fhir directory
    # save to file
    print('...........done............')
    # path = Path.cwd() / f'capabilitystatement-{cs.id.lower()}.json'
    #path = Path.cwd() / f'capabilitystatement-{meta.title.lower()}.json'
    #path.write_text(dumps(cs.as_json(), indent=4))
    #print(f"CapabilityStatement saved to:\n\t {path}")


def get_conf(conf='MAY', as_dict=False):
    if as_dict:
        return [X.Extension(dict(
            url=conf_url,
            valueCode=conf
        )).as_json()]
    else:
        return [X.Extension(dict(
            url=conf_url,
            valueCode=conf
        ))]


def get_addin_ext(py_ext, json_ext):
    if json_ext:   # ie not ''
        addin_ext = X.Extension(loads(json_ext))
        py_ext.append(addin_ext)  # add in other extensions
    return py_ext


def validate(r):

    #fhir_test_server = 'http://test.fhir.org/r4'
    #fhir_test_server = 'http://hapi.fhir.org/baseR4'
    fhir_test_server = 'http://wildfhir4.aegis.net/fhir4-0-1'

    headers = {
        'Accept': 'application/fhir+json',
        'Content-Type': 'application/fhir+json'
    }

    # profile = 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient' # The official URL for this profile is: http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient

    params = dict(
        # profile = 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient' # The official URL for this profile is: http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
    )

    r = post(f'{fhir_test_server}/CapabilityStatement/$validate',
             params=params, headers=headers, data=dumps(r.as_json()))
    return r


def get_sys_op(xls):
    op_list = []
    df_op = read_excel(xls, 'ops', na_filter=False)
    for i in df_op.itertuples(index=True):
        if i.type == 'system':
            op = CS.CapabilityStatementRestResourceOperation()
            op.name = i.name
            op.definition = i.definition
            op.extension = get_conf(i.conf)
            op_list.append(op.as_json())
    return op_list


def get_rest_ints(xls):
    ri_list = []
    df_ri = read_excel(xls, 'rest_interactions', na_filter=False)
    for i in df_ri.itertuples(index=True):
        ri = CS.CapabilityStatementRestInteraction()
        ri.code = i.code
        ri.documentation = i.doc if i.doc not in none_list else None
        ri.extension = get_conf(i.conf)
        ri_list.append(ri.as_json())
    return ri_list


def get_igs(xls):
    ig_list = []
    df_igs = read_excel(xls, 'igs', na_filter=False)
    for ig in df_igs.itertuples(index=True):
        ig_list.append(ig.uri)
    return ig_list  # TODO add conformance to this


def kebab_to_pascal(word):
    return ''.join(x.capitalize() for x in word.split('-'))


def create_capabilitystatement(meta, canon, publisher, publisher_endpoint, xls):
    cs = CS.CapabilityStatement()
#    cs.id = meta.id
    cs.id = meta.title.lower()
    cs.url = f'{canon}CapabilityStatement/{meta.title.lower()}'
    cs.version = meta.version
    cs.name = f'{kebab_to_pascal(meta.id)}{cs.resource_type}'
#    cs.title = f'{titlecase(meta.id).replace("Us ", "US ")} {cs.resource_type}'
    cs.title = f'{meta.title} {cs.resource_type}'
    cs.status = 'active'

    cs.experimental = False
    cs.date = f_now  # as FHIRDate
    cs.publisher = publisher
    cs.contact = [CD.ContactDetail({"telecom": [publisher_endpoint]})]
    cs.description = meta.description
    cs.jurisdiction = [f_jurisdiction]
    cs.kind = 'requirements'
    cs.fhirVersion = meta.fhirVersion
    cs.acceptUnknown = 'both'
    cs.format = [
        "xml",
        "json"
    ]
    cs.patchFormat = [
        "application/json-patch+json",
    ]
    cs.implementationGuide = meta.ig.split(",") + get_igs(xls)

    return cs


def get_i(type, df_i):
    int_list = []
    for i in df_i.itertuples(index=True):
        if getattr(i, f'conf_{type}') not in none_list:
            int = CS.CapabilityStatementRestResourceInteraction()
            int.code = i.code
            try:
                int.documentation = getattr(i, f'doc_{type}') if getattr(
                    i, f'doc_{type}') not in none_list else None
            except AttributeError:
                pass
            int.extension = get_conf(getattr(i, f'conf_{type}'))
            int_list.append(int.as_json())

    return int_list


def get_sp(r_type, df_sp, pre, canon):
    sp_list = []
    for i in df_sp.itertuples(index=True):
        if i.base == r_type:
            sp = CS.CapabilityStatementRestResourceSearchParam()
            sp.name = i.code

            # TODO need to fix this to reference the package file to reconcile definition to names
            #if i.code in sp_specials:  # special case temp fix for us-core
            #    sp.definition = sp_specials[i.code]
            #el
            if i.update == 'Y' or i.exists == 'N':
              #  sp.definition = f'{canon}SearchParameter/{pre.lower()}-{i.base.lower()}-{i.code.split("_")[-1]}'
                 sp.definition = f'{canon}SearchParameter/{i.base.lower()}-{i.code.split("_")[-1]}'
            else:  # use base definition
                # Check to see if URL is relative or absolute.
                if(validators.url(i.sp_url)):
                    sp.definition = f'{i.sp_url}'
                elif (len(i.base_id) > 0): #base id provided
                    sp.definition = f'{fhir_base_url}SearchParameter/{i.base_id}'
                else: #otherwise attempt to create the base canonical url - Should use a mapping to determine proper name
                    if (i.code == "_text"): # if a Resource or DomainResource search parameter
                        sp.definition = f'{fhir_base_url}SearchParameter/DomainResource-{i.code.split("_")[-1]}'
                    elif (i.code[0] == '_'): # if a Resource or DomainResource search parameter
                        sp.definition = f'{fhir_base_url}SearchParameter/Resource-{i.code.split("_")[-1]}'
                    elif (i.code in sp_common_list): # A common Parameter
                        sp.definition = f'{fhir_base_url}SearchParameter/{i.code}'
                    else:
                        # removes the '_' for things like _id
                        #sp.definition = f'{fhir_base_url}SearchParameter/{i.base.lower()}-{i.code.split("_")[-1]}'
                        #sp.definition = f'{fhir_base_url}SearchParameter/Resource-{i.code.split("_")[-1]}'
                        sp.definition = f'{fhir_base_url}SearchParameter/{i.base}-{i.code.split("_")[-1]}'

            sp.type = i.type
            sp.extension = get_conf(i.base_conf)
            sp_list.append(sp.as_json())

    return sp_list


def get_combo_ext(r_type, combos):
    x_list = []
    for combo in combos:
        # convert to extension
        combo_ext = X.Extension()
        combo_ext.url = combo_url
        combo_conf_ext = get_conf(combo[1])
        combo_ext.extension = combo_conf_ext
        for param in combo[0].split(','):
            req_combo = X.Extension(
                dict(
                    url='required',
                    valueString=param  # http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-family
                )
            )
            combo_ext.extension.append(req_combo)
        x_list.append(combo_ext)
    return x_list


def get_op(r_type, df_op):
    op_list = []
    for i in df_op.itertuples(index=True):
        if i.type == r_type:
            op = CS.CapabilityStatementRestResourceOperation()
            op.name = i.name
            op.definition = i.definition
            op.documentation = i.documentation if i.documentation not in none_list else None
            op.extension = get_conf(i.conf)
            try:
                op.extension = get_addin_ext(op.extension, i.ext)
            except AttributeError:
                print("---- no addin extensions found-----")
            op_list.append(op.as_json())

    return op_list


def markdown(text, *args, **kwargs):
    return commonmark(text, *args, **kwargs)

def get_si(path):
    with tarfile.open(f'{path}/package.tgz', mode='r') as tf:
        #pprint(tf.getnames())
        f = tf.extractfile('other/spec.internals')
        r = f.read()
        return(loads(r))

def get_si2(path):
    # Get the full path in case a relative path is provided.
    fullpath = os.path.abspath(path)

    with open(f'{path}', 'r', encoding='utf-8-sig') as f:
        r = f.read()
        # encoding for loads was deprecated in 3.9  https://bugs.python.org/issue39377
        if sys.version_info >= (3, 9):
            return(loads(r))
        else:
            return(loads(r, encoding = 'utf-8'))


main()