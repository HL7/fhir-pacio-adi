
This section provides additional guidance on the relationship between the associated profiles and the structure of the interoperable advance healthcare directive documents defined in this IG.


<a name="content_types">

### Advance Healthcare Directive Document Types

There is a very important distinction for the three types of ADI content that will be covered in this IG. Below is a description of each type of content that will be covered by the ADI FHIR IG with versions.

<p>&nbsp;</p>
<table>
    <tr>
        <th width="50">&nbsp;</th>
        <th colspan="2" style="background-color:#DEEBF7; border: 1px solid black; vertical-align: middle; padding: 5px"><p style="font-size: 14px;"><b>Person-Authored Advance Healthcare Directive Documents</b></p></th>
    </tr>
    <tr><td width="50">&nbsp;</td>
        <td width="25">&nbsp;</td>
        <td>
            <ul>
                <li>Used as a tool for establishing a healthcare agent (delegation of rights consenting to appoint an authorized personal representative in the role of healthcare agent) and sharing an individual’s medical treatment  intervention and care experience preferences, and care goals and priorities (GPP).</li>
                <li>Provides guidance that a person would want others to know to inform treatment and care planning during a potential future medical emergency, in the case where the patient is unable to communicate with caregivers and medical personnel and the appointed healthcare agent needs to make decisions on the patient's behalf.</li>
                <li>There is NO “contract” between the author (patient) and any other party involved in the future medical emergency that the GPP is required to be followed (i.e., no offer or acceptance, no consideration, no consequences for failure to follow the patient’s directives)</li>
                <li>A Mental Health Advance Directive is a special type of Person-Authored document focused on treatment and care experience preferences relevant to behavioral health conditions. This type of document may appoint a behavioral healthcare agent whose powers are constrained to addresses mental health related care decisions during times when the patient is not able to make decisions.</li>
                <li>In some cases, a practitioner may assist a person with creating their advance directive or mental health advance directive document. The practitioner functions as a facilitator, assisting the patient to document their preferences accurately and completely. The facilitator is not an author of the document. The document reflects the thoughts and words of the patient. The facilitator is recorded in the document as someone who has performed advance care planning services to support the patient’s creation of their own document.</li>  
            </ul>
        </td>
    </tr>
    <tr height="15"><td colspan="3">&nbsp;</td></tr>
    <tr>
        <th width="50">&nbsp;</th>
        <th colspan="2" style="background-color:#9DC3E6; border: 1px solid black; vertical-align: middle;  padding: 5px"><p style="font-size: 14px;"><b>Encounter-Centric Instructions</b></p></th>
    </tr>
    <tr><td width="50">&nbsp;</td>
        <td width="25">&nbsp;</td>
        <td>
            <ul>
                <li>Clinician or Practitioner-authored</li>
                <li>Directives are related to the current, immediate episode of care</li>
                <li>The patient, or their healthcare agent, provides direct input in the creation of the instructions which specify decisions that have been made about treatments that may, or may not be, utilized during a medical emergency occurring within the current episode of care.</li>
            </ul>
        </td>
    </tr>
    <tr height="15"><td colspan="3">&nbsp;</td></tr>
    <tr>
        <th width="50">&nbsp;</th>
        <th colspan="2" style="background-color:#478FD1; border: 1px solid black; vertical-align: middle;  padding: 5px"><p style="font-size: 14px;"><b>Provider-Authored Portable Medical Orders for Life-Sustaining Treatments</b></p></th>
    </tr>
    <tr><td width="50">&nbsp;</td>
        <td width="25">&nbsp;</td>
        <td>
            <ul>
                <li>Practitioner-authored documents</li>
                <li>A set of medical orders intended to follow a patient and be available across the continuum of care</li>
                <li>The patient, or their healthcare agent, provides direct input in the creation of the orders but the documents are authored by a licensed practitioner.</li>
                <li>These orders are used to document a provider’s orders for, or preferences against, treatments that are to be utilized during a future medical emergency that would necessitate life-sustaining treatment and interventions, and are based on the patient’s expressed goals, preferences, and priorities for such care.</li>
                <li>In some cases, a provider who authors (and signs) the portable medical order document may be supported by a different practitioner functioning as a facilitator, discussing options and decisions the patient may want to make.  The facilitator is not an author of this type of document. The document reflects the orders issued by the authoring provider. A facilitator is recorded in the document as someone who has performed advance care planning services to support the authoring provider.</li> 
            </ul>
        </td>
    </tr>
