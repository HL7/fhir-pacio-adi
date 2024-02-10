The Advance Directive Interoperability (ADI) FHIR implementation guide (IG) explains how to represent, exchange, and verify a person’s goals, preferences and priorities for medical treatment and interventions regarding future medical care. 

<blockquote class="stu-note">
    <p>
    This is a preliminary draft of STU2, which includes support for portable medical orders for life-sustaining treatment, Content Type 3. This builds upon STU1, which supported only Person-authored Advance Directives (ADI Content Type 1) documents. Future versions of this FHIR IG will address encounter-centric patient instructions, Content Type 2.
    </p>
</blockquote>

### Introduction 
<p>
This ADI implementation guide (IG) describes how to use existing HL7 FHIR® standards to create, update, share, verify, and exchange information about an individual's advance medical goals, preferences, and priorities for care in the event the individual is unable to communicate this information to medical teams for themselves due to a health crisis. The term “advance directive” in this IG does not refer to a specific form, document, or method of memorializing advance healthcare decisions, but is instead an over-arching category.
</p>

<p>
Advance healthcare directives can be categorized into <a href="content_type_overview.html#adi-content-types">three types of information</a>. The current version of this guide addresses Content Type I: Person-Authored Advance Directive Information. Subsequent versions of this guide will address the other two types; Content Type 2: Encounter-Centric Patient Instructions (obligations and prohibitions) and Content Type 3:  Portable Medical Orders for Life-Sustaining Treatment.
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

Advance directive interoperability is a complex area that involves many stakeholders. The HL7 workgroup sponsor for this FHIR IG is Patient Empowerment. HL7 co-sponsor workgroups include Patient Care, Community Based Care and Privacy, and Orders & Observations. As part of PACIO’s main goal in improving care transitions, the Post-Acute Care Interoperability (PACIO) Community has adopted this project as a critical use case. The PACIO Community has a strong interest in the topic of advance directive interoperability with FHIR and will support the community engagement and technical FHIR IG development needed for advance directives interoperability. PACIO is supported by MITRE, CMS, ONC and many other stakeholders (clinical, technical, and industry associations).

FHIR profiles have been developed for several existing FHIR resources to represent advance directive Content Type 1 such as: living will, durable medical power of attorney, personal health goals at end of life, care experience preferences, emergency intervention preferences under certain circumstances, and upon death preferences. For more details on advance directive interoperability and content types, refer to the General Guidance section of this IG.

### Project Need
<p>
Systems used to create and update patient-generated advance care plans through a patient-directed process need a way for individuals to communicate information about their advance medical care goals, preferences, and priorities. Individuals need a way to generate and update information related to their advance directives so that their current wishes can inform provider-generated care plans. Interoperable exchange of the advance directive documentation supports more effective sharing of this information across transitions of care and enables practitioners to create person-centered care plans that align with a patient’s values, goals of care, treatment preferences, and quality of life priorities when a patient can no longer communicate for themselves.
</p>

### External drivers

**Note:** The IG was initially developed during the beginning of the COVID-19 pandemic, before vaccines were available and many patients were put on ventilators at hospitals. The narrative below is meant to illustrate a situation where a patient in this case would want their advance directive in place.

The aging population receiving healthcare in skilled nursing facilities and assisted living communities were under forced isolation to reduce the risk of contracting COVID-19. Additionally, due to the pandemic, those requiring medical care  experienced transitions of care without family or a personal advocate to accompany them in order to influence medical care or be at their side; concerns about the viral transmission potential associated with paper advance directive documents further complicate transitions of care. The impact created a sense of disempowerment, isolation, and a disconnection with the world they can no longer safely interact freely with.

<p>
Never before had the availability of verifiable digital advance directive documents been so essential to delivering care.
</p>
<p>
Providers understood that a person’s goals, preferences, and priorities for care were a critical element in a person-centered healthcare system.
</p>
<p>
The role of technology and expanded adoption by the aging population, providers, and care teams brought to the forefront the expectation of seamless accessibility of advance directive information.
</p>

### Audience/Expected Users
<p>
The audience for this IG includes architects and developers of healthcare information technology (HIT) systems in the US Realm that exchange clinical and non-clinical data. Business analysts and policy managers can also benefit from a basic understanding of the use of FHIR profiles across multiple implementation use cases. Finally, Quality Reporting Agencies, Standards Development Organizations (SDOs), Payors, Providers and Patients will benefit from this IG.
</p>

### About the PACIO Project
<p>
The PACIO Project is a collaborative effort to advance interoperable health data exchange between post-acute care (PAC) and other providers, patients, and key stakeholders across health care and to promote health data exchange in collaboration with policy makers, standards organizations, and industry through a consensus-based approach.
</p>
<p>
The primary goal of the PACIO Project is to establish a framework for the development of Fast Healthcare Interoperability Resources (FHIR) technical implementation guides and reference implementations that will facilitate health data exchange through standards-based use case-driven application programming interfaces (APIs).
</p>


### How to read this Guide
This Guide is divided into several pages which are listed at the top of each page in the menu bar.
<ul>
    <li>Home: The home page provides the introduction and background information to set context for the use of the HL7 FHIR® ADI Implementation Guide.</li>
    <li>Guidance: These pages provide overall guidance in using the profiles and transactions defined in this guide by detailing the patient stories and personas and use cases.
        <ul>
            <li>Content Type: Content types provide a clear distinction for the three types of advance directive information. A detailed description of each type is provided.</li>
            <li>Patient Stories and Personas: Patient stories and personas give context to the data exchange standards detailed in the technical areas of the IG. They allow the non-technical reader to envision situations in which the IGs provisions would apply, and ensure that the IG meets the intended needs for exchange of this type of information.</li>
            <li>Use Cases: A use case is a list of technical actions or event steps typically defining the interactions between a role and a system to achieve a goal. The actor can be a human or other external system. Technical scenarios that describe systems interactions between technical actors to implement the use case.</li>
            <li>General Guidance: Information about the structure and relationships between the profiles in this guide.</li>
            <li>Formal Specification: Information about conformance to the guide including Must Support requirements, document signatures, and document workflow.</li>
            <li>Security: General security requirements and recommendations for HL7 FHIR® ADI Implementation Guide actors, including authentication, authorization, and logging requirements and guidance.</li>
            <li>Key Terms and Acronyms: A glossary of relevant terms described in advance directives.</li>
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

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### Intellectual Property Considerations

{% include ip-statements.xhtml %}
