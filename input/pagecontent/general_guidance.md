
This section provides additional guidance on the relationship between the associated profiles and the structure of the advance directive document.


<a name="content_types">

### ADI Content Types

There is a very important distinction for the three types of information that will be covered in this IG. Below is a description of each type of content that will be covered by the IG.

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
                <li>Patient-authored information</li>
                <li>Used as a tool for sharing an individual’s (patient’s) medical treatment and intervention goals, preferences, and priorities (GPP)</li>
                <li>Provides guidance that a patient would want known to inform care planning during a potential future medical emergency, in the case where the patient is unable to communicate with caregivers and medical personnel</li>
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
                <li>Practitioner-authored</li>
                <li>Instructions are related to a current, immediate episode of care</li>
                <li>The patient, or healthcare agent, provides direct input in the creation of the instructions which document decisions that have been made about treatments that may be utilized during a medical emergency occurring within the current episode of care.</li>
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
                <li>The patient, or healthcare agent, provides direct input in the creation of the instructions.</li>
                <li>These orders are used to document a provider’s order for or prohibition of treatments that are to be utilized during a future medical emergency that would necessitate this type of treatment be necessitated and are based on a patient’s wishes for or against the treatments.</li>
            </ul>
        </td>
    </tr>
</table>

<img src="./ADI_types_overview.png" alt="ADI Types Overview" style="width: 80%; float: none; vertical-align: middle; margin: auto"/>
<br clear="all" />

The current version of this FHIR IG covers the use of RESTful API interactions for creation, sharing, query/access, and verification of advance directive information between systems. It is intended to address advance directive interoperability needs for Content Type 1, where the author is the individual that is making medical intervention goals, preferences, priorities known in advance. This IG is not intended to cover medical intervention goals, preferences, priorities for individuals who are not able to create and document their own advance healthcare decisions.


<blockquote class="stu-note">
    <p>
    STU1 supports only Person-authored Advance Directives (ADI Content Type 1) documents. Future versions of this FHIR IG will address encounter-centric patient instructions, Content Type 2, and portable medical orders for life-sustaining treatment, Content Type 3.
    </p>
</blockquote>

### Structure and Resource Relationships

Advance directive documents may take several forms including scanned PDF documents, CDA documents, other binary documents, and native FHIR documents (using the `Composition` and other ADI-specific profiled FHIR resources). This guide defines interoperability to support all of these types and other potential document types (through encoding in a `Binary` resource). Today, most of these documents are shared through scanned images. 

