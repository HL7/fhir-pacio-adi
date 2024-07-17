
This section provides additional guidance on the relationship between the associated profiles and the structure of the interoperable advance directive document.


<a name="content_types">

### ADI Content Types

There is a very important distinction for the three types of ADI content that will be covered in this IG. Below is a description of each type of content that will be covered by the ADI FHIR IG with versions.

<p>&nbsp;</p>
<table>
    <tr>
        <th width="50">&nbsp;</th>
        <th colspan="2" style="background-color:#DEEBF7; border: 1px solid black; vertical-align: middle; padding: 5px"><p style="font-size: 14px;"><b>Type I: Person-Authored Advance Directive Information</b></p></th>
    </tr>
    <tr><td width="50">&nbsp;</td>
        <td width="25">&nbsp;</td>
        <td>
            <ul>
                <li>Person-authored information</li>
                <li>Used as a tool for sharing an individual’s medical treatment and intervention goals, preferences, and priorities (GPP)</li>
                <li>Provides guidance that a person would want known to inform treatment and care planning during a potential future medical emergency, in the case where the patient is unable to communicate with caregivers and medical personnel</li>
                <li>There is NO “contract” between the author (patient) and any other party involved in the future medical emergency that the GPP is required to be followed (i.e., no offer or acceptance, no consideration, no consequences for failure to follow the patient’s directives)</li>
            </ul>
        </td>
    </tr>
    <tr height="15"><td colspan="3">&nbsp;</td></tr>
    <tr>
        <th width="50">&nbsp;</th>
        <th colspan="2" style="background-color:#9DC3E6; border: 1px solid black; vertical-align: middle;  padding: 5px"><p style="font-size: 14px;"><b>Type II: Encounter-Centric Instructions</b></p></th>
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
        <th colspan="2" style="background-color:#478FD1; border: 1px solid black; vertical-align: middle;  padding: 5px"><p style="font-size: 14px;"><b>Type III: Portable Medical Orders for Life-Sustaining Treatments</b></p></th>
    </tr>
    <tr><td width="50">&nbsp;</td>
        <td width="25">&nbsp;</td>
        <td>
            <ul>
                <li>Practitioner-authored</li>
                <li>A set of medical orders intended to follow a patient and be available across the continuum of care</li>
                <li>The patient, or their healthcare agent, provides direct input in the creation of the orders.</li>
                <li>These orders are used to document a provider’s orders for, or preferences against, treatments that are to be utilized during a future medical emergency that would necessitate life-sustaining treatment and interventions, and are based on the patient’s expressed goals, preferences, and priorities for such care.</li>
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

### ADI Profiles

The table below describes the FHIR profiles relevant to each of the ADI Content Types.

