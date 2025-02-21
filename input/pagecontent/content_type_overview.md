
This section provides additional guidance on the relationship between the associated profiles and the structure of the interoperable advance healthcare directive documents defined in this IG.


<a name="content_types">

### ADI Content Types

There is a very important distinction for the three types of ADI content that will be covered in this IG. Below is a description of each type of content that will be covered by the ADI FHIR IG with versions.

<p>&nbsp;</p>
<table>
    <tr>
        <th width="50">&nbsp;</th>
        <th colspan="2" style="background-color:#DEEBF7; border: 1px solid black; vertical-align: middle; padding: 5px"><p style="font-size: 14px;"><b>Type 1: Person-Authored Advance Directive Documents</b></p></th>
    </tr>
    <tr><td width="50">&nbsp;</td>
        <td width="25">&nbsp;</td>
        <td>
            <ul>
                <li>Person-authored documents</li>
                <li>Used as a tool for establishing a healthcare agent and sharing an individual’s medical treatment and intervention goals, preferences, and priorities (GPP)</li>
                <li>Provides guidance that a person would want known to inform treatment and care planning during a potential future medical emergency, in the case where the patient is unable to communicate with caregivers and medical personnel and the appointed healthcare agent needs to make decisions on the patient's behalf.</li>
                <li>There is NO “contract” between the author (patient) and any other party involved in the future medical emergency that the GPP is required to be followed (i.e., no offer or acceptance, no consideration, no consequences for failure to follow the patient’s directives)</li>
                <li>A Mental Health Advance Directive is a special type of patient-authored document focused on treatment and care experience preferences relevant to behavioral health conditions. This type of document may appoint a behavioral healthcare agent whose powers are constrained to addresses mental health related care decisions during times when the patient is not able to make decisions.</li>
                <li>In some cases, a practitioner may assist a person with creating their advance directive or mental health advance directive document. The pracitioner functions as a facilitator, assisting the patient to document their preferences accurately and completely. The facilitator is not an author of the document. The document reflects the thoughts and words of the patient. The facilitator is recorded in the document as someone who has performed advance care planning services to support the patient’s creation of their own document.</li>  
            </ul>
        </td>
    </tr>
    <tr height="15"><td colspan="3">&nbsp;</td></tr>
    <tr>
        <th width="50">&nbsp;</th>
        <th colspan="2" style="background-color:#9DC3E6; border: 1px solid black; vertical-align: middle;  padding: 5px"><p style="font-size: 14px;"><b>Type 2: Encounter-Centric Instructions</b></p></th>
    </tr>
    <tr><td width="50">&nbsp;</td>
        <td width="25">&nbsp;</td>
        <td>
            <ul>
                <li>Clinician or Practitioner-authored</li>
                <li>Instructions are related to the current, immediate episode of care</li>
                <li>The patient, or their healthcare agent, provides direct input in the creation of the instructions which specify decisions that have been made about treatments that may, or may not be, utilized during a medical emergency occurring within the current episode of care.</li>
            </ul>
        </td>
    </tr>
    <tr height="15"><td colspan="3">&nbsp;</td></tr>
    <tr>
        <th width="50">&nbsp;</th>
        <th colspan="2" style="background-color:#478FD1; border: 1px solid black; vertical-align: middle;  padding: 5px"><p style="font-size: 14px;"><b>Type 3: Practitioner-Authored Portable Medical Orders for Life-Sustaining Treatments</b></p></th>
    </tr>
    <tr><td width="50">&nbsp;</td>
        <td width="25">&nbsp;</td>
        <td>
            <ul>
                <li>Practitioner-authored documents</li>
                <li>A set of medical orders intended to follow a patient and be available across the continuum of care</li>
                <li>The patient, or their healthcare agent, provides direct input in the creation of the orders but the documents are authored by a licensed practitioner.</li>
                <li>These orders are used to document a provider’s orders for, or preferences against, treatments that are to be utilized during a future medical emergency that would necessitate life-sustaining treatment and interventions, and are based on the patient’s expressed goals, preferences, and priorities for such care.</li>
                <li>In some cases, a provider who author’s (and signs) the portable medical order document may be supported by a different pracitioner functions as a facilitator, discussing options and decisions the patient may want to make.  The facilitator is not an author of this type of document. The document reflects the orders issued by the authoring provider. A facilitator is recorded in the document as someone who has performed advance care planning services to support the authoring provider.</li> 
            </ul>
        </td>
    </tr>
</table>

<p align="center">
    <img src="./ADI_types_overview.png" alt="ADI Types Overview" style="width: 80%; float: none; vertical-align: middle;"/>
</p>

<br clear="all" />

The current version, STU2, of this ADI with FHIR IG covers the use of RESTful API interactions for creation, sharing, query/access, and verification of advance directive information between systems.  This IG is not intended to cover medical intervention goals, preferences, priorities for individuals who are not able to create and document their own advance healthcare decisions.


