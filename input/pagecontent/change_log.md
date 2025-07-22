### STU2 Ballot Release Notes

**The following changes occurred since the PACIO ADI [STU1 publication in January 2024](https://hl7.org/fhir/us/pacio-adi/)**

**Support for new AD document types**
* Provider-authored advance directives
  * Portable Medical Orders (PMO)
* Guidance on Mental Health Advance Directives (MHAD)
* Minimally Structured Document (MSD)
  
**Changes to STU1 based profiles**
* Closer Alignment with US Core
  * ADI Care Plan
* Specifying Jurisdictions and Healthcare Facilitators
* Specifying attester and facilitator signatures

**Integrative use cases**
* Integrative use cases and examples to demonstrate clearer use of the ADI profiles.

#### JIRA Fixes

##### Compatible, substantive Changes

* [FHIR-34472](https://jira.hl7.org/browse/FHIR-34472.html): Add example of Binary encoded document bundle and digital signature
* [FHIR-34473](https://jira.hl7.org/browse/FHIR-34473.html): Add Binary profile
* [FHIR-35568](https://jira.hl7.org/browse/FHIR-35568.html): Defining URL should be anchored in THO not hl7.org/fhir. Only those with required binding to a 'code' data type should be anchored in hl7.fhir.org.8
* [FHIR-35574](https://jira.hl7.org/browse/FHIR-35574.html): Defining URL should be anchored in THO not hl7.org/fhir.1
* [FHIR-36168](https://jira.hl7.org/browse/FHIR-36168.html): Add requirement that servers support CapabilityStatement.instantiates pointing to the included CapabilityStatement
* [FHIR-40285](https://jira.hl7.org/browse/FHIR-40285.html): Add Preference Observations for handling of body after death
* [FHIR-40374](https://jira.hl7.org/browse/FHIR-40374.html): Add "If you have it send it" requirement to Conformance Requirements
* [FHIR-40375](https://jira.hl7.org/browse/FHIR-40375.html): Add ability to express CodeableConcept in Preference CarePlan.addresses
* [FHIR-40376](https://jira.hl7.org/browse/FHIR-40376.html): Add a means to provide a location to additional documentation
* [FHIR-40561](https://jira.hl7.org/browse/FHIR-40561.html): Replace PADIConsentTypeVS with VSAC value set
* [FHIR-42104](https://jira.hl7.org/browse/FHIR-42104.html): Remove ADI Preference Care Plan reference from the GPP Upon Death section
* [FHIR-43143](https://jira.hl7.org/browse/FHIR-43143.html): Extensions are defined with context that is too broad
* [FHIR-44912](https://jira.hl7.org/browse/FHIR-44912.html): Change Personal Intervention Preference code to directly link to VSAC URL
* [FHIR-46062](https://jira.hl7.org/browse/FHIR-46062.html): versionNumber in ADI Composition and in DocumentReference should be a string
* [FHIR-46149](https://jira.hl7.org/browse/FHIR-46149.html): Update Category Coding and Type coding
* [FHIR-46151](https://jira.hl7.org/browse/FHIR-46151.html): Fix DocumentReference.date and DocumentReference.content.attachment.creation to hold the correct date information
* [FHIR-46153](https://jira.hl7.org/browse/FHIR-46153.html): Add docRevokeStatus extension to support document revocation use cases
* [FHIR-46154](https://jira.hl7.org/browse/FHIR-46154.html): Create an IG-based codeSystem for temp codes not yet granted by codeSystem Stewards
* [FHIR-46312](https://jira.hl7.org/browse/FHIR-46312.html): Add Temporary Codes CodeSystem to the IG
* [FHIR-46446](https://jira.hl7.org/browse/FHIR-46446.html): Add constraints on Attester for Person-Authored Composition Profile
* [FHIR-46475](https://jira.hl7.org/browse/FHIR-46475.html): Add constraints on Attester for Provider-Authored Composition Profile
* [FHIR-46609](https://jira.hl7.org/browse/FHIR-46609.html): PMO Composition event needs further constraints for facilitators
* [FHIR-46771](https://jira.hl7.org/browse/FHIR-46771.html): Tighten constraint on ServiceRequest.intent in Profiles for entries in the Medical Orders Section
* [FHIR-46912](https://jira.hl7.org/browse/FHIR-46912.html): Add support for expressing a Goal associated with an Initial Treatment Order
* [FHIR-46913](https://jira.hl7.org/browse/FHIR-46913.html): Need for Temporary Codes and Temporary Value Sets
* [FHIR-48856](https://jira.hl7.org/browse/FHIR-48856.html): HCA Appointment Consent needs to be grounded to LOINC 81377-4
* [FHIR-48858](https://jira.hl7.org/browse/FHIR-48858.html): Clarify Guidance on how to represent an ADI facilitator
* [FHIR-48898](https://jira.hl7.org/browse/FHIR-48898.html): ADI Composition Header relatesTo incorrectly references Composition. Should be DocumentReference
* [FHIR-48899](https://jira.hl7.org/browse/FHIR-48899.html): ADI PMO CarePlan should be removed
* [FHIR-48900](https://jira.hl7.org/browse/FHIR-48900.html): ADI Consent needs guidance for permit and deny
* [FHIR-48928](https://jira.hl7.org/browse/FHIR-48928.html): Create an ADI minimally structured document
* [FHIR-49808](https://jira.hl7.org/browse/FHIR-49808.html): Constrains need to be added to the Composition Profiles to make the attester element a Key element
* [FHIR-49914](https://jira.hl7.org/browse/FHIR-49914.html): Update Portable Medical Order Categories
* [FHIR-49981](https://jira.hl7.org/browse/FHIR-49981.html): PMO attester signature needs tighter specification and guidance
* [FHIR-50122](https://jira.hl7.org/browse/FHIR-50122.html): PMO Composition should include an ADI Decisional Capacity entry under the Administration Information section
* [FHIR-50126](https://jira.hl7.org/browse/FHIR-50126.html): ADI Personal Goal category type and description need further constraints
* [FHIR-50896](https://jira.hl7.org/browse/FHIR-50896.html): Bundle needs a profile to constrain ADI-specific profiles and elements
* [FHIR-51102](https://jira.hl7.org/browse/FHIR-51102.html): ADI Composition Header needs to specify expiration dates

##### Non-substantive Changes

* [FHIR-34471](https://jira.hl7.org/browse/FHIR-34471.html): Add example of Document Bundle with internal identifiers of UUID
* [FHIR-34806](https://jira.hl7.org/browse/FHIR-34806.html): it's really hard to understand the intended exchange patterns
* [FHIR-36659](https://jira.hl7.org/browse/FHIR-36659.html): Add better description as to the use of Contextual Value Extension
* [FHIR-40345](https://jira.hl7.org/browse/FHIR-40345.html): Consent Category binding should be on a slice
* [FHIR-40377](https://jira.hl7.org/browse/FHIR-40377.html): Add guidance on document status
* [FHIR-40378](https://jira.hl7.org/browse/FHIR-40378.html): Add more guidance on when to write vs update a document
* [FHIR-40380](https://jira.hl7.org/browse/FHIR-40380.html): Change order of sections identified in PACP Composition
* [FHIR-41491](https://jira.hl7.org/browse/FHIR-41491.html): Change reference of "Portable Medical Order for Life Sustaining Treatment" to "Portable Medical Order"
* [FHIR-41493](https://jira.hl7.org/browse/FHIR-41493.html): Support search for various known ADI document by adding details
* [FHIR-41638](https://jira.hl7.org/browse/FHIR-41638.html): Missing guidance on metadata for specifying CDA document attachments
* [FHIR-41779](https://jira.hl7.org/browse/FHIR-41779.html): Add where the advance directive came from
* [FHIR-42718](https://jira.hl7.org/browse/FHIR-42718.html): Better describe how to implement the five use cases
* [FHIR-43185](https://jira.hl7.org/browse/FHIR-43185.html): Add behavioral healthcare agent as an additional human actor
* [FHIR-43315](https://jira.hl7.org/browse/FHIR-43315.html): Include 'behavioral healthcare agents' as an additional 'Healthcare Agent'
* [FHIR-44103](https://jira.hl7.org/browse/FHIR-44103.html): Typo: The second sentence in the second paragraph should read Content Type 1 instead of Content Type I.
* [FHIR-46150](https://jira.hl7.org/browse/FHIR-46150.html): 2.	VersionNumber extension will be populated with a timestamp created when document is created in the system
* [FHIR-46158](https://jira.hl7.org/browse/FHIR-46158.html): Organize the Profiles in a more logical order for the reader
* [FHIR-46480](https://jira.hl7.org/browse/FHIR-46480.html): Capability $match missing from the RESTful Capabilities by Profile table
* [FHIR-46590](https://jira.hl7.org/browse/FHIR-46590.html): Example for DocumentReference with "DocumentReference.docStatus" = final
* [FHIR-50124](https://jira.hl7.org/browse/FHIR-50124.html): Remove all must-support sections (except for Medical Orders) from PMO Composition
* [FHIR-50125](https://jira.hl7.org/browse/FHIR-50125.html): Pt-Authored Composition Healthcare Agent Appointment section should be required

##### Non-compatible Changes

* [FHIR-36712](https://jira.hl7.org/browse/FHIR-36712.html): Remove inheritance of US Core DocumentReference from ADI Profile of DocumentReference
* [FHIR-36962](https://jira.hl7.org/browse/FHIR-36962.html): Missing guidance on DocumentReference instances
* [FHIR-37987](https://jira.hl7.org/browse/FHIR-37987.html): Make changes to ADI Participant Consent profile
* [FHIR-40283](https://jira.hl7.org/browse/FHIR-40283.html): Remove Jurisdiction extension for Composition and pre-adopt R5 Composition.relatesTo RelatedArtifact
* [FHIR-40373](https://jira.hl7.org/browse/FHIR-40373.html): Change Advance Directive Category VS and add to Document Reference
* [FHIR-40379](https://jira.hl7.org/browse/FHIR-40379.html): Correct codes in DocumentationTypeValueSet and Documentation Observation
* [FHIR-48545](https://jira.hl7.org/browse/FHIR-48545.html): Modify "ADI Participant Consent" and "ADI Participant" profile names to make the purpose of the profiles more clear