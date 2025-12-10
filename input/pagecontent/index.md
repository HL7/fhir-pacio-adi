The Advance Healthcare Directive Interoperability (ADI) FHIR implementation guide (IG) explains how to represent, exchange, and verify a person’s goals, preferences and priorities for medical treatment and interventions regarding future medical care. It also explains how to represent a person’s appointment of one or more healthcare agents who can make care decisions for the patient if the patient can’t communicate. 

<blockquote class="stu-note">
    <p>
    This is a preliminary draft of STU2, which includes support for portable medical orders (PMO) for life-sustaining treatment building upon STU1, which supported only Person-Authored Advance Directives documents. Future versions of this IG will address encounter-centric patient instructions.
    </p>
</blockquote>

### Introduction 

This ADI Implementation Guide (IG) describes how to use existing HL7 FHIR standards to create, update, share, verify, and exchange information about an individual's advance healthcare goals, preferences, and priorities for care in the event the individual is unable to communicate this information to medical teams for themselves due to a health crisis.  The term "advance healthcare directive" in this IG does not refer to a specific form, document, or method of memorializing advance healthcare directives, but is instead representative of an over-arching category.

Advance healthcare directives can be categorized into three types of information.  The current version of this guide addresses Person-Authored medical Advance Healthcare Directive Information and Provider-Authored PMO.

Included in the content for this FHIR IG as part of person-authored advance directives are jurisdictional advance directives such as living wills and durable medical power of attorney documents, as well as the more detailed and personalized documents known as advance care plans.  Along with documentation of a person's care experience and treatment intervention preferences, a person's consent information attesting to their designation of an individual, or individuals, to serve as their healthcare agent or surrogate is also found in this IG.

Included in the content for this FHIR IG as a part of PMOs are jurisdictional advance healthcare directive documents commonly known as POLST, MOLST, and other derivatives of those terms as well as another category of practitioner-authored documents known as Do Not Resuscitate (DNR), Out of Hospital DNR, Do Not Hospitalize (DNH), and other derivatives of those terms.

Subsequent versions of this guide will address another type of Person-Authored Advance Healthcare Directives for behavioral health, known as Mental Health or Psychiatric Advance Directives.  It will also address Content Type 2 for Encounter-Centric Patient Instructions where prohibitions and obligations are captured by the medical team that are stated or issued by the patient, which only apply to that encounter.

### Background

Advance healthcare directive interoperability is a complex area that involves many stakeholders.  The HL7 workgroup sponsor for this FHIR IG is Patient Empowerment.  HL7 co-sponsor workgroups include Patient Care, Orders & Observations, and Community Based Care and Privacy.  As part of the Post-Acute Care Interoperability's (PACIO) main goal in improving care transitions, the PACIO Community has adopted this project as a critical use case.  The PACIO Community and sponsoring workgroups have a strong interest in the topic of advance healthcare directive interoperability with FHIR, and will support the community engagement and technical FHIR IG development needed for advance healthcare directive interoperability.  PACIO is supported by MITRE, CMS, ASTP/ONC, and many other stakeholders (clinical, technical, and industry associations).

FHIR profiles have been developed for several existing FHIR resources to represent person-authored advance healthcare directives for concepts such as living will, durable medical power of attorney, personal health goals, care experience preferences, treatment intervention preferences, and upon death preferences.  For more details on advance healthcare directive interoperability and the content types within scope of this IG, refer to the General Guidance section of this IG.

### Project Need
<p>
Systems used to create and update patient-generated advance care plans through a patient-directed process need a way for individuals to communicate information about their advance medical care goals, preferences, and priorities. Individuals need a way to generate and update information related to their advance directives so that their current wishes can inform provider-generated care plans. Interoperable exchange of the advance directive documentation supports more effective sharing of this information across transitions of care and enables practitioners to create person-centered care plans that align with a patient’s values, goals of care, treatment preferences, and quality of life priorities when a patient can no longer communicate for themselves.
</p>

### External drivers

**NOTE:** This IG was initially developed during the beginning of the COVID-19 pandemic, as our healthcare system was incredibly stressed out by the high acuity, high volume, reduced workforce and thinly stretched resources that our nation (the world) experienced. We know from reviewing that unique time in history that many patients were put on ventilators at hospitals, and that people were triaged and treated as quickly as our healthcare system could manage, yet without the personalization of care that we strive to achieve in our country.  The narrative below is meant to illustrate a situation where a patient would want their advance healthcare directive in place.

