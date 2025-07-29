### ADI Content Type 1 Document Structure - Patient-authored Advance Care Plan (PACP)

The ADI Content Type 1 document defines 7 sections:
1. Healthcare Agent - Healthcare agents, healthcare agent advisors, behavioral healthcare agents, and consent by the subject regarding the stated designees’ roles, powers, and limitations.
2. Goals, Preferences, and Priorities for Certain Conditions – Preferences to be used in treatment or care planning that express a person’s goals, preferences, and priorities for care to be considered under specific situations or conditions.
3. Goals, Preferences, and Priorities Personal Care Experience – Characteristically these concepts express a person’s priorities for Quality of Life and the related care delivery experiences, personal goals, and preferences for that experience, which can be further grouped and placed into a Personal Priorities Organizer.
4. Goals, Preferences, and Priorities Upon Death - Goals, preferences, and priorities a person expresses for those events that occur at the time of, or soon after, their death.
5. Additional Documentation - Observations regarding the existence of other advance directive related information.
6. Witness & Notary - References and information regarding witnesses and notary.
7. Administrative Information - Administrative information associated with the personal advance care plan and/or advance directive information.

<p align="center">
    <img src="./document_structure_adi_pacp.jpg" alt="Person-authored Advance Directive Document Structure" style="width: 100%; float: none; vertical-align: middle;"/>
</p>

The content in these categories of advance directive could include, but are not limited to:
* Healthcare agent designation
* Antibiotics administration preference
* Artificial nutrition and hydration administration preference
* Intubation and ventilation procedure preference
* Resuscitation procedure preference
* Diagnostic testing procedure preference
* Preferences relating to palliative and supportive care
* Preferences relating to hospice care at the end of life
* Organ donation preference
* Death arrangement preference
* Religious, spiritual, cultural or faith-based values that are important to the individual receiving care
* Specific individuals or contacts to notify, likes & joys, dislikes & fears, and various messages or information to be made available

Content type 1 also includes identifying the presence of any type of Portable Medical Order (PMO) such as a POLST or MOLST, and orders such as Do Not Resuscitate (DNR) orders. It also includes identifying other types of person-authored ADI that might exist outside of the document being reviewed.  It does not include the specifics of the structured information content of other PMO and/or DNR documents, but instead creates awareness as to the presence of the documents.


#### Example Persona

Betsy Smith-Johnson is a 73 year-old female who lived in Texas. In 2015, just before her 65th birthday, she saw her Primary Care Physician (PCP) in Texas who recommended she complete an Advance Directive before her upcoming Annual Wellness Visit.  She completed a paper Texas Living Will form by hand and obtained the wet signatures of two witnesses, which she then uploaded to her account in a consumer-facing application, MyExampleAD.

Betsy uses a consumer facing tool to create a digital advance directive or upload a scanned copy of her paper advance directive document. This tool may integrate with any customer-facing application, including but not limited to an EHR or a specialized care application. Her interoperable digital advance directive information is made available by being stored in a registry/repository/HIE/QHIN/EHR.

Betsy then shares her advance directive information with her son Charles, her primary healthcare agent (HCA) her daughter Debra, her first Alternate HCA, and her primary care physician via the MyExampleAD application. That way, if either Charles or Debra are contacted by a treating provider in an emergency, they can make her advance directive accessible to inform treatments. 


**NOTE:** This IG makes no comment as to how EHRs should be architected, as this is beyond the scope of a FHIR implementation guide.

#### Workflow Representation

<img src="./type1_patient_story_1a.svg" alt="Patient Story 1a" style="width: 100%; float: none; align: middle;"/>
<br clear="all" />

#### FHIR Representation

The example AD document for Betsy Smith-Johnson is represented as a [here](Bundle-Example-Smith-Johnson-PACP-Bundle1.html). 