</table>

<p align="center">
    <img src="./ADI_types_overview.svg" alt="ADI Types Overview" style="width: 80%; float: none; vertical-align: middle;"/>
</p>

<br clear="all" />

The current version, STU2, of this ADI with FHIR IG covers the use of RESTful API interactions for creation, sharing, query/access, and verification of advance directive information between systems.  This IG is not intended to cover medical intervention goals, preferences, priorities for individuals who are not able to create and document their own advance healthcare decisions.


<blockquote class="stu-note">
    <p>
    STU2 supports only Person-Authored Advance Directives and PMO documents. Future versions of this FHIR IG will address Encounter-centric Instructions.
    </p>
</blockquote>

### Structure and Resource Relationships

Advance healthcare decision documents may take several forms, including scanned PDF documents, CDA documents, other binary documents, as well as native FHIR documents (using the `Composition` and other ADI-specific profiled FHIR resources). This guide defines the interoperable guidance necessary to support creation, update, query, and access to all of these types and other potential ADI document types (through encoding in a `Binary` resource). Today, most of these documents are shared through scanned images housed in EMRs, EHRs and other systems.

This implementation guide is designed to guide a range of digitization levels, ranging from scanned documents to fully discrete FHIR documents. Some types of advance healthcare directive documents can be more digitized than others. For example, PMOs need to have more structured data than person-authored advance healthcare directives which contain more free-text care preferences.This is described in more detail in the [ADI FHIR Document Structure](content_type_overview.html#adi-fhir-document-structure) section.

The diagram below further illustrates how these documents are organized. The FHIR `DocumentReference` resource is used for "indexing" of documents, similar to the way a library uses a card catalog to index books based on different search criteria, for example, by title, author, date, or classification code.  The DocumentReference can be used in the same way for searching and finding documents with specific attributes such as type of document, subject (e.g., patient), author, dates.  These attributes are provided in the metadata of the DocumentReference so that the actual documents do not have to be accessed for most common searches.  A complete list of search capabilities on DocumentReference can be found in the [Search Parameters](search_parameters.html#adi-documentreference-documentreference) section.

<p align="center">
    <object data="ADI_profile_resource_relationships3.svg" type="image/svg+xml" width="70%"></object>
</p>

Digital signatures are defined as optional in this guide, for a myriad of factors including maturity of systems that can create and exchange digital ADI. If supported by a Content Creator or Document Registry Server system, the digital signature “authenticity information” will be captured in a Binary resource that is referenced by an additional DocumentReference resource where the relatesTo relationship of the “signature page” to the source document is “signs”.

There is movement within the FHIR community to begin using the Provenance resource as a standard way to capture the digital signature of a document. The signature within the Provenance resource would be used hold the digital signature authenticity information associated with a document, not an additional DocumentReference. As the DocumentReference resource begins to be used for many different types of documents, it may be more effective to keep signature pages in the Provenance Resource. A future version of the implementation guide will be updated to follow the standard FHIR guidance on signatures when it is finalized.

<blockquote class="stu-note">
    <p>
    There is movement within the FHIR community to move towards using the Provenance resource as a standard way to apply a digital signature to a document in FHIR.  The signature within the Provenance resource would be used to encrypt the binary (the actual document itself), not the DocumentReference.  A future version of the implementation guide will be updated to follow the standard FHIR guidance on signatures when it is finalized.
    </p>
</blockquote>

### ADI FHIR Document Structure

ADI native documents using FHIR are instances of the `Bundle` resource with the `type` = `document`. The document should have all content contained within the Bundle with no external references except for the references to external documents in the [DocumentationObservation](StructureDefinition-ADI-DocumentationObservation.html) through the `focus` data element. 

FHIR `Bundle` documents consist of multiple entry resources within it. The first entry *SHALL* be a `Composition` resource. The `Composition` resource acts as the header and organizational construct. It contains information about the document such as the category and type of document, dates, and references to the various participants of the document, as well as document sections used to categorize or organize the contained entries. 

#### Utilizing Minimally Structured Documents

The ADI document types follow an approach which initially supports the minimal amount of required structured data. Under this approach, the native Source Form of the document is always included in the initial section of the Composition.  The Source Form section is identified using the same type code as the document itself (in section.code). The Source Form Section includes the Binary represenation (The Source Form entry) of the source document information as it was operated on by individuals involved in the completion of the document. The Source Form Entry also may include additional machine processable data about the jurisdiction associated with the Source Form, its copyright holder, or other identifying information use as a Source Form designation established by the local jurisdiction, such as "Louisiana LaPOST".

This approach ensures that all of the information in the document is available to support human readability.  Subsequent sections include information from the source document which are required in machine readable format to enable additional processes of that information. Only information required by document receivers to be available as structured data needs to be included in machine processable format.

This structure is common to all ADI document types. The original Source Form of the document must alway be included in the body of the document. Requirements for inclusion of additional machine processable data depend on:
* the form of advance healthcare directive document
* the ADI content type
* the readiness of document recipients to perform data processing on included content

Reference the IG section, [Advance Directive Structure Requirements](formal_specification.html#advance-directive-document-structure-requirements), for further guidance.

##### Minimally Structured Documents: A Better Implementation Approach
Minimally Structured Documents enable an optimizable Progressive Structuring design which supports Progressive Interoperability. Healthcare interoperability has long presented implementers with an uncomfortable choice. Unstructured documents faithfully preserve the complete human-readable clinical story but expose little information for machine processing. Fully structured documents maximize computable content but require substantial implementation effort and the resulting rendered information feels unfamiliar for human users. Minimally Structured Documents provide a practical middle ground by preserving the native source form within a structured document framework and including only the structured data needed to support downstream workflows and clinical decisions. Rather than treating interoperability as an all or nothing proposition to be achieved in a single leap, the Minimally Structured Documents approach offers optimal evolution through Progressive Interoperability. It’s the timeless tortoise vs. hare tale with no surprise ending. Slow and steady wins the race.

##### Progressive Interoperability Principles
The design philosophy of Progressive Interoperability is grounded in principles that balance innovation with practicality. This philosophy provides a sustainable roadmap for organizations at every stage of interoperability maturity, assuring the value of receiving structured data is recognized before the burden of producing it is born. It recognizes that sustainable progress is achieved through a sequence of manageable improvements that collectively transform an ecosystem over time.
* *Value matters, not volume.* The objective is not to maximize structured data—it’s to maximize the value of what can be achieved with the structured data that is supplied.
* *Evolve with deliberation, not exuberance.* We need to meet stakeholders where they are and improve through deliberate, incremental change. Like orthodontic treatments that improve your smile, lasting transformation comes from a series of purposeful adjustments that steadily move toward a well-defined destination. Crooked teeth can’t be straightened in a single crank. It takes purposeful pressure at the right level, applied over time.
* *Preserve the story while making it more usable.* The clinical narrative of a document remains the authoritative information source. How the source information is represented is inherently part of its context and meaning. The fidelity and authenticity of the source form is essential to preserve information as it is shared. The structured data that accompanies a document is not the “truth”, it’s a biproduct devised to improve access and increase computer processing possibilities. 

##### Progressive Structuring Design Methodology
Progressive Structuring is the design methodology at the heart of Minimally Structured Documents. Instead of requiring an all-or-nothing choice between a fully structured data representation of the information in a document, or none, Progressive Structuring starts by including the source form of the document within a structured body. The structured body framework can then progressively become more data enriched as implementation maturity and demonstrated business value increase. Enhancements can be introduced incrementally as they deliver measurable value and inclusion of the information’s source form is never omitted. It’s a middle-ground structured document design, built to fit more naturally with today’s existing workflows and systems.

###### Figure 1. Conceptualizing Minimally Structured Document Architecture
This illustration shows the progression from a pdf document that has no structured data to an Unstructured Document which has a structured header but no structured data in the body, as opposed to a Fully Structured Document which has a structured header and every bit of the informational content of the document is represented. 

<p align="center">
    <img src="./minimally_structured_documents.svg" type="image/svg+xml" alt="Minimally Structured Documents" style="width: 80%; float: none; vertical-align: middle;"/>
</p>

##### A New Architectural Pattern for Documents
Minimally Structured Documents do not replace existing healthcare document standards like CDA and FHIR. Instead, they establish an architectural pattern for structured documents that simplifies adoption, accelerates interoperability, and provides a bridge between today's inert paper documents and tomorrow's increasingly computable document data troves. Progressive Structuring allows every organization to contribute meaningful interoperability improvements today using their existing documents as the complete source form for human reference, and then to evolve at a value-based pace adding structured data where systems are prepared to utilize it.

#### Handling Expiration Dates
ADI documents should have a time period whereby the patient preferences or the PMOs are legally valid. These are indicated by expiration dates within the `Person-Authored Composition` and `PMO Composition` profiles as such:
* the start date for the AD:        `Composition.date`
* the expiration date for the AD:   `Composition:extension:ExpirationDateExtension`

<!-- 
#### ADI Encounter-centric Patient Instructions Document Structure

<blockquote class="stu-note">
    <p>
    Encounter-centric Patient Instructions are out of scope for the PACIO ADI STU2 publication. A brief description is provided for completeness.
    </p>
</blockquote>

Encounter-centric Patient Instructions are used when a person is about to undergo a medical procedure during which there is the potential need to deploy life-sustaining treatments. This type of ADI information can also be used when a person is about to have an inpatient stay, or a stay at a nursing or rehab care facility, where the care delivery team asks the individual to make decisions about medical treatments they do or do not want, should circumstances arise when these decisions need to be made and the individual’s choices would need to be taken into consideration. A person may make these decisions for his or her self, and is sometimes the case if the person cannot make these decisions, the healthcare agent may decide. These medical treatment decisions are made in the present and ONLY apply to the current episode of care. They are instructions provided by the person or their surrogate decision-maker. These instructions are closely related to advance directives, in that they say, if x happens, then do y. Or, if x happens, do not do y. For this reason, these kinds of instructions and prohibitions are often recorded with a person’s advance directives. However, they are not advance directives because they represent treatment instructions that ONLY apply to the current episode of care. These instructions are considered obligation or prohibition instructions, provided by the person or their surrogate decision-maker, and authored by a practitioner.
 -->

#### Clause Extension
Advance healthcare directive source form documents often contain contextual information in the various sections of the document. Contextual information may be relevant to preserve the meaning of information represented in structured data entries associated with a section. To enable representation of contextual information and make it more processable, this guide has defined a [clause extension](StructureDefinition-adi-clause-extension.html). The clause extension can be used to represent various types of contextually relevant information in any Composition section and within the context of a Consent Resource. Information that is not contextually relevant does not get represented using the clause extension. That information remains accessible as part of the source form.

Examples of clauses include: statements made by a document author or their witness as well as administrative information associated with an advance healthcare directive.

### Advance Healthcare Directive Document Content Principles
In order to accurate represent the semantic content contained in Advance Healthcare Directive Documents, the following principles have been applied when creating machine processable entries to represent information expressed in the source form of the document.

#### Observation Resource Is Used for Patient Preferences
Use of FHIR Observation Resource to express Care Experience Preferences: Care experience preferences captured for an individual are semantically represented as Observations. This information exists to inform the care team who is providing care for the individual what is meaningful or important to the person, from a personal or spiritual or cultural perspective. This type of person-authored information is documented using Observations with semantic coding and are typically not conditional in nature.

#### Consent Resource Is Used to express Delegation of Rights
The FHIR Consent Resource is  used to model the designation of an individual the person, or patient, has named who is to make care and treatment decisions on their behalf if the person, or patient, is unable to do so themselves at some point, due to health status. The delegation of medical and treatment decision-making involves use of "consent" as the person, or patient, agrees or consents to someone other than themselves to be able to interact with the care team on their behalf, decide on medical and treatment decisions, decide on sites of care where treatment is to be received, and otherwise act on their behalf in alignment with what is known about them based on their beliefs, values, personality, and other informing factors that the named designee believes are in the person's best interests.

#### ServiceRequest Is Used to Express "Portable" Directives Ordered by a Physician Intended to Travel With the Patient
The FHIR ServiceRequest Resource is used to communicate "portable medical orders" regarding treatment interventions. On paper, and within the ADI guidance, these orders are written by a practitioner and signed, and are typically also signed by the Patient or their health care designee. As these orders are not constrained to a single episode of care or encounter, but are instead intended to move across care settings in a persistent manner, the signing practitioner may not have authority to place an actual order in the receiving/treating EHR where the actual care is being provided. As these portable medical orders are indeed practitioner-authored medical orders related to treatment interventions, which have been captured by the care team and properly signed by a practitioner as appropriate to the originating jurisdiction, the contents found in ServiceRequests are actionable as intended when transitions in care occur. These orders are commonly known in the vernacular as a POLST, MOLST, DNR, DNAR and derivatives of those common labels. A POLST-type document may address many types of treatment intervention preferences, thereby containing many individual orders, whereas a DNR or DNAR represents a single order against use of CPR should the person be appropriate for that type of emergency intervention in the future. Each individual portable medical order within the document is represented as ServiceRequest with an intent of "directive". 

When nested in the context of a CarePlan, which can express the circumstances or conditions under which this order would be pertinent, the ServiceRequest is conditional upon the stated conditions being true.

#### CarePlan Is Used to Express Conditional Preferences or Complex Statements Including Relevant Scenarios or Intended Goals Pertinent to the Intention of the Situation
TThe FHIR CarePlan Resource is used to express complex conditional statements that involve a medical situation or health scenario, which can also include a potential prognosis, all of which results in a specific treatment intervention or care experience preference. To express this in mathematical terms, this type of complexity can be found on forms currently in use such as: IF this happens, AND the prognosis is X, THEN I want to express my goals or treatment preference to be Y.  These complex statements of possible health scenarios that result in goal or treatment preferences are complex and yet if expressed should be done using the CarePlan Resource. Additionally the Procedure Resource is used to express the actual intervention procedure in the details of that expression. The semantic nuances of the person's care experience, goal of care, and/or treatment intervention preference needs to be conditionally reflected in the person's, or patient's, overarching plan of care.

#### Patient Is Used to Represent the Subject or Subject and Author for Person-Authored Document Types
The FHIR Patient Resource is used to represent the person, or patient, who is the subject of the Portable Medical Order or Person-Authored advance directive. 

#### RelatedPerson Is Used for Healthcare Agent, Witness, and Notary
The FHIR RelatedPerson Resource is used to represent an individual who is being designated as the person's, or patient's, Healthcare Agent. This resource is also used to represent an individual who acts as a Witness or Notary when an advance healthcare directive is completed.

#### PractitionerRole Is Used for Professional "Care Providers" Playing a Role in Document Creation and Completion
The FHIR PractitionerRole Resource is used to represent a practitioner employed by a specific care organization who in involved in facilitating the creation, update or completion (including signing) of the completed portable medical order. Professionals other than practitioners may also be involved in the creation or update of portable medical orders or advance directives as facilitators, who support the person, or patient, who is the subject of the document. The care team member facilitating or completing the document is represented using a FHIR Practitioner Resource, while the provider organization that employs that care team and practitioner is represented using a FHIR Organization Resource. 

#### Practitioner Is Used to Represent Individuals Acting in a Professional Capacity as a Care Provider
The FHIR Practitioner Resource is used to represent the individual care provider. Professions also may be involved as facilitators supporting a person to fill out a personal advance directive. 

#### Organization Is Used to Represent Organizations
The FHIR Organization Resource is used to represent the provider organization that is providing care to the person, or patient. The employer of the practitioner or facilitating care team member may also be expressed using the Organization Resource, if a portable medical order is the document being created, updated, or completed.

#### Provenance Is Used to Record Relevant Activities Performed on the Document
The FHIR Provenance Resource is used to record relevant actions taken on or for an advance healthcare directive document throughout the life-cycle of of the document.  This resource documents important elements such as authorship and verification of the directive, providing easily accessible transparent auditability for trust and integrity when measurement and clinical reliance are needed.  

#### Composition Is Used to Organize the Attested Source Form and Human Readable Content along with Associated Machine Processable Entries
The FHIR Composition Resource is is used to hold and expose the attested content of the source form, and enable inclusion of computable data essential to usability and exchange between systems.

#### Bundle Is Used to Instantiate a Completed Version of the Document
The FHIR Bundle Resource is used to establish a persistent snapshot of the document at a point in time to preserve it in an immutable record of the completed document. When appropriate it can also include relevant Provenance Resources associated with the document to support accessible transparency of the Provenance of the information. To avoid potential loss of context in the contents when the information is parsed, it is required that advance healthcare directive documents be expressed using Bundle to protect intent of the information and enable contextual concepts intended to be represented as a single document.

#### DocumentReference Is Used to Register and Index a Document to Enable Searching and Retrieval Through a FHIR Document Management Server
The FHIR DocumentReference Resource  is used to record important information such as the most current version of the document, important at the point of care, and provides proof that the directive exists in the system.  This resource expresses elements such as status, composition document status, author, custodian, and content attachment to name a few data elements.

#### Alignment with CDA Representations
This FHIR IG is the primary source for defining Advance Healthcare Directive Documents and their digital representation formats.  However, it operates in harmony with the CDA IG produced for the same purpose. The structured document representation principles are aligned between these two IGs and CDA templates are not updated to remain in synch with information representation designs developed in FHIR.