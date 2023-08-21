The following sections note further guidance and rationale from the original balloted version of the ADI FHIR IG in January 2022, to the published release. Although this is a first publication for the ADI FHIR IG, the authors identified the need to identify changes made throughout the ballot reconciliation process as further guidance to implementers who have adopted the original balloted version.

### Care Experiences and Goals

After extensive conversations with multiple stakeholders in the implementer and HL7 community, it has been determined Care Experience Preferences and Personal Intervention Preferences are not an individual’s Goals, but rather are ‘simple’ Observations of a patient's preferences. The preference in this instance of advance directive information are specific to Patient Authored Advance Directive Information-about a potential future event (ADI Type I). Further, these preferences are made about a possible future event that may or may not occur and with circumstances that are not known. These preferences are instances of documented comments that need to be considered when an actual event occurs, and decisions need to be made about care when the patient cannot make the discussion. In addition, when considering Goal as a Resource and the requirements in US to include status, there were concerns the preferences are not “Proposed,” “Planned,” or “Accepted” because there is no current circumstance to necessitate a goal. The details above from community input to better understand these preferences informed the authors of this IG decision to use the Observation resource to share these simple assertions.

### Capability Statement

The ADI Capability Statement relaxed several elements from **SHALL** to **SHOULD**. The authors highly encourage implementers to proactively adopt the specified capabilities.


### Profile names and StructureDefinition identifiers changed from "PADI" to "ADI"

The naming convention of profile names and value sets are changed from PACIO Advance Directive Interoperability (PADI) to ADI. This clarifies that the use case extends beyond the care settings of long-term post-acute care (LTPAC) emphasized in the PACIO project.