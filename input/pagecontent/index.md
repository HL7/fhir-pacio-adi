This Advance Directive Interoperability (ADI) FHIR implementation guide (IG) is used for explaining how to represent, exchange, and verify a person’s goals, preferences and priorities for treatments and interventions regarding future medical care.

### Introduction 
<p>
This ADI FHIR implementation guide (IG) describes how to use existing FHIR standards to exchange information about an individual's advance directives (e.g. a person’s advance medical treatment and intervention goals, preferences and priorities, regardless of the individual’s current health condition or physical location) regarding potential future medical care in the event the individual becomes a patient and can not speak for herself or himself.
</p>
<p>
A subsequent version of this IG will define the minimum conformance requirements for digital representation and exchange of encounter-centric patient instructions regarding medical treatment and intervention preferences and priorities that apply to a specific encounter.
</p>
<p>
A further subsequent version of this IG will define the minimum conformance requirements for digital composition, representation and exchange of advance medical treatment order sets used to record the life-sustaining medical treatments a patient does or does not want to receive should they require life-sustaining treatments due to a health crisis or emergency. These order sets are established by a practitioner(i.e., portable medical orders for life-sustaining treatments).
</p>

### Background
<p>
Advance directives interoperability is a complex area that involves many stakeholders. The HL7 sponsor for this FHIR IG is Patient Empowerment. HL7 Co-sponsor workgroups include Patient Care, Community Based Care and Privacy, and Orders & Observations. As part of their main goal in establishing a framework for the development of FHIR IGs to facilitate health information exchange to support clinical practice and the management, delivery and evaluation of health services, the Post-Acute Care Interoperability (PACIO) Community has adopted this FHIR IG as a project use case. The PACIO Community has a strong interest in the topic of advance directives and will support the community engagement and technical FHIR IG development needed for advance directives interoperability. PACIO is supported by MITRE, CMS, ONC and many other stakeholders (clinical, technical, and industry associations).
</p>
<p>
FHIR profiles have been developed for several existing FHIR resources to represent advance directive content such as: living will, durable medical power of attorney, personal health goals at end of life, care experience preferences, patient instructions (obligation, prohibitions, and consent), and portable medical orders for life sustaining treatments.
</p>
<p>
The current version of this FHIR IG covers the use of RESTful API interactions for creating, sharing, query/access, and verification of advance directive documentation between systems. It is intended to address advance directive interoperability needs where the author is the individual that is making medical intervention goals, preferences, priorities known in advance. This IG is not intended to cover medical intervention goals, preferences, priorities for individuals who are not able to make their own wishes known.
</p>
<p>
Future versions of this FHIR IG will address encounter-centric patient instructions and portable medical orders for life-sustaining treatment.
</p>

![PACIO logo](./pacio.png)

### About PACIO
<p>
The PACIO Project is a collaborative effort to advance interoperable health data exchange between post-acute care (PAC) and other providers, patients, and key stakeholders across health care and to promote health data exchange in collaboration with policy makers, standards organizations, and industry through a consensus-based approach.
</p>
<p>
The primary goal of the PACIO Project is to establish a framework for the development of Fast Healthcare Interoperability Resource (FHIR) technical implementation guides and reference implementations that will facilitate health data exchange through standards-based use case-driven application programming interfaces (APIs).
</p>


### Project Need
<p>
Systems used to create and update patient-generated advance care plans through a patient-directed process need a way for individuals to communicate information about their advance medical care goals, preferences, and priorities. Individuals need a way to generate and update information related to their advance directives so that their current wishes can inform provider-generated care plans. Interoperable exchange of the advance directive documentation supports more effective sharing of this information across transitions of care and enables practitioners to create person-centered care plans that align with a patient’s values, goals of care, treatment preferences, and quality of life priorities when a patient can no longer communicate for themselves.
</p>

