The Advance Directive Interoperability (ADI) FHIR implementation guide (IG) explains how to represent, exchange, and verify a person’s goals, preferences and priorities for medical treatment and interventions regarding future medical care. 

### Introduction 
<p>
This ADI implementation guide (IG) describes how to use existing HL7 FHIR® standards to create, update, share, verify, and exchange information about an individual's advance medical goals, preferences, and priorities for care in the event the individual is unable to communicate this information to medical teams for themselves due to a health crisis. The term “advance directive” in this IG does not refer to a specific form, document, or method of memorializing advance healthcare decisions, but is instead an over-arching category.
</p>

<p>
Advance healthcare directives can be categorized into <a href="#content_types">three types of information</a>. The current version of this guide addresses Content Type I: Person-Authored Advance Directive Information. Subsequent versions of this guide will address the other two types; Content Type 2: Encounter-Centric Patient Instructions (obligations and prohibitions) and Content Type 3:  Portable Medical Orders for Life-Sustaining Treatment.
</p>
<p>
Included in the content for this FHIR IG are person-authored advance directives and personal advance care plans which comprise Content Type 1, and also cover patient consent information attesting to their designation of a person, or persons, to serve as their healthcare agent. 
</p>
<!-- Removed. Kept for review before ballot
<p>
This initial version defines the minimum conformance requirements for digital representation and exchange of person-authored advance directives and personal advance care plans (e.g. a person’s advance medical treatment and intervention goals, preferences and priorities,  regarding potential future medical care in the event the individual becomes a patient and cannot speak for himself or herself. The intervention preferences may be conditional upon a specific health condition or physical situation. It also defines minimum conformance for the representation of patient consent for the appointment of a healthcare agent or agents, and consent to share advance directive information.
</p>
<p>
A subsequent version of this IG will define the minimum conformance requirements for digital representation and exchange of practitioner-authored encounter-centric patient instructions regarding medical treatment and intervention preferences and priorities that are immediate and apply to the current encounter.
</p>
<p>
A subsequent version of this IG will define the minimum conformance requirements for digital representation and exchange of practitioner-authored advance medical treatment orders. The representation creates a portable record of medical orders regarding specific aspects of life-sustaining medical treatments a patient does or does not want to receive, which could be performed during a potential future medical care event if the patient were to require life-sustaining medical interventions due to a health crisis or emergency. These orders include instructions commonly found in portable medical orders for life-sustaining treatments and may include other orders such as but not limited to Do Not Hospitalize and Do Not Intubate orders.
</p>
-->
### Background
<p>
Advance directive interoperability is a complex area that involves many stakeholders. The HL7 workgroup sponsor for this FHIR IG is Patient Empowerment. HL7 co-sponsor workgroups include Patient Care, Community Based Care and Privacy, and Orders & Observations. As part of PACIO’s main goal in improving care transitions, the Post-Acute Care Interoperability (PACIO) Community has adopted this project as a critical use case. The PACIO Community has a strong interest in the topic of advance directive interoperability with FHIR and will support the community engagement and technical FHIR IG development needed for advance directives interoperability. PACIO is supported by MITRE, CMS, ONC and many other stakeholders (clinical, technical, and industry associations).
</p>
<p>
FHIR profiles have been developed for several existing FHIR resources to represent advance directive Content Type 1 such as: living will, durable medical power of attorney, personal health goals at end of life, care experience preferences, emergency intervention preferences under certain circumstances, and upon death preferences. 
</p>

<a name="content_types">
#### Content Types

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
                <li>Provides guidance that a patient would want known  to inform care planning during a potential future medical emergency, in the case where the patient is unable to communicate with caregivers and medical personnel</li>
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

<img src="./ADI_types_overview.png" alt="ADI Types Overview" style="width: 100%; float: none; align: middle;"/>
<br clear="all" />

The current version of this FHIR IG covers the use of RESTful API interactions for creation, sharing, query/access, and verification of advance directive information between systems. It is intended to address advance directive interoperability needs for Content Type 1, where the author is the individual that is making medical intervention goals, preferences, priorities known in advance. This IG is not intended to cover medical intervention goals, preferences, priorities for individuals who are not able to create and document their own advance healthcare decisions.


Future versions of this FHIR IG will address encounter-centric patient instructions, Content Type 2, and portable medical orders for life-sustaining treatment, Content Type 3.

<p>&nbsp;</p>

![PACIO logo](./pacio.png)

### About PACIO
<p>
The PACIO Project is a collaborative effort to advance interoperable health data exchange between post-acute care (PAC) and other providers, patients, and key stakeholders across health care and to promote health data exchange in collaboration with policy makers, standards organizations, and industry through a consensus-based approach.
</p>
<p>
The primary goal of the PACIO Project is to establish a framework for the development of Fast Healthcare Interoperability Resources (FHIR) technical implementation guides and reference implementations that will facilitate health data exchange through standards-based use case-driven application programming interfaces (APIs).
</p>


### Project Need
<p>
Systems used to create and update patient-generated advance care plans through a patient-directed process need a way for individuals to communicate information about their advance medical care goals, preferences, and priorities. Individuals need a way to generate and update information related to their advance directives so that their current wishes can inform provider-generated care plans. Interoperable exchange of the advance directive documentation supports more effective sharing of this information across transitions of care and enables practitioners to create person-centered care plans that align with a patient’s values, goals of care, treatment preferences, and quality of life priorities when a patient can no longer communicate for themselves.
</p>

### External drivers
<p>
The aging population receiving healthcare in skilled nursing facilities and assisted living communities have been under forced isolation to reduce the risk of contracting COVID-19. Additionally, due to the pandemic, those requiring medical care have experienced transitions of care without family or a personal advocate to accompany them in order to influence medical care or be at their side; concerns about the viral transmission potential associated with paper advance directive documents further complicate transitions of care. The impact is a sense of disempowerment, isolation, and a disconnection with the world they can no longer safely interact freely with.
</p>
<p>
Never before has the availability of verifiable digital advance directive documents been so essential to delivering care.
</p>
<p>
Providers understand that a person’s goals, preferences, and priorities for care are a critical element in a person-centered healthcare system.
</p>
<p>
The role of technology and expanded adoption by the aging population, providers, and care teams has brought to the forefront the expectation of seamless accessibility of advance directive information.
</p>

### Audience/Expected Users
<p>
The audience for this IG includes architects and developers of healthcare information technology (HIT) systems in the US Realm that exchange clinical and non-clinical data. Business analysts and policy managers can also benefit from a basic understanding of the use of FHIR profiles across multiple implementation use cases. Finally, Quality Reporting Agencies, Standards Development Organizations (SDOs), Payors, Providers and Patients will benefit from this IG.
</p>

### How to read this Guide
This Guide is divided into several pages which are listed at the top of each page in the menu bar.
<ul>
    <li>Home: The home page provides the introduction and background information to set context for the use of the HL7 FHIR® ADI Implementation Guide.</li>
    <li>Guidance: These pages provide overall guidance in using the profiles and transactions defined in this guide by detailing the patient stories and personas and use cases.
        <ul>
            <li>Patient Stories and Personas: Patient stories and personas give context to the data exchange standards detailed in the technical areas of the IG. They allow the non-technical reader to envision situations in which the IGs provisions would apply, and ensure that the IG meets the intended needs for exchange of this type of information.</li>
            <li>Use Cases: A use case is a list of technical actions or event steps typically defining the interactions between a role and a system to achieve a goal. The actor can be a human or other external system. Technical scenarios that describe systems interactions between technical actors to implement the use case.</li>
            <li>General Guidance: Information about the structure and relationships between the profiles in this guide.</li>
            <li>Formal Specification: Information about conformance to the guide including Must Support requirements, document signatures, and document workflow.</li>
            <li>Security: General security requirements and recommendations for HL7 FHIR® ADI Implementation Guide actors, including authentication, authorization, and logging requirements and guidance.</li>
            <!-- TODO <li>About ADI Examples: Descriptive examples that demonstrate the use of ADI profiles and exchange mechanisms.</li>-->
        </ul>
    </li>
    <li>FHIR Artifacts: These sections provide detailed descriptions and formal definitions for all the FHIR artifacts defined in this guide.
        <ul>
            <li>Profiles: This section lists the set of Profiles that are defined in this guide to exchange advance directive information. Each linked Profile page includes a narrative introduction and a formal definition.</li>
            <li>Extensions: This section lists the set of Extensions that are defined in this guide that are used by the IG defined profiles. Each linked Extension  page includes a formal definition.</li>
            <li>Search Parameters and Operations: This section lists the HL7 FHIR® ADI Implementation Guide defined Operations and Search Parameters that are used in ADI transactions.</li>
            <li>Terminology: This section lists the value sets and code system defined for HL7 FHIR® ADI Implementation Guide profiles.</li>
            <li>Capability Statement: The following artifacts define the specific capabilities that different types of systems need to support to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the included capability statements.</li>
            <li>Examples: The section that contains examples of advance directive information that is conformant to the profiles of this guide.</li>
        </ul>
    </li>
    <li>Downloads: This page provides links to downloadable artifacts.</li>
</ul>


### Key Terms and Acronyms 

<table border="1">
    <tr>
        <th><b>Term</b></th>
        <th><b>Definition</b></th>
    </tr>
    <tr>
        <td>Patient story</td>
        <td><p>Patient stories are fictitious illustrative personal stories that are included to show the personal nature of the information being shared and demonstrate the value of having and sharing personal advance care plan information or, alternatively, the negative outcomes that arise when this information is not available in a high-quality, standardized, sharable digital format.</p>
        <p>Personas are used to model, summarize and communicate research about people who have been observed or researched in some way. A persona is depicted as a specific person but is not a real individual; rather, it is synthesized from observations of many people.
    </p></td>
    </tr>
    <tr>
        <td>Use case</td>
        <td>A use case is a list of technical actions or event steps typically defining the interactions between a role and a system to achieve a goal. The actor can be a human or other external system. Technical scenarios that describe systems interactions between technical actors to implement the use case.</td>
    </tr>
    <tr>
        <td>Advance directives</td>
        <td>A general term that encompasses all of the following: Living will (what you want), medical power of attorney (who speaks), combined living will and medical power of attorney. These documents have several names depending on where you are. “Advance directives” is the general term that people use to refer to all of these documents as a concept.</td>
    </tr>
    <tr>
        <td>ADI</td>
        <td>Advance Directive Interoperability</td>
    </tr>
</table>


### Dependencies
<p>This implementation guide relies on the following other specifications:</p>
<ul>
  <li><a href="http://hl7.org/fhir/R4/">FHIR R4</a> - The version of FHIR used as the base for this implementation guide.</li>
  <li><a href="https://hl7.org/fhir/us/core/STU4/index.html">US Core STU4.0.0</a> - The version of US Core based on FHIR R4.</li>
</ul>


### ADI Profiles

<p>Table: ADI Profiles</p>
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
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-DocumentReference.html">ADI Document Reference</a></td>
        <td style="padding: 7px;"><p>This profile defines constraints that represent the information needed to register an advance directive information document on a FHIR server.</p></td>
        <td style="padding: 7px;"><a href="https://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-documentreference.html">US Core DocumentReference</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">2</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-Header.html">ADI Header</a></td>
        <td style="padding: 7px;"><p>This profile defines constraints that represent common administrative and demographic concepts for advance directives information used in US Realm clinical documents.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/clinicaldocument.html">ClinicalDocument</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">3</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-PACPComposition.html">ADI Personal Advance Care Plan Composition</a></td>
        <td style="padding: 7px;"><p>This profile encompasses information that makes up the author’s advance care information plan.</p></td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-Header.html">ADI Header</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">4</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-Participant.html">ADI Participant</a></td>
        <td style="padding: 7px;"><p>This profile represents a person participating in a persons advance directives in some capacity such as healthcare agent or healthcare agent advisor.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/relatedperson.html">RelatedPerson</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">5</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-ParticipantConsent.html">ADI Participant Consent</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent a consent for an advance directive participant such as a healthcare agent or advisor and power or limitation granted to such persons.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/consent.html">Consent</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">6</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-DocumentationObservation.html">ADI Documentation Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to indicate if additional advance directive documents, such as physician order for life sustaining treatment (MOLST or POLST) or Do Not Resuscitate Order (DNR) exist and a reference to the document.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">7</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-Goal.html">ADI Goal</a></td>
        <td style="padding: 7px;"><p>This profile defines the base requirements for all ADI Goals.</p></td>
        <td style="padding: 7px;"><a href="https://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-goal.html">US Core Goal</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">8</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-PersonalInterventionPreference.html">ADI Personal Intervention Preference</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent a personal preference for a type of medical intervention (treatment).</p></td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-Goal.html">ADI Goal</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">9</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-CareExperiencePreference.html">ADI Care Experience Preference</a></td>
        <td style="padding: 7px;"><p>This profile is a clinical statement that presents the author's personal thoughts about something he or she feels is relevant to his or her care experience and may be pertinent when planning his or her care.</p></td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-Goal.html">ADI Goal</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">10</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-PersonalGoal.html">ADI Personal Goal</a></td>
        <td style="padding: 7px;"><p>This profile is a statement that presents the author's personal health and treatment goals that are pertinent when planning his or her care.</p></td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-Goal.html">ADI Goal</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">11</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-PersonalPrioritiesOrganizer.html">ADI Personal Priorities Organizer</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent a set of personal goals, preferences or care experiences in a preferred ranked order.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/list.html">List</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">12</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-OrganDonationObservation.html">ADI Organ Donation Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent the author's thoughts about organ donation.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">13</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-AutopsyObservation.html">ADI Autopsy Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent the author's thoughts about autopsy.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">14</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-Provenance.html">ADI Provenance</a></td>
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