This implementation guide is designed to allow a range of digitization levels, from scanned documents to fully discrete FHIR documents. Additionally, this guide provides the capability for different types of data to be more digitized than others inside the same document, which is structured as a FHIR Composition, described in more detail in the [ADI FHIR Document Structure](general_guidance.html#adi-fhir-document-structure) section.

The DocumentReference is the resource that is used for "indexing" of documents, similar to the way a library uses a card catalog to index books based on different search criteria, for example, by title, author, date, or classification code.  The DocumentReference can be used in the same way for searching and finding documents with specific attributes such as type of document, subject (e.g., patient), author, dates.  These attributes are provided in the metadata of the DocumentReference so that the actual documents do not have to be accessed for most common searches.  A complete list of search capabilities on DocumentReference can be found in the [Search Parameters](search_parameters.html#adi-documentreference-documentreference) section.

<img src="./ADI_profile_resource_relationships.png" alt="Structure and Resource Relationships"  style="width: 70%; float: none; vertical-align: middle; margin: auto"/>

Digital signatures are defined as optional in this guide. If supported, the digital signature will be a captured in a `Binary` resource that is referenced by an additional `DocumentReference` resource.

<blockquote class="stu-note">
    <p>
    There is movement within the FHIR community to move towards using the Provenance resource as a standard way to apply a digital signature to a document in FHIR.  The signature within the Provenance resource would be used to encrypt the binary (the actual document itself), not the DocumentReference.  A future version of the implementation guide will be updated to follow the standard FHIR guidance on signatures when it is finalized.
    </p>
</blockquote>

### ADI FHIR Document Structure

ADI FHIR native documents are instances of the `Bundle` resource with the `type` = `document`. The document should have all content contained within the Bundle with no external references except for the references to external documents in the [DocumentationObservation](StructureDefinition-ADI-DocumentationObservation.html) through the focus data element. FHIR `Bundle` documents consist of multiple entry resources within it, with the first entry being a `Composition` resource. The `Composition` resource acts as the header and organizational construct. It contains information about the document such as the category of document, dates, and references to the various participants of the document, as well as document sections used to categorize or organize the contained entries.

The ADI Content Type 1 document defines 7 sections:
1. Healthcare Agent - Healthcare agents, healthcare agent advisors, and consent regarding their roles, powers, and limitations
2. Goals, Preferences, and Priorities for Certain Healthcare Conditions - Preference care plans that contain the person's goals to be considered active under specific situations or conditions.
3. Goals, Preferences, and Priorities Personal Care Experience - Consist of quality of Life related personal care experiences, personal goals, and priorities which can be further grouped and prioritized in a Personal Priorities Organizer.
4. Goals, Preferences, and Priorities Upon Death - Goals, preferences, and priorities a person has at the time of or soon after their death.
5. Additional Documentation - Observations regarding the existence of other advance directive related information.
6. Witness & Notary - References and information regarding witnesses and notary.
7. Administrative Information - Administrative information associated with this personal advance care plan.

<img src="./ADI_DocumentStructure.png" alt="Advance Directive Document Structure"  style="width: 100%; float: none; align: middle;"/>

The content in these categories of advance directive could include, but are not limited to:
* Healthcare agent designation
* Antibiotics administration preference
* Artificial nutrition and hydration administration preference
* Intubation and ventilation procedure preference
* Resuscitation procedure preference
* Diagnostic testing procedure preference
* Preferences relating to palliative care
* Preferences relating to hospice care at the end of life
* Organ donation preference
* Autopsy procedure preference
* Burial preference
* Care preference that is general in nature which the patient wants care providers to take into consideration
* Information about a personal goal, such as seeing a grandchild born, attending a child’s wedding, finding care for a beloved pet, or dying in a certain place.

Content type 1 also includes identifying the presence of any type of Portable Medical Order for Life Sustaining Treatment (PMOLST) and/or Do Not Resuscitate (DNR) document.  It does not include the specifics of the structured information content of PMOLST and DNR merely the presence of the documents.

Content Type 2, Episode-Centric Patient Instructions, are used when a person is about to undergo a medical procedure during which they will be sedated.  They can also be used when a person is about to have an inpatient stay, or a stay at a nursing or rehab care facility, and the care delivery team asks the patient to make decisions about medical treatments they do or do not want should circumstances arise when these decisions need to be made and their choices would need to be taken into consideration. A patient may make these decisions for his or her self, or if the patient cannot make these decisions, the healthcare agent may decide. These medical treatment decisions are made in the present and apply to the current episode of care. They are instructions provided by the patient or a surrogate decision-maker. These instructions are closely related to advance directives, in that they say, if x happens, then do y. Or, if x happens, do not do y. For this reason, they are often recorded with a person’s advance directives. However, they are not advance directives because they represent treatment instructions that apply to the current episode of care. These instructions are considered obligation or prohibition instructions, provided by the patient or the surrogate decision-maker, for the benefit of care providers and authored by a practitioner. 

Content Type 3, are Portable Medical Orders for Life-Sustaining treatment. These documents tells other healthcare professionals the medical orders for life-sustaining treatment for a patient. Portable medical order documents are authored by physicians, not patients. They do not document goals, preferences, and priorities that a patient intends to be used as guidance when making care decisions. They document medical treatment intervention decisions that already have been made and are currently in place to guide care delivery. 

All doctors, emergency medical professionals, and other healthcare professionals, must follow these medical orders as the patient moves from one location to another (hospital, care facility, home, etc.), unless a physician examines the patient, reviews the orders, and decides to change the orders. In an emergency situation, procedures that are legally required of emergency personnel will be overridden by portable medical orders.

Depending on the state, a portable medical order may go by any of the following names:
* MOLST (Medical Orders for Life Sustaining Treatment)
* POLST (Physician Orders for Life Sustaining Treatment)
* MOST (Medical Orders for Scope of Treatment)
* POST (Physician Orders for Scope of Treatment)
* TPOPP (Transportable Physician Orders for Patient Preferences)
* Out-of-hospital Do Not Resuscitate (DNR) Orders

Portable medical orders are not advance directives. They are treatment orders. Obligation and prohibition instructions are not advance directives. They are instructions given by the patient or the healthcare agent. These are important distinctions to understand.


#### Clause Extension
Advance directives documents often have additional information or clauses related to specific areas of the document. This may include things like additional information about the conditions under which a healthcare agent has been selected, whether a healthcare agent has been notified of or accepted their role as such, or other information that provides context to the data otherwise expressed in the sections or entries of a document. To support this information this guide has defined a [Clause extension](StructureDefinition-adi-clause-extension.html) to all of the Composition sections and various profiles and elements.

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
        <td style="padding: 7px;"><p>This profile encompasses information that makes up the author’s advance care information plan.</p></td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-Composition-Header.html">ADI Header</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">4</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-Participant.html">ADI Participant</a></td>
        <td style="padding: 7px;"><p>This profile represents a person participating in a person's advance directives in some capacity such as healthcare agent or healthcare agent advisor.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/relatedperson.html">RelatedPerson</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">5</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-ParticipantConsent.html">ADI Participant Consent</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent a consent for an advance directive participant such as a healthcare agent or advisor and power or limitation granted to such persons.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/consent.html">Consent</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">6</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-DocumentationObservation.html">ADI Documentation Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to indicate if additional advance directive documents, such as physician order for life sustaining treatment (MOLST or POLST) or Do Not Resuscitate Order (DNR) exist and a reference to the document.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">7</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-Goal.html">ADI Goal</a></td>
        <td style="padding: 7px;"><p>This profile defines the base requirements for all ADI Goals.</p></td>
        <td style="padding: 7px;"><a href="https://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-goal.html">US Core Goal</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">8</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PersonalInterventionPreference.html">ADI Personal Intervention Preference</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent a personal preference for a type of medical intervention (treatment).</p></td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-Goal.html">ADI Goal</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">9</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-CareExperiencePreference.html">ADI Care Experience Preference</a></td>
        <td style="padding: 7px;"><p>This profile is a clinical statement that presents the author's personal thoughts about something he or she feels is relevant to his or her care experience and may be pertinent when planning his or her care.</p></td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-Goal.html">ADI Goal</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">10</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PersonalGoal.html">ADI Personal Goal</a></td>
        <td style="padding: 7px;"><p>This profile is a statement that presents the author's personal health and treatment goals that are pertinent when planning his or her care.</p></td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-Goal.html">ADI Goal</a></td>
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
        <th colspan="4" style="background-color: #9DC3E6; text-align:center; padding: 10px; padding: 10px;"><b>CONTENT TYPE II: Encounter-Centric Patient Instructions</b> <i>(after STU1)</i></th>
    </tr>
    <tr style="background-color: #D9D9D9;">
        <th style="padding: 10px;" colspan="2"><b>Name of Profile to be developed</b></th>
        <th style="padding: 10px;"><b>Short description</b></th>
        <th style="padding: 10px;"><b>Based On</b></th>
    </tr>
    <tr>
        <td style="padding: 7px;">15</td>
        <td style="padding: 7px;"><a href="#">ADI Obligation Instruction</a></td>
        <td style="padding: 7px;"><p>This profile always expresses activities that care providers have been instructed to perform.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/consent.html">Consent</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">16</td>
        <td style="padding: 7px;"><a href="#">ADI Prohibition Instruction</a></td>
        <td style="padding: 7px;"><p>This profile always expresses activities that care providers have been instructed not to perform.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/consent.html">Consent</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">17</td>
        <td style="padding: 7px;"><a href="#">Advance Directives Organizer</a></td>
        <td style="padding: 7px;"><p>This profile groups a set of advance directive observations documented together at a single point in time, and relevant during the episode of care being documented.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/list.html">List</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">18</td>
        <td style="padding: 7px;"><a href="#">ADI Advance Directives Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to record information about a document authored by the person and containing goals, preferences, and priorities for care.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">19</td>
        <td style="padding: 7px;"><a href="#">ADI Advance Care Planning Intervention</a></td>
        <td style="padding: 7px;"><p>This profile is used to record a planned intervention that will involve reviewing and verifying a person’s directives, or will involve educating and supporting a person on establishing or modifying his or her advance directives.</p></td>
        <td style="padding: 7px;"><a href="https://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-procedure.html">US Core Procedure</a></td>
    </tr>
    <tr>
        <th colspan="4" style="background-color: #478FD1; text-align:center; padding: 10px; padding: 10px;"><b>CONTENT Type III: P/MOLST</b> <i>(after STU1)</i></th>
    </tr>
    <tr style="background-color: #D9D9D9;">
        <th style="padding: 10px;" colspan="2"><b>Name of Profile to be developed</b></th>
        <th style="padding: 10px;"><b>Short description</b></th>
        <th style="padding: 10px;"><b>Based On</b></th>
    </tr>
    <tr>
        <td style="padding: 7px;">20</td>
        <td style="padding: 7px;">ADI Consent for Portable Medical Orders</td>
        <td style="padding: 7px;"><p>This profile is used to express the patient’s or healthcare agent consent that is not bound by an encounter.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/consent.html">Consent</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">21</td>
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
        <td style="padding: 7px;">22</td>
        <td style="padding: 7px;"><a href="#">ADI Consent to Share</a></td>
        <td style="padding: 7px;"><p>This profile is used to expresses the patient’s or healthcare agent consent to share Advance Directive information with others</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/consent.html">Consent</a></td>
    </tr>
</table>


### Dependencies
<p>This implementation guide relies on the following other specifications:</p>
<ul>
  <li><a href="http://hl7.org/fhir/R4/">FHIR R4</a> - The version of FHIR used as the base for this implementation guide.</li>
  <li><a href="https://hl7.org/fhir/us/core/STU4/index.html">US Core STU4.0.0</a> - The version of US Core based on FHIR R4.</li>
</ul>