### External drivers
<p>
The aging population receiving healthcare in skilled nursing facilities and assisted living communities have been under forced isolation to reduce the risk of contracting COVID-19. Additionally, due to the pandemic, those requiring medical care have found themselves during a transition of care without family or a personal advocate to accompany them in order to influence medical care or be at their side; concerns about the viral transmission potential associated with paper advance directive documents further complicate transitions of care. The impact is a sense of disempowerment, isolation, and a disconnection with the world they can no longer safely interact freely with.
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
    <li>Guidance: These pages provide overall guidance in using the profiles and transactions defined in this guide by detailing the business case, patient stories and personas and use cases.
        <ul>
            <li>Business Case: A business case summarizes the scope of information exchange covered by the IG.</li>
            <li>Patient Stories and Personas: Patient stories and personas give context to the data exchange standards detailed in the technical areas of the IG.  They allow the non-technical reader to envision situations in which the IGs provisions would apply, and ensure that development aspects of conforming to the IG meet the intended needs for exchange of this type of information.</li>
            <li>Use Cases: A use case is a list of technical actions or event steps typically defining the interactions between a role and a system to achieve a goal. The actor can be a human or other external system. Technical scenarios that describe systems interactions between technical actors to implement the business case.</li>
            <li>Security: General security requirements and recommendations for HL7 FHIR® ADI Implementation Guide actors.TBD: Security information will need to be described as needed.</li>
            <li>About ADI Examples: Descriptive examples that demonstrate the use of ADI profiles and exchange mechanisms.</li>
        </ul>
    </li>
    <li>FHIR Artifacts: These sections provide detailed descriptions and formal definitions for all the FHIR objects defined in this guide.
        <ul>
            <li>Profiles: This section lists the set of Profiles that are defined in this guide to exchange advance directive information. Each linked Profile page includes a narrative introduction and a formal definition.</li>
            <li>Extensions: This section lists the set of Extensions that are defined in this guide that are used by the IG defined profiles. Each linked Extension  page includes a formal definition.</li>
            <li>Search Parameters and Operations: This section lists the HL7 FHIR® ADI Implementation Guide defined Operations and Search Parameters that are used in ADI transactions.</li>
            <li>Terminology: This section lists the value sets and code system defined for HL7 FHIR® ADI Implementation Guide profiles.</li>
            <li>Capability Statement: The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the included capability statements.</li>
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
        <td>Business case</td>
        <td>A business case summarizes the scope of information exchange covered by the IG.</td>
    </tr>
    <tr>
        <td>Patient story</td>
        <td><p>Patient stories are fictitious illustrative personal stories that are included to show the personal nature of the information being shared and demonstrate the value of having and sharing personal advance care plan information or, alternatively, the negative outcomes that arise when this information is not available in a high-quality, standardized, sharable digital format.</p>
        <p>Personas are used to model, summarize and communicate research about people who have been observed or researched in some way. A persona is depicted as a specific person but is not a real individual; rather, it is synthesized from observations of many people.
    </p></td>
    </tr>
    <tr>
        <td>Use case</td>
        <td>A use case is a list of technical actions or event steps typically defining the interactions between a role and a system to achieve a goal. The actor can be a human or other external system. Technical scenarios that describe systems interactions between technical actors to implement the business case.</td>
    </tr>
    <tr>
        <td>Advance directive (AD)</td>
        <td>Advance directives = is a concept. Living will (what you want), medical power of attorney (who speaks), combined living will and medical power of attorney. These documents have several names depending on where you are. “Advance directives” is the general term that people use to refer to all of these documents as a concept.</td>
    </tr>
    <tr>
        <td>Advance directives</td>
        <td>Advance directive = People have used “advance directive” to refer to any of these documents in the singular, e.g., instead of saying “living will,” someone will generally, abstractly refer to the document as “an advance directive.”</td>
    </tr>
    <tr>
        <td>ADI</td>
        <td>Advance Directive Interoperability</td>
    </tr>
</table>

<!-- Old material. Holding temporarily untilinitial final draft.
### Advance Directive Interoperability
<p>[TODO ]