The aging population receiving healthcare in skilled nursing facilities, assisted living communities, and other types of senior living settings were under forced isolation to reduce the risk of contracting, or spreading, COVID-19.  Additionally, due to the pandemic, those requiring medical care experienced transitions of care without a family member or personal advocate to accompany them in order to influence the medical care provided or even just to be at the patient's side. Concerns about the potential viral transmission of paper advance healthcare directive documents further complicated transitions of care and communication of those important treatment preferences.  The impact was a sense of disempowerment, isolation, and a disconnection with the world they could no longer safely interact freely with.

Never before had the availability of verifiable digital advance healthcare directive information and documents been so essential to delivering care.

Providers understood that a person's goals, preferences, and priorities for care were critical elements in person-centered care delivery.  The need to modernize this aspect of the healthcare system was paramount to moving to the personalization that patients, regulators, payers, and families demanded.

The role of technology and expanded adoption by those desiring personalized care, providers who wanted to deliver goal-concordant care, and the care teams who were focused on what mattered and what was important to the people they cared for brought to the forefront an expectation of seamless digital accessibility of advance healthcare directive information.

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
    <li>Table of Contents: A list of the narrative pages and FHIR artifacts in the IG.</li>
    <li>General Guidance: These pages provide overall guidance in using the profiles and transactions common to all ADI content types. 
        <ul>
            <li>Content Type Overview: Content types provide a clear distinction for the three types of advance directive information. A detailed description of each type is provided.</li>
            <li>Patient Stories and Personas: Patient stories and personas give context to the data exchange standards detailed in the technical areas of the IG. They allow the non-technical reader to envision situations in which the IGs provisions would apply, and ensure that the IG meets the intended needs for exchange of this type of information.</li>
            <li>Use Cases: A use case is a list of technical actions or event steps typically defining the interactions between a role and a system to achieve a goal. The actor can be a human or other external system. Technical scenarios that describe systems interactions between technical actors to implement the use case.</li>
            <li>General Guidance: Information about the structure and relationships between the profiles in this guide.</li>
            <li>Formal Specification: Information about conformance to the guide including Must Support requirements, document signatures, and document workflow.</li>
            <li>Security: General security requirements and recommendations for HL7 FHIR® ADI Implementation Guide actors, including authentication, authorization, and logging requirements and guidance.</li>
            <li>Key Terms and Acronyms: A glossary of relevant terms described in advance directives.</li>
        </ul>
    </li>
    <li>Person-Authored: These sections provide the use cases and additional guidance specific to person-authored advance care plan (Personal ACP) and mental health advance directive (MHAD) documents.
        <ul>
            <li>Personal ACP User Stories</li>
            <li>Personal ACP Specification Guidance</li>
            <li>MHAD User Stories</li>
            <li>MHAD Specification Guidance</li>
        </ul>
    </li>
    <li>Portable Medical Orders: These sections provide the use cases and additional guidance specific to portable medical order (PMO) documents.
        <ul>
            <li>PMO User Stories</li>
            <li>PMO Specification Guidance</li>
        </ul>
    </li>
    <li>FHIR Artifacts: These sections provide detailed descriptions and formal definitions for all the FHIR artifacts defined in this guide.
        <ul>
            <li>Profiles: This section lists the set of Profiles that are defined in this guide to exchange advance directive information. Each linked Profile page includes a narrative introduction and a formal definition.</li>
            <li>Extensions: This section lists the set of Extensions that are defined in this guide that are used by the IG defined profiles. Each linked Extension  page includes a formal definition.</li>
            <li>Search Parameters and Operations: This section lists the HL7 FHIR® ADI Implementation Guide defined Operations and Search Parameters that are used in ADI transactions.</li>
            <li>Terminology: This section lists the value sets and code system defined for HL7 FHIR® ADI Implementation Guide profiles.</li>
            <li>Capability Statement: The following artifacts define the specific capabilities that different types of systems need to support to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the included capability statements.</li>
            <li>Examples: The section that contains examples of advance healthcare directive information that is conformant to the profiles of this guide.</li>
        </ul>
    </li>
    <li>Release Notes: A summary of changes from the PACIO ADI STU1 release.</li>
    <li>Downloads: This page provides links to downloadable artifacts.</li>
</ul>

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### Intellectual Property Considerations

{% include ip-statements.xhtml %}
