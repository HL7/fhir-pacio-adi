[//]: #  ## Introduction

<p>
This FHIR implementation guide (IG) defines the minimum conformance requirements for representing Personal Advance Care Plan (PACP) data.  It is based on <a href="http://hl7.org/fhir/us/core/STU3.1.1/index.html">US Core 3.1.1</a>, <a href="http://hl7.org/fhir/us/ccda/STU1.1/index.html">C-CDA on FHIR 1.1.0</a>, and <a href="http://hl7.org/fhir/R4/">FHIR R4</a>.
</p>

<p>
Advance directives information is a complex area that involves many stakeholders. The HL7 sponsor for this IG is Patient Empowerment.  Co-sponsors include Patient Care, Community Based Care and Privacy, and Orders & Observations.  In order to reach out to a broader community, the Post-Acute Care Interoperability (PACIO) Community has adopted this IG as a project use case.  The PACIO Community has a strong interest in the topic of advance directives and will support the community engagement and technical FHIR IG development needed for advance directives interoperability. PACIO is supported by MITRE, CMS, ONC and many other stakeholders (clinical, technical, and industry associations).
</p>

<p>
FHIR profiles will be developed for several existing FHIR resources to represent advance directive content such as: living will, durable medical power of attorney, personal health goals at end of life, care experience preferences, patient instructions (obligation, prohibitions, and consent), and portable medical orders for life sustaining treatments.
</p>
<p>
The current version of this FHIR IG covers the use of RESTful API interactions for creating, sharing, query/access, and verification of advance directive information between systems.  It is intended to address advance directive interoperability needs where the author is the individual that is making medical intervention goals, preferences, priorities known in advance.  This IG is not intended to cover medical intervention goals, preferences, priorities for individuals who are not able to make their own wishes known.
</p>
<p>
Future versions of this FHIR IG will address encounter-centric patient instructions and portable medical orders for life-sustaining treatment
</p>

### Advance Directive Interoperability (ADI) Project Need
<p>
Systems used to create and update patient-generated advance care plans through a patient-directed process need a way for individuals to communicate information about their advance medical care goals, preferences, and priorities. Individuals need a way to generate and update information related to their advance directives so that their current wishes can inform provider-generated care plans. Interoperable exchange of the advance directive information supports more effective sharing of advance directive information across transitions of care and enables practitioners to create person-centered care plans that align with a patient’s values, goals of care, treatment preferences, and quality of life priorities when a patient can no longer communicate for themselves.
</p>

### External drivers
<p>
The aging population receiving healthcare in skilled nursing facilities and assisted living communities have been under forced isolation to reduce the risk of contracting COVID-19.  Additionally, due to the pandemic, those requiring medical care have found themselves during a transition of care without family or personal advocate to accompany them to influence medical care or be at their side; concerns about the viral transmission potential associated with paper advance directive documents further complicate transitions of care. The impact is a sense of disempowerment, isolation, and a disconnection with the world they can no longer safely interact freely with.  
</p>
<p>
Never before has the availability of verifiable digital advance directive information been so essential to delivering care.
</p>
<p>
The role of technology and expanded adoption by the aging population, providers, and care teams has brought to the forefront the expectation of seamless accessibility of advance directive information.  An increased understanding exists that a person’s goals, preferences, and priorities for care are a critical element in a person-centered healthcare system.
</p>

###	Audience
<p>
The audience for this IG includes architects and developers of healthcare information technology (HIT) systems in the US Realm that exchange clinical and non-clinical data. Business analysts and policy managers can also benefit from a basic understanding of the use of  FHIR profiles across multiple implementation use cases. Finally, Quality Reporting Agencies, Standards Development Organizations (SDOs), Payors, Providers and Patients could benefit from this IG. 
</p>

## How to read this Guide
This Guide is divided into several pages which are listed at the top of each page in the menu bar.
<ul>
    <li>Home: The home page provides the introduction and background information to set context for the use of the HL7 FHIR® ADI Implementation Guide.</li>
    <li>Guidance: These pages provide overall guidance in using the profiles and transactions defined in this guide.</li>
    <ul>
        <li>General Guidance provides guidance, definitions and requirements common to all HL7 FHIR® ADIImplementation Guide actors used in this guide.</li>
        <li>Advance Directive Information Guidance gives guidance on the interactions between Consumers and Producers of Advance Directives Information.</li>
        <li>Encounter-Centric Patient Instructions Guidance gives guidance on the interactions between Consumers and Producers of Encounter-Centric Patient Instructions.</li>
        <li>Portable Medical Order for Life-Sustaining Treatment Guidance gives guidance on the interactions between Consumers and Producers of Portable Medical Orders for Life-Sustaining Treatment.</li>
    </ul>
    <li>FHIR Artifacts: These pages provide detailed descriptions and formal definitions for all the FHIR objects defined in this guide.</li>
    <ul>
        <li>Profiles and Extensions: This page lists the set of Profile and Extension that are defined in this guide to exchange quality data. Each Profile page includes a narrative introduction, formal definition and a “Quick Start” guide to the supported search transaction for each HL7 FHIR® ADI Implementation Guide Profile.</li>
        <li>Search Parameters and Operations: This page lists the HL7 FHIR® ADI Implementation Guide defined Operations and Search Parameters that are used in ADI transactions.</li>
        <li>Terminology: This page lists the value sets and code system defined for HL7 FHIR® US Core Implementation Guide profiles.</li>
        <li>Capability Statements: This set of pages describes the expected FHIR capabilities of the various HL7 FHIR® US Core Implementation Guide actors.</li>
    </ul>
    <li>Security: General security requirements and recommendations for HL7 FHIR® ADI Implementation Guide actors.</li>
    <li>Examples: List of links to all the examples used in this guide.</li>
    <li>Downloads: This page provides links to downloadable artifacts.</li>
</ul>

## Key Terms and Acronyms 

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
        <p>Personas used to model, summarize and communicate research about people who have been observed or researched in some way. A persona is depicted as a specific person but is not a real individual; rather, it is synthesized from observations of many people.</p></td>
    </tr>
    <tr>
        <td>Use case</td>
        <td>A use case is a list of technical actions or event steps typically defining the interactions between a role and a system to achieve a goal. The actor can be a human or other external system.Technical scenarios that describe systems interactions between technical actors to implement the business case.</td>
    </tr>
    <tr>
        <td>ADI</td>
        <td>Advance directive interoperability</td>
    </tr>
</table>
