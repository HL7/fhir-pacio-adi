
This section defines additional requirements and guidance relevant to this guide as a whole. The conformance verbs - **SHALL**, **SHOULD**, **MAY** - used in this guide are defined in [FHIR Conformance Rules](http://hl7.org/fhir/R4/conformance-rules.html).


### System Role Definitions

**Data Sources** are defined as systems that originate advance directive related documents & resources. These systems may be personal health records, clinical records, or even consumer-facing platforms.

**Data Consumers** are defined as systems retrieving or receiving advance directive information for direct use or integration into their application platform (as opposed to acting as a server or intermediary).

**Servers** are defined as systems that make advance directive information available through query or retrieval.

### Claiming Conformance to an ADI Profile
#### To claim conformance to a profile in this guide;

**_Data Sources:_**

**SHALL** support creating resources that conform to resource and profile requirements included in the [ADI Capability Statement](CapabilityStatement-adi.html) capability expectations (capabilitystatement-expectation extension with valueCode = SHALL).

**SHALL** populate all profile data elements that have a minimum cardinality >= 1 and meet all other basic FHIR conformance requirements (e.g. terminology binding requirements)

**MAY** assert missing information by using an appropriate value set code where allowed or by using a (dataAbsentReason extension)http://hl7.org/fhir/r4/extension-data-absent-reason.html for elements that are not marked as required (cardinality 0..*)

**SHOULD** send all elements defined in the profiles if captured in the system in a way that can be shared and do so as codified and as structured as possible (in addition to meeting the [CodeableConcept](#must-support-of-codeableconcept-text-elements) and [resource](#must-support-of-resource-text-elements) human readable text requirements). 

**SHALL** meet the requirements identified in the definition of Must Support elements.


**_Data Consumers:_**

**SHALL** meet the requirements identified in the definition of Must Support elements.


**_Servers:_**

**SHALL** include a CapabilityStatement that has a CapabilityStatement.instantiates value with the canonical URL of the [ADI Capability Statement](CapabilityStatement-adi.html).

**SHALL** meet the [ADI Capability Statement](CapabilityStatement-adi.html) capability expectations.

**SHALL** reliably provide the information completely in the form in which it was received.  

### Must Support

Profiles used by or inherited by this guide that are defined in other implementation guides, inherit the definition of `Must Support` from their respective guides for elements which they define as Must Support.

#### Data Source System Requirements

Data Sources **SHALL** be capable of populating the data element for profiles the system is claiming conformance to. In other words, the system must be able to demonstrate the population and communication of the element if the profile is supported by that system, but it is acceptable to omit the element if the system doesn't have values in a particular instance. A system that is incapable of ever sharing the element for a required profile, as defined in the [ADI Capability Statement](CapabilityStatement-adi.html) is considered to be non-conformant to this implementation guide.
For example: If a system only purports to support scanned documents, the system will have to support the Must Support elements for the DocumentReference and other supportive profiles, but would not need to support a FHIR document, which includes the Composition resource, or any related Must Support elements. 

 

The DataAbsentReason extension **MAY** be used on Must Support elements that are not available, but **SHALL NOT** use them in place of meeting the Must Support requirement (Meaning that the system must be capable of producing the profiled resource with the element.)

 

#### Data Consumer System Requirements

Data Consumers **SHALL** be capable of rendering the narrative resource level text and Composition.section.text elements marked as Must Support.   

Data Consumers **SHALL** be capable of processing resource instances containing conformant Must Support data element without generating an error or causing the application to fail.

Data Consumers **SHALL** interpret missing Must Support data elements within resource instances as not being present or not deemed to be shareable with the Data Consumer for privacy or other business reasons.

Data Consumers **SHALL** be able to process resource instances containing data elements asserting missing information. Data Consumers are not required to process assertions of missing data. Assertion of missing information may be expressed using an appropriate value set code where allowed or using a [dataAbsentReason extension](http://hl7.org/fhir/r4/extension-data-absent-reason.html) for elements that are not marked as required (cardinality 1..X).

 

#### Notable differences from US Core Conformance and Must Support Requirements

Data Consumers must be capable of displaying resource level text elements marked as Must Support.

Servers must be able to reliably provide the information completely in the form in which it was received.

**NOTE:** Elements marked as Must Support are relevant for **the resources/profiles that a system purports to support**. Systems are allowed to include additional data - and receivers (servers and consumers) **SHOULD NOT** reject instances that contain unexpected data elements if those elements are not modifier elements. However, data sources **SHALL NOT** expect data consumers to store, process, or display the data.

### Must Support of CodeableConcept Text Elements

The area of advance directive interoperability is relatively new and codes capturing the concepts related to advance directives are not well established or well known. This implementation guide provides several codes for expressing this information but specifies extensible bindings to use other code systems where necessary. These code systems may also not be well-known. 
Additionally, there are not widely accepted universal or national for standards for capturing this information. Different scopes of use and jurisdictions capture and organize this information in different ways. As such, it is important for data sources to capture this information as it is presented and for data consumer systems to be able to present it the same way to users. 

To that end, several `CodeableConcept` `text` data elements are marked as Must Support. 

Per the FHIR Standard for [Using Text in CodeableConcept](https://www.hl7.org/fhir/datatypes.html#CodeableConcept): 
> The `text` is the representation of the concept as entered or chosen by the user, and which most closely represents the intended meaning of the user or concept. Very often the `text` is the same as a `display` of one of the codings. One or more of the codings may be flagged as the user selected code - the code or concept that the user selected directly.

In some cases a code may not exist for a particular concept, in such cases, it is possible to provide a free text only representation of the concept in the `CodeableConcept` `text` element without any 'coding' elements present.

For example, using text only, the `Goal.category` element would be:

    "valueCodeableConcept": {
        "text": "Free text concept description"
    }

### Must Support of Resource Text Elements

Because advance directive interoperability is relatively new and there are not any widely accepted universal or national for standards for capturing this information, advance directives may be represented in many different ways. It is important that this information be communicated as it is meant and that it is received and viewable in that same manner. 

To address this need, most of the profiles in this implementation guide require the resource instance's `text` element (cardinality `1..1`).

The `text` element of a resource is a [Narrative](http://hl7.org/fhir/R4/narrative.html#Narrative) data type. The `status` element of this data type indicates whether the text is generated by a system based on the structured data in the resource or if it contains additional information. The `status` element is required. 

For the purposes of this implementation guide, it is expected that most implementations will have resource instances that have additional data in the `text` than is captured in the structured data. When that is the case, the narrative `text.status` **SHALL** be `additional`.

### CapabilityStatement Server Requirement

Servers claiming conformance to this guide **SHALL** include a CapabilityStatement that has a CapabilityStatement.instantiates with a URL of http://hl7.org/fhir/us/fhir-pacio-adi/CapabilityStatement/adi or a URL to the appropriate version of the CapabilityStatement.

### Document Bundles and Constituent Resources

<!--[TODO]--> 
This guide requires the interoperability of Advance Directive Information through the use of wholly contained documents as part of its use case. While it is required that this data be made interoperable as a collection of Advance Directive Information in document Bundles, systems may decide to make use of the constituent resources as separate resources for additional uses and purposes, such as use in support of Clinical Decision Support. 

### Advance Directive Document Structure Requirements

Advance directive documents may take several forms including scanned PDF documents, CDA documents and native FHIR documents. This guide defines interoperability to support any number of types.

All documents, regardless of format are saved in the `Binary` resource and are available through the `Binary` endpoint. Further guidance on representing each document attachment type is provided below.

#### Advance Directive Scanned PDF Structure Requirements

Scanned PDF documents are represented as a base64 encoded attachment with `DocumentReference.content.attachment.contentType` set to "application/pdf".

An example of this representation is shown in the resource snippet below:

```
"content": [{
    "attachment": {
        "contentType": "application/pdf",
        "data" : "JVBERi0xLjcKJeLjz9MKNSAwIG9i....etc"
    }
}]
```

#### Advance Directive CDA Document Structure Requirements

CDA attachments **SHALL** align with the [HL7 CDA® R2 Implementation Guide: Personal Advance Care Plan (Personal ACP) Document, Release 1 STU3 - US Realm](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=434) specification:

* Set the FHIR `DocumentReference.content.attachment.format.system` element to "http://terminology.hl7.org/CodeSystem/v3-HL7DocumentFormatCodes" 
* Set the FHIR `DocumentReference.content.attachment.format.code` element to one of two options depending on the CDA format:

| Format              | DocumentReference.content.format.code               |
| ------------------- | --------------------------------------------------- |
| Structured Body     | urn:hl7-org:sdwg:Personal ACP-structuredBody:1.3.1          |
| Non-structured Body | urn:hl7-org:sdwg:Personal ACP-nonXMLBody:1.3.1              |
{: .grid }

An example of this representation is shown in the resource snippet below:

```
"content": [{
    "attachment": {
        "contentType": "application/cda+xml",
        "url": "Binary/03fdcd6b-4e0f-406e-86ac-6b56bf9ce575"
    },
    "format": {
        "system": "http://terminology.hl7.org/CodeSystem/v3-HL7DocumentFormatCodes",
        "code": "urn:hl7-org:sdwg:Personal ACP-structuredBody:1.3.1",
        "display": "Personal ACP C-CDA"
    }
}]
```

#### Advance Directive Native FHIR Document Structure Requirements

FHIR native documents **SHALL** be Bundle resources with `type` = `document` and encoded as a `Binary` resource. Documents that are communicated **SHALL** have at least one DocumentReference resource that references the Binary through the `DocumentReference.content.attachment.url` element.

FHIR native documents **SHOULD** have all content contained within the Bundle with no external references except for the references to external documents in the [DocumentationObservation](StructureDefinition-ADI-DocumentationObservation.html).focus. FHIR native documents have internal references between resources (e.g. the Composition resource referencing entry resources). These references **SHALL** be resolved using the `Bundle.entry.fullUrl`. This URL may be a proper URL, but there **SHOULD** be no expectation that the URL resolves outside of the confines of the Bundle. To avoid confusion, it may be desirable to use UUID (e.g. urn:uuid:53fefa32-fcbb-4ff8-8a92-55ee120877b7) instead of URLs for the fullUrl. 


### Document Digital Signatures
#### Background
Digital signatures provide trusted signatures, non-repudiation, and they make the signed document tamper-proof. Digital signatures include several capabilities that distinguish them from basic electronic signatures. In much the same way as other document exchange, the use of digital signatures for advance directive document interoperability will depend on the specific scenario, parties involved, and jurisdictional or organizational requirements. There are challenges and costs to using digital signatures that may present an unnecessary barrier to some applications of this implementation guide. Therefore this guide does not require the use of digital signatures, but instead recommend that systems **SHOULD** support digital signatures where possible.

There are a number of options available for signing documents in FHIR. For context, below is a description of a number that were considered for this guide.

The first option is an embedded signature where a FHIR document bundle is digitally signed.  In this method, the digital signature is saved in Bundle.signature. The result is the content and document bundle are included in a single DocumentReference Resource. This approach works for JSON and xml bundles. 

The second option is a detached signature, in which the Binary Resource is digitally signed and saved as a new DocumentReference.  This option results in two DocumentReferences where one DocumentReference has the content and the other contains the digital signature. The DocumentReference with the signature uses DocumentReference.relatesTo.code were the code is signs and DocumentReference.relatesTo.target points to the DocumentReference that contains the content.  The detached signature option supports FHIR Document Bundle, CDA, pdf, and mp3 content. 

The final option uses an enveloped signature. In this option, the content is wrapped in a FHIR Bundle in a JSON object and then encoded to binary. The binary is then signed using JSON Web Signature.  The enveloped signature described only allows for signing of JSON files.

<blockquote class="stu-note">
    <p>
    There is movement within the FHIR community to move towards using the Provenance resource as a standard way to apply a digital signature to a document in FHIR.  The signature within the Provenance resource would be used to encrypt the binary (the actual document itself), not the DocumentReference.  A future version of the implementation guide will be updated to follow the standard FHIR guidance on signatures when it is finalized.
    </p>
</blockquote>

#### Digital Signatures for Advance Directive Interoperability
If digital signatures are supported, the method of signatures this guide specifies is the detached signature. The detached signature approach provides the greatest flexibility of document type support (does not have to be a JSON or even a FHIR encoded document) and enables the ability for clients that do not support or require digital signatures to retrieve and use the data unhampered. The detached signature approach is also aligned with the design and workflows of major US health information networks. 
Systems claiming conformance to this guide that support digital signatures **SHALL** support the detached signature stored in a separate Binary resource and referenced by a DocumentReference resource as described below.

For the detached signature, the digital signature is saved in a Binary resource and pointed to from an additional DocumentReference resource in the `DocumentReference.content.attachment.url`.  This signature DocumentReference links to the advance directive document DocumentReference using `DocumentReference.relatesTo.target` and the code `signs` is used in the `DocumentReference.relatesTo.code` field to identify how this DocumentReference resource relates to the target. 

The cryptographic digital signature is included in the DocumentReference.content as an attachment. The mimeType for the digital signature is Content.attachment.contentType.application/jws for JSON signature and Content.attachment.contentType.xml-signature” for xml signature.  The details of the cryptographic digital signature **SHALL** be a referenced Binary Resource using `url`. 
Below is an example of detached digital signature with the cryptographic digital signature referenced using Binary Resource. 

<p align="center">
    <img src="./digital_signature_reference_example.png" alt="Digital Signature Reference Example" style="float: none; align: middle;"/>
</p>

For further information on signatures, the technology basis behind them, and implementation requirements, please see the section on [Signatures](signatures.html).


### Replacing Documents
At some point it may be necessary for an advance directive document to be replaced or deprecated. The situations and conditions in which a document is replaced or deprecated is dependent on jurisdictional requirements as well as the intent and interests of the actors involved. When a document is replaced or deprecated is beyond the scope of this guide, however, this guide does specify requirements that need to be supported in the event documents need to be replaced or deprecated.

#### Document replacement
When a document is to be replaced, a new DocumentReference is created. The new document points "backwards" to the documentReference it is replacing through the `DocumentReference.relatesTo.target` and a `DocumentReference.relatesTo.code` with a value of `replaces`. The original document then should be marked as replaced by updating the `DocumentReference.status` to the code `superseded`. Ideally the DocumentReference being replaced and the replacing DocumentReference will have matching business identifiers (`DocumentReference.identifier`) to enable direct searching across multiple versions.

Documents can be deprecated through a document replacement that includes a new version indicating that the document is deprecated or otherwise no longer in force.