Advance directive documents are documents that people have traditionally used to express their medical treatment wishes. Advance directives typically consist of two documents – the “living will,” and the “durable medical power of attorney.” A Living Will documents if a person wants “life-sustaining treatments” or not, (e.g., artificial nutrition or hydration, dialysis or the use of a ventilator to help with breathing) should that person suffer a medical emergency and be unable to communicate with the care team. A person uses a medical power of attorney to appoint one or more people to serve as advocates or “healthcare agents” empowered to make medical treatment decisions on behalf of the person if he or she is incapacitated and cannot communicate with medical providers. The Living Will provides information that helps the healthcare agent make treatment decisions on the person’s behalf.<br/>
Healthcare is evolving towards the use of advance care planning and advance care plans and moving away from legal transactional approaches to advance directives. A Personal Advance Care Plan (PACP) is a standard document used to exchange personal advance care planning information authored by the patient. The advance care plan addresses some unknown future time when certain circumstances might arise. It expresses the patient’s goals, preferences, and priorities for care and treatment under those specific circumstances. The statements made in the advance care plan don’t impact care directly. They inform decision-makers who made want to take the person’s goals, preferences, and priorities into consideration should the need arise to make medical treatment decisions on the person’s behalf.</p>
<p>When a person is about to undergo an operation where they will be sedated, or about to have an inpatient stay, or a stay at a nursing or rehab care facility, care providers may ask a patient to make decisions about medical treatments they do or do not want should a circumstance arise when this choice would need to be taken into consideration. A patient may make these decisions for his or her self, or if the patient cannot make these decisions, the healthcare agent may decide. These medical treatment decisions are made in the present. They are instructions provided by the patient or a surrogate decision-maker. These instructions are closely related to advance directives, in that they say, if x happens, then do y. Or, if x happens, do not do y. For this reason, they are often recorded with a person’s advance directives. However, they are not advance directives because they represent treatment instructions that have, in fact, been given by the patient or their healthcare agent. These instructions are considered obligation or prohibition instructions, provided by the patient or the surrogate decision-maker, for the benefit of care providers. Providers involved in care delivery still need to make a judgement call as to whether or not x is happening before they decide if they should do y or not.<br/>
A portable medical order is a document that tells other healthcare professionals the medical orders for life-sustaining treatment for a patient. Portable medical order documents are authored by physicians, not patients. They do not document goals, preferences and priorities that a patient intends to be used as guidance when making care decisions. They document medical treatment intervention decisions that already have been made and are currently in place to guide care delivery.</p>


### Expected Users
<p>[TODO]

Systems used to create and update patient-generated advance directive information through a patient-directed process need a way for individuals to communicate information about their advance medical care goals, preferences, and priorities.</p>

<p>Individuals need a way to generate and update information related to their advance directives so that their current wishes can inform provider-generated care plans.</p>

<p>Interoperable exchange of the advance directive information supports more effective sharing of advance directive information across transitions in care and enables practitioners to create person-centered care plans that align with a patient’s values, goals of care, treatment preferences, and quality of life priorities when a patient cannot communicate for themselves.</p>
-->

<!--
### Content and Organization
TODO
<p>The implementation guide is organized into the following sections:</p>
<ul>
  <li><a href="advance_directive_use_case.html">Use Case Example</a> Describes an example of its use and provides a high-level overview of expected process flow.</li>
  <li><a href="underlying_technologies.html">Underlying Technologies</a> Describes the different specifications this implementation guide relies on and indicates what developers should read and understand prior to implementing this specification.</li>
  <li><a href="profile_highlights_and_guidance.html">Profile Highlights and Guidance</a> Provides a closer look at the IG profiles and guidance for constructing profile instances with examples for data exchange.</li>
  <li><a href="security_and_data_sharing.html">Security and Data Sharing</a> Covers issues concerning security and patient information access and sharing.</li>
  <li><a href="artifacts.html">Artifacts Summary</a> Introduces and provides links to the Capability Statement, IG Resource Profiles, and IG Extension Definitions as well as example profile instances.</li>
</ul>
-->

### Dependencies
<p>This implementation guide relies on the following other specifications:</p>
<ul>
  <li><a href="http://hl7.org/fhir/R4/">FHIR R4</a> - The version of FHIR used as the base for this implementation guide.</li>
  <li><a href="http://hl7.org/fhir/us/core/STU3.1.1/index.html">US Core STU3.1</a> - The version of US Core based on FHIR R4.</li>
  <!--<li><a href="http://hl7.org/fhir/us/ccda/STU1.1/index.html">C-CDA on FHIR STU1.1</a> - The version of C-CDA on FHIR based on FHIR R4.</li>-->