<blockquote class="stu-note">
    <p>
    STU2 supports only Person-authored Advance Directives (ADI Content Type 1) and Portable Medical Order (ADI Content Type 3) documents. Future versions of this FHIR IG will address encounter-centric patient instructions, Content Type 2.
    </p>
</blockquote>

### Structure and Resource Relationships

Advance healthcare decision documents may take several forms, including scanned PDF documents, CDA documents, other binary documents, as well as native FHIR documents (using the `Composition` and other ADI-specific profiled FHIR resources). This guide defines the interoperable guidance necessary to support creation, update, query, and access to all of these types and other potential ADI document types (through encoding in a `Binary` resource). Today, most of these documents are shared through scanned images housed in EMRs, EHRs and other systems.

This implementation guide is designed to guide a range of digitization levels, ranging from scanned documents to fully discrete FHIR documents. These different types of ADI data can be more digitized than others within same document by its representation as a FHIR `Composition` resource. This is described in more detail in the [ADI FHIR Document Structure](content_type_overview.html#adi-fhir-document-structure) section.

The diagram below further illustrates how these documents are organized. The FHIR `DocumentReference` resource is used for "indexing" of documents, similar to the way a library uses a card catalog to index books based on different search criteria, for example, by title, author, date, or classification code.  The DocumentReference can be used in the same way for searching and finding documents with specific attributes such as type of document, subject (e.g., patient), author, dates.  These attributes are provided in the metadata of the DocumentReference so that the actual documents do not have to be accessed for most common searches.  A complete list of search capabilities on DocumentReference can be found in the [Search Parameters](search_parameters.html#adi-documentreference-documentreference) section.

<p align="center">
    <object data="ADI_profile_resource_relationships2.svg" type="image/svg+xml" width="70%"></object>
</p>

Digital signatures are defined as optional in this guide, for a myriad of factors including maturity of systems that can create and exchange digital ADI. If supported by a Content Creator system, the digital signature will be a captured in a `Binary` resource that is referenced by an additional `DocumentReference` resource.

<blockquote class="stu-note">
    <p>
    There is movement within the FHIR community to move towards using the Provenance resource as a standard way to apply a digital signature to a document in FHIR.  The signature within the Provenance resource would be used to encrypt the binary (the actual document itself), not the DocumentReference.  A future version of the implementation guide will be updated to follow the standard FHIR guidance on signatures when it is finalized.
    </p>
</blockquote>

### ADI FHIR Document Structure

ADI native documents using FHIR are instances of the `Bundle` resource with the `type` = `document`. The document should have all content contained within the Bundle with no external references except for the references to external documents in the [DocumentationObservation](StructureDefinition-ADI-DocumentationObservation.html) through the `focus` data element. FHIR `Bundle` documents consist of multiple entry resources within it, with the first entry being a `Composition` resource. The `Composition` resource acts as the header and organizational construct. It contains information about the document such as the category of document, dates, and references to the various participants of the document, as well as document sections used to categorize or organize the contained entries. 

This structure at the highest level is common to all ADI content types. Additional FHIR representation requirements will depend on:
* the form of advance directive document
* the ADI content type

Reference the IG section, [Advance Directive Structure Requirements](formal_specification.html#advance-directive-document-structure-requirements), for further guidance.


<!-- 
#### ADI Content Type 2 Document Structure

<blockquote class="stu-note">
    <p>
    Content Type 2 is out of scope for the PACIO ADI STU2 publication. A brief description is provided for completeness.
    </p>
</blockquote>

Content Type 2, Episode-Centric Patient Instructions, are used when a person is about to undergo a medical procedure during which there is the potential need to deploy life-sustaining treatments. This type of ADI information can also be used when a person is about to have an inpatient stay, or a stay at a nursing or rehab care facility, where the care delivery team asks the individual to make decisions about medical treatments they do or do not want, should circumstances arise when these decisions need to be made and the individual’s choices would need to be taken into consideration. A person may make these decisions for his or her self, and is sometimes the case if the person cannot make these decisions, the healthcare agent may decide. These medical treatment decisions are made in the present and ONLY apply to the current episode of care. They are instructions provided by the person or their surrogate decision-maker. These instructions are closely related to advance directives, in that they say, if x happens, then do y. Or, if x happens, do not do y. For this reason, these kinds of instructions and prohibitions are often recorded with a person’s advance directives. However, they are not advance directives because they represent treatment instructions that ONLY apply to the current episode of care. These instructions are considered obligation or prohibition instructions, provided by the person or their surrogate decision-maker, and authored by a practitioner.
 -->

#### Clause Extension
Advance directive documents often contain additional information, or clauses, related to specific areas of the document. This may include things like additional observations about which named healthcare agent is to be primary versus back-up, or a healthcare agent has been selected, or a statement by the author of the document that is felt to be important to the overall contents, and other information that provides context to the data otherwise expressed in the sections or entries of an ADI document. To support this information this guide has defined a [Clause extension](StructureDefinition-adi-clause-extension.html) to all of the Composition sections and various profiles and elements.