<table border="1">
    <tr>
        <th colspan="4" style="background-color: #DEEBF7; text-align:center; padding: 10px; padding: 10px;"><b>CONTENT TYPE I: Advance Directive Information</b> <i>(in STU1 scope)</i></th>
    </tr>
    <tr style="background-color: #D9D9D9;">
        <th style="padding: 10px;" colspan="2"><b>Name of Profile to be developed</b></th>
        <th style="padding: 10px;"><b>Short description</b></th>
        <th style="padding: 10px;"><b>Based On</b></th>
    </tr>
    <tr>
        <td style="padding: 7px;">1</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-DocumentReference.html">ADI Document Reference</a></td>
        <td style="padding: 7px;"><p>This profile defines constraints that represent the information needed to register an advance directive information document on a FHIR server.</p></td>
        <td style="padding: 7px;"><a href="https://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-documentreference.html">US Core DocumentReference</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">2</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-Composition-Header.html">ADI Header</a></td>
        <td style="padding: 7px;"><p>This profile defines constraints that represent common administrative and demographic concepts for advance directives information used in US Realm clinical documents.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/clinicaldocument.html">ClinicalDocument</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">3</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PACPComposition.html">ADI Personal Advance Care Plan Composition</a></td>
        <td style="padding: 7px;"><p>This profile encompasses information that makes up the author’s advance care planning information.</p></td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-Composition-Header.html">ADI Header</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">4</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-Participant.html">ADI Participant</a></td>
        <td style="padding: 7px;"><p>This profile represents a person participating in a person's advance directives in some designated capacity such as healthcare agent or healthcare agent advisor.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/relatedperson.html">RelatedPerson</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">5</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-ParticipantConsent.html">ADI Participant Consent</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent the author’s consent for an ADI participant such as a healthcare agent or advisor and can include powers granted to, or limitations imposed upon, such persons.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/consent.html">Consent</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">6</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-DocumentationObservation.html">ADI Documentation Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to indicate if additional advance directive documents, such as physician order for life sustaining treatment (MOLST or POLST) or Do Not Resuscitate Order (DNR) exist and a reference to the document.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">8</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PersonalInterventionPreference.html">ADI Personal Intervention Preference</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent personal medical intervention preferences under certain health conditions.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">9</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-CareExperiencePreference.html">ADI Care Experience Preference</a></td>
        <td style="padding: 7px;"><p>This profile is used to express the author's personal thoughts about something he or she feels is relevant to his or her care experience which can be important to know when planning or delivering his or her care.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">10</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PersonalGoal.html">ADI Personal Goal</a></td>
        <td style="padding: 7px;"><p>This profile is a statement that presents the author's personal health goals that are important to be mindful of when planning his or her care.</p></td>
        <td style="padding: 7px;"><a href="https://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-goal.html">US Core Goal</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">11</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PersonalPrioritiesOrganizer.html">ADI Personal Priorities Organizer</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent a set of personal goals, preferences or care experiences in a preferred ranked order.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/list.html">List</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">12</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-OrganDonationObservation.html">ADI Organ Donation Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent the author's thoughts about organ donation.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">13</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-AutopsyObservation.html">ADI Autopsy Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent the author's thoughts about autopsy.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">13</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PreferenceCarePlan.html">ADI Preference Care Plan</a></td>
        <td style="padding: 7px;"><p>The Preference Care Plan is a means for an individual to express their goals and preferences under certain circumstances that may be pertinent when planning his or her care.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/careplan.html">Care Plan</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">13</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-Provenance.html">ADI Provenance</a></td>
        <td style="padding: 7px;"><p>Advance Directive Interoperability Provenance based on US Core to capture, search and fetch provenance information associated with advance directive interoperability data.</p></td>
        <td style="padding: 7px;"><a href="https://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-provenance.html">US Core Provenance</a></td>
    </tr>
    <tr>
        <th colspan="4" style="background-color: #9DC3E6; text-align:center; padding: 10px; padding: 10px;"><b>CONTENT TYPE II: Encounter-Centric Patient Instructions</b> <i>(after STU2)</i></th>
    </tr>
    <tr style="background-color: #D9D9D9;">
        <th style="padding: 10px;" colspan="2"><b>Name of Profile to be developed</b></th>
        <th style="padding: 10px;"><b>Short description</b></th>
        <th style="padding: 10px;"><b>Based On</b></th>
    </tr>
    <tr>
        <td style="padding: 7px;">15</td>
        <td style="padding: 7px;"><a href="#">ADI Obligation Instruction</a></td>
        <td style="padding: 7px;"><p>This profile always expresses activities that care providers have been instructed by the person or their healthcare agent to perform.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/consent.html">Consent</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">16</td>
        <td style="padding: 7px;"><a href="#">ADI Prohibition Instruction</a></td>
        <td style="padding: 7px;"><p>This profile always expresses activities that care providers have been instructed by the person or their healthcare agent not to perform.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/consent.html">Consent</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">17</td>
        <td style="padding: 7px;"><a href="#">Advance Directives Organizer</a></td>
        <td style="padding: 7px;"><p>This profile groups a set of ADI observations documented together at a single point in time and are ONLY relevant during the episode of care being documented.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/list.html">List</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">18</td>
        <td style="padding: 7px;"><a href="#">ADI Advance Directives Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to record information about ADI authored by the person which contains goals, preferences, and priorities for care.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">19</td>
        <td style="padding: 7px;"><a href="#">ADI Advance Care Planning Intervention</a></td>
        <td style="padding: 7px;"><p>This profile is used to record a planned intervention that will involve reviewing and verifying a person’s goals, preferences or priorities for treatment or will involve educating and supporting a person on establishing or modifying his or her ADI.</p></td>
        <td style="padding: 7px;"><a href="https://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-procedure.html">US Core Procedure</a></td>
    </tr>
    <tr>
        <th colspan="4" style="background-color: #478FD1; text-align:center; padding: 10px; padding: 10px;"><b>CONTENT Type III: Portable Medical Orders (PMO)</b> <i>(STU2)</i></th>
    </tr>
    <tr style="background-color: #D9D9D9;">
        <th style="padding: 10px;" colspan="2"><b>Name of Profile to be developed</b></th>
        <th style="padding: 10px;"><b>Short description</b></th>
        <th style="padding: 10px;"><b>Based On</b></th>
    </tr>
    <tr>
        <td style="padding: 7px;">20</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PMOComposition.html">ADI Portable Medical Order Composition</a></td>
        <td style="padding: 7px;"><p>This profile encompasses information that makes up a practitioner's portable medical order.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/composition.html">Composition</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">21</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PMOCarePlan.html">ADI Portable Medical Order Care Plan</a></td>
        <td style="padding: 7px;"><p>This profile is used to specify the plan of care that represents the persons wishes, preferences, and experiences as documented in the PMO.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/careplan.html">Care Plan</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">22</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PMOServiceRequest.html">ADI Portable Medical Order ServiceRequest</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent a practitioner authored portable medical order.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/servicerequest.html">Care Plan</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">23</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PMOHospiceObservation.html">ADI Portable Medical Order Hospice Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent a finding that the individual is under hospice care.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">24</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PMOParticipantObservation.html">ADI PMO Participant Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent the portable medical orders participant observation.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">25</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PMOReviewObservation.html">ADI PMO Review Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent the review status of the portable medical order.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>  
    <tr>
        <td style="padding: 7px;">26</td>
        <td style="padding: 7px;">ADI Consent for Portable Medical Orders</td>
        <td style="padding: 7px;"><p>This profile is used to express the person, or their healthcare agent’s, consent that is not bound by an encounter.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/consent.html">Consent</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">27</td>
        <td style="padding: 7px;">ADI Consent for DNR Orders</td>
        <td style="padding: 7px;"><p>This profile is used to express the patient’s or healthcare agent consent that is not bound by an encounter.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/consent.html">Consent</a></td>
    </tr>
    <tr>
        <th colspan="4" style="background-color: #FFF2CC; text-align:center; padding: 10px; padding: 10px;"><b>Sharing Documents</b></th>
    </tr>
    <tr style="background-color: #D9D9D9;">
        <th style="padding: 10px;" colspan="2"><b>Name of Profile to be developed</b></th>
        <th style="padding: 10px;"><b>Short description</b></th>
        <th style="padding: 10px;"><b>Based On</b></th>
    </tr>
    <tr>
        <td style="padding: 7px;">28</td>
        <td style="padding: 7px;"><a href="#">ADI Consent to Share</a></td>
        <td style="padding: 7px;"><p>This profile is used to enable someone else to act on their behalf if they are unable to do so themselves.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/consent.html">Consent</a></td>
    </tr>
</table>


#### Globals Profiles

{% include globals-table.xhtml %}

### Package Dependencies

This Implemention Guide is based on [FHIR R4](http://hl7.org/fhir/R4/).

{% include dependency-table.xhtml %}