</ul>


### ADI Profiles

<p>Table: ADI Profiles</p>
<table border="1" style="border-spacing: 100px;">
    <tr>
        <th colspan="4" style="background-color: #DEEBF7; text-align:center; padding: 10px; padding: 10px;"><b>CONTENT TYPE I: Advance Directives Information</b> <i>(in STU1 scope)</i></th>
    </tr>
    <tr style="background-color: #D9D9D9;">
        <th style="padding: 10px;" colspan="2"><b>Name of Profile to be developed</b></th>
        <th style="padding: 10px;"><b>Short description</b></th>
        <th style="padding: 10px;"><b>Based On</b></th>
    </tr>
    <tr>
        <td style="padding: 7px;">1</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-DocumentReference.html">ADI Document Reference</a></td>
        <td style="padding: 7px;"><p>This profile defines constraints that represent the information needed to register an advance directive information document on a FHIR server.</p>
        <p><i>Development status: Initial draft available. Mapping in progress.</i></p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/us/core/STU3.1.1/StructureDefinition-us-core-documentreference.html">US Core DocumentReference</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">2</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-Header.html">ADI Header</a></td>
        <td style="padding: 7px;"><p>This profile defines constraints that represent common administrative and demographic concepts for advance directives information used in US Realm clinical documents.</p>
        <p>Known issues:
            <ul>
                <li>Currently extension:data_enterer_extension only allows reference to US Core Practitioner Profile | US Core PractitionerRole Profile.  Need to add RelatedPerson to CDA on FHIR of use.</li>
                <li>Currently extension:information_recipient_extension allows reference to US Core Practitioner Profile | US Core PractitionerRole Profile | US Core Patient Profile.  Need to add  RelatedPerson and US Core Organization.</li>
                <li>Currently attester:legal_attester.party--> allows reference to US Core Practitioner Profile | US Core PractitionerRole Profile.  Need to add  RelatedPerson and US Core Organization.</li>
            </ul>
        </p>
        <p><i>Development status: Initial draft available. Initial Mapping complete.</i></p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/clinicaldocument.html">ClinicalDocument</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">3</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-PACPComposition.html">ADI Personal Advance Care Plan Composition</a></td>
        <td style="padding: 7px;"><p>This profile encompasses information that makes up the author’s advance care information plan.</p>
        <p><i>Development status: Initial draft available. Initial Mapping complete.</i></p></td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-Header.html">ADI Header</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">4</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-HealthcareAgent.html">ADI Healthcare Agent</a></td>
        <td style="padding: 7px;"><p>This profile represents a person's appointment of a healthcare agent.</p>
        <p><i>Development status: Initial draft available. Initial Mapping complete.</i></p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/relatedperson.html">RelatedPerson</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">5</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-HealthcareAgentAuthority.html">ADI Healthcare Agent Authority</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent a power or limitation granted to a person acting as a healthcare agent.</p>
        <p><i>Development status: Not started.</i></p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/consent.html">Consent</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">6</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-PMOLSTObservation.html">ADI PMOLST Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to indicate if a person has a medical order or physician order for life sustaining treatment (MOLST or POLST).</p>
        <p><i>Development status: Initial draft available. Initial Mapping complete.</i></p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">7</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-PersonalInterventionPreference.html">ADI Personal Intervention Preference</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent a personal preference for a type of medical intervention (treatment).</p>
        <p><i>Development status: Mapping in Progress.</i></p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">8</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-OrganDonationObservation.html">ADI Organ Donation Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent the author's thoughts about organ donation.</p>
        <p><i>Development status: Initial draft available. Initial Mapping complete.</i></p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">9</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-AutopsyObservation.html">ADI Autopsy Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent the author's thoughts about autopsy.</p>
        <p><i>Development status: Initial draft available. Initial Mapping complete.</i></p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">10</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-PersonalPrioritiesOrganizer.html">ADI Personal Priorities Organizer</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent a set of personal goals, preferences or care experiences in a preferred ranked order.</p>
        <p><i>Development status: Initial draft available. Initial Mapping complete.</i></p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/list.html">List</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">11</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-CareExperiencePreference.html">ADI Care Experience Preference</a></td>
        <td style="padding: 7px;"><p>This profile is a clinical statement that presents the author's personal thoughts about something he or she feels is relevant to his or her care experience and may be pertinent when planning his or her care.</p>
        <p><i>Development status: Initial draft available. Initial Mapping complete.</i></p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">12</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-PersonalHealthGoal.html">ADI Personal Health Goal</a></td>
        <td style="padding: 7px;"><p>This profile is a statement that presents the author's personal health goals that are pertinent when planning his or her care.</p>
        <p><i>Development status: Initial draft available. Initial Mapping complete.</i></p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">13</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-Guardian.html">ADI Guardian</a></td>
        <td style="padding: 7px;"><p>This profile will show a relationship to a ward.</p>
        <p><i>Development status: Not started.</i></p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/relatedperson.html">RelatedPerson</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">14</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-ConsentForHealthcareAgent.html">ADI Consent for Healthcare Agent</a></td>
        <td style="padding: 7px;"><p>This profile is used for the healthcare agent to consent/express acceptance of being appointed as the agent for the patient.</p>
        <p><i>Development status: Not started.</i></p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/consent.html">Consent</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">15</td>
        <td style="padding: 7px;"><a href="StructureDefinition-PADI-Provenance.html">ADI Provenance</a></td>
        <td style="padding: 7px;"><p>[TODO] This profile is used for tracking the provenance of the Advance Directive resources.</p>
        <p><i>Development status: Mapping in Progress.</i></p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/us/core/STU3.1.1/StructureDefinition-us-core-provenance.html">US Core Provenance</a></td>
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
        <td style="padding: 7px;">16</td>
        <td style="padding: 7px;"><a href="#">ADI Obligation Instruction</a></td>
        <td style="padding: 7px;"><p>This profile always expresses activities that care providers have been instructed to perform.</p>
        <p><i>Development status: planned post STU1</i></p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/consent.html">Consent</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">17</td>
        <td style="padding: 7px;"><a href="#">ADI Prohibition Instruction</a></td>
        <td style="padding: 7px;">This profile always expresses activities that care providers have been instructed not to perform.</p>
        <p><i>Development status: planned post STU1</i></p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/consent.html">Consent</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">18</td>
        <td style="padding: 7px;"><a href="#">Advance Directives Organizer</a></td>
        <td style="padding: 7px;"><p>This profile groups a set of advance directive observations documented together at a single point in time, and relevant during the episode of care being documented.</p>
        <p><i>Development status: planned post STU1</i></p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/list.html">List</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">19</td>
        <td style="padding: 7px;"><a href="#">ADI Advance Directives Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to record information about a document authored by the person and containing goals, preferences, and priorities for care.</p>
        <p><i>Development status: planned post STU1</i></p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">20</td>
        <td style="padding: 7px;"><a href="#">ADI Advance Care Planning Intervention</a></td>
        <td style="padding: 7px;"><p>This profile is used to record a planned intervention that will involve reviewing and verifying a person’s directives, or will involve educating and supporting a person on establishing or modifying his or her advance directives.</p>
        <p><i>Development status: planned post STU1</i></p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/us/core/STU3.1.1/StructureDefinition-us-core-procedure.html">US Core Procedure</a></td>
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
        <td style="padding: 7px;"> </td>
        <td style="padding: 7px;">Not yet specified</td>
        <td style="padding: 7px;"></td>
        <td style="padding: 7px;"></td>
    </tr>
    <tr>
        <td style="padding: 7px;">21</td>
        <td style="padding: 7px;">ADI Consent for Portable Medical Orders</td>
        <td style="padding: 7px;"><p>This profile is used to express the patient’s or healthcare agent consent that is not bound by an encounter.</p>
        <p><i>Development status: planned post STU1</i></p></td>
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
        <td style="padding: 7px;"><p>This profile is used to expresses the patient’s or healthcare agent consent to share Advance Directive information with others</p>
        <p><i>Development status: planned post STU1</i></p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/consent.html">Consent</a></td>
    </tr>
</table>
