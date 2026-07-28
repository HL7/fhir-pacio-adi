### STU2 Publication Release Notes

#### JIRA Fixes

##### Compatible, substantive

| JIRA issue | Summary | Applied change |
| --- | --- | --- |
| [FHIR-51828](https://jira.hl7.org/browse/FHIR-51828) | Should ADI RelatedPerson profiles be derived from US Core RelatedPerson profiles? | Changed ADI Health Agent Participant, ADI Notary, and ADI Witness profiles to derive from US Core RelatedPerson. |
| [FHIR-52036](https://jira.hl7.org/browse/FHIR-52036) | Profile URLs are broken | Modified the CapabilityStatement to reference HealthcareAgentParticipant and split ConsentPermit/ConsentDeny profiles with corrected URLs. |
| [FHIR-52038](https://jira.hl7.org/browse/FHIR-52038) | RelatedPerson profiles URLs are broken | Updated the CapabilityStatement to reflect STU2 ballot changes for ADI-HealthcareAgentParticipant and removed references to _ADI-Guardian_. |
| [FHIR-52670](https://jira.hl7.org/browse/FHIR-52670) | Change title for Workflow Representation | Changed title to Person-Authored Workflow per resolution description. |
| [FHIR-52671](https://jira.hl7.org/browse/FHIR-52671) | Promote the Person Authored Document Workflow to a menu option under Person Authored menu item | The system promoted the Person Authored Document Workflow to a menu option under the Person Authored item. |
| [FHIR-52683](https://jira.hl7.org/browse/FHIR-52683) | Change profile name to ADI Organ Donation Observation | Changed the profile name from "Organ Donation" to "ADI Organ Donation Observation". |
| [FHIR-52684](https://jira.hl7.org/browse/FHIR-52684) | Change the profile name to ADI Person Authored Care Experience Preference | Changed the profile name from ADI Care Experience Preference to ADI Person-Authored Care Experience Preference. |
| [FHIR-52685](https://jira.hl7.org/browse/FHIR-52685) | Change the profile name to ADI Person Authored Treatment Intervention Preference | Changed the profile name to ADI Person Authored Treatment Intervention Preference. |
| [FHIR-53922](https://jira.hl7.org/browse/FHIR-53922) | Update ADI DocumentReference Profile to include accurate context details and field comments | The issue updated ADI DocumentReference Profile descriptions, field comments, and surfaced optional context elements with clarifications. |
| [FHIR-55633](https://jira.hl7.org/browse/FHIR-55633) | Fix the terminology binding for type and category to align with US Core and FHIR Clinical Document | Terminology binding types and categories made. |
| [FHIR-56323](https://jira.hl7.org/browse/FHIR-56323) | Missing Rationale for Treatment entry in PMO Composition administrative info section | * Created a new profile called ADIRationaleForTreatment. * Added PMO Composition Administrative Section entry referring to the ADIRationaleForTreatment profile. |
| [FHIR-57552](https://jira.hl7.org/browse/FHIR-57552) | Fix binding for RelatedPerson.relationship in the Healthcare Agent Profile | Changed binding for RelatedPerson.relationship in the Healthcare Agent Profile. |
| [FHIR-57815](https://jira.hl7.org/browse/FHIR-57815) | Change the ADI Provenance slice name from assembler to ProvenanceAssembler | Changed the ADI Provenance slice name from assembler to ProvenanceAssembler |

##### Non-substantive

| JIRA issue | Summary | Applied change |
| --- | --- | --- |
| [FHIR-51812](https://jira.hl7.org/browse/FHIR-51812) | Typo | Corrected the reported typo in FHIR issue FHIR-51812. |
| [FHIR-51813](https://jira.hl7.org/browse/FHIR-51813) | Suggest using SHALL conformance word | Changed wording and added a link to foundational composition guidance in issue FHIR-51813. |
| [FHIR-51814](https://jira.hl7.org/browse/FHIR-51814) | AD should ADI | replaced AD with "advance healthcare directive", or AHD as the acronym. |
| [FHIR-51815](https://jira.hl7.org/browse/FHIR-51815) | Missing element name | Corrected the element name typo from 'element name' to DocumentReference.status. |
| [FHIR-51817](https://jira.hl7.org/browse/FHIR-51817) | DAR extension URL could be hidden in HTML view | Corrected the DAR extension representation from a direct URL to a hyperlink for dataAbsentReason extension. |
| [FHIR-51819](https://jira.hl7.org/browse/FHIR-51819) | Some SHALL requirement words are not in bold font | Corrected the markdown formatting for SHALL to bold text. |
| [FHIR-51820](https://jira.hl7.org/browse/FHIR-51820) | Missing conformance requirement word | Changed narrative wording for fixed values to require base64 encoded attachments. |
| [FHIR-51821](https://jira.hl7.org/browse/FHIR-51821) | SHOULD or SHALL? | Changed narrative wording for DocumentReference status update requirement from SHOULD or SHALL to SHALL. |
| [FHIR-51826](https://jira.hl7.org/browse/FHIR-51826) | ADI Healthcare Agent Consent profile is not listed | Added the ADI Healthcare Agent Consent link to the Profiles by Resources Type markdown page. |
| [FHIR-51957](https://jira.hl7.org/browse/FHIR-51957) | Clarify the reference to 'these documents` | Modified the paragraph to clarify ADI document digitization levels. |
| [FHIR-51959](https://jira.hl7.org/browse/FHIR-51959) | Remove bullet misrepresenting US Core Conformance requirements misrepresented | Removed text asserting that Data Sources could omit explicit guidance on allowing missing information. |
| [FHIR-51962](https://jira.hl7.org/browse/FHIR-51962) | Update the How to read this guide section to reflect the current contents | Updated the How to read this guide section to reflect current contents including missing pages. |
| [FHIR-52005](https://jira.hl7.org/browse/FHIR-52005) | Typo | Corrected the reported typo in FHIR issue FHIR-52005. |
| [FHIR-52034](https://jira.hl7.org/browse/FHIR-52034) | ADI Facilitator is a PractitionerRole not Practitioner | Corrected the profile's resource type narrative from Practitioner to PractitionerRole. |
| [FHIR-52053](https://jira.hl7.org/browse/FHIR-52053) | Missing acronym | Added Portable Medical Order (PMO) acronym to Key Terms and Acronyms page. |
| [FHIR-52300](https://jira.hl7.org/browse/FHIR-52300) | Pronoun misalignment in Workflow Representation image | Fixed pronouns in the content type use case diagram to align with the female patient persona. |
| [FHIR-52631](https://jira.hl7.org/browse/FHIR-52631) | Add a plain language description | Added plain language summary at the top of the ADI Home page |
| [FHIR-52643](https://jira.hl7.org/browse/FHIR-52643) | Fix heading for How to Read This Guide | Corrected capitalization in title from How to read this guide to How to Read this Guide. |
| [FHIR-52645](https://jira.hl7.org/browse/FHIR-52645) | Update the How to Read This Guide Section to improve value of the content | Added robust descriptions for IG parts in the How to Read this Guide section on the Home page. |
| [FHIR-52648](https://jira.hl7.org/browse/FHIR-52648) | TOC is confusing when compared to IG content organization | Modified sushi-config.yaml to align IG menu organization with table of contents order. |
| [FHIR-52651](https://jira.hl7.org/browse/FHIR-52651) | 3.1 ADI Content Types | The issue description requested changing the heading to 'Advance Healthcare Directive Document Types'. |
| [FHIR-52654](https://jira.hl7.org/browse/FHIR-52654) | Eliminate the notion of Content Type 1, 2 and 3. | Changed Content Type 1 and 3 wording to Patient-Authored and Provider-Authored. |
| [FHIR-52655](https://jira.hl7.org/browse/FHIR-52655) | Use the word "directives" rather than "instructions" in Content Type Overview | Replaced instructions with directives in Content Type Overview |
| [FHIR-52663](https://jira.hl7.org/browse/FHIR-52663) | Use term Personal ACP rather than PACP | Replaced PACP with Personal ACP in the resolution description. |
| [FHIR-52673](https://jira.hl7.org/browse/FHIR-52673) | Don't refer to MHAD as Content Type 1 | Replaced 'Content Type 1' with 'MHAD' in the Advance Directive content type name reference. |
| [FHIR-52674](https://jira.hl7.org/browse/FHIR-52674) | Change section title to Provider Authored Portable Medical Order (PMO) Document | Changed section title to Provider Authored Portable Medical Order Document with hyphenated convention. |
| [FHIR-52677](https://jira.hl7.org/browse/FHIR-52677) | Eliminate notion of Content Type 3 | Changed narrative text and diagram to reference AD content types by description instead of numbers. |
| [FHIR-52680](https://jira.hl7.org/browse/FHIR-52680) | Where did the other Use Case descriptions go? | Added better guidance on the statuses and versioning as part of a Document Lifecycle narrative. |
| [FHIR-52710](https://jira.hl7.org/browse/FHIR-52710) | Modify Introduction Content | The issue description requested modifying text to include MHAD/PAD guidance for the next version. |
| [FHIR-52714](https://jira.hl7.org/browse/FHIR-52714) | Modify Content within 1.2 Background | Changed narrative in section 1.2 Background per reported suggestion. |
| [FHIR-52721](https://jira.hl7.org/browse/FHIR-52721) | Modify text for 1.4 External Drivers | Replaced the External Drivers wording in FHIR-52721. |
| [FHIR-56825](https://jira.hl7.org/browse/FHIR-56825) | Need better guidance on how Advance Directive Document Versions are managed | added better guidance on how Advance Directive Document Versions are managed |
| [FHIR-57549](https://jira.hl7.org/browse/FHIR-57549) | Change ADI PMO Composition section title from "Life-limiting Condition" to "Serious Advanced Condition" | Changed Composition section title to a name that is consistent with the entry resource to Serious Advanced Condition |

##### Non-compatible

| JIRA issue | Summary | Applied change |
| --- | --- | --- |
| [FHIR-51827](https://jira.hl7.org/browse/FHIR-51827) | Should ADI Documentation Observation be derived for US Core profile? | Derived the ADI Documentation Observation Profile from US Core and added the specified extension. |

##### Uncategorized

| JIRA issue | Summary | Applied change |
| --- | --- | --- |
| [FHIR-52086](https://jira.hl7.org/browse/FHIR-52086) | typo | Corrected the typo in author's to authors. |
| [FHIR-52540](https://jira.hl7.org/browse/FHIR-52540) | Change ONC acronym to ASTP | Replaced ONC acronym with ASTP in resolution description FHIR-52540. |
| [FHIR-52542](https://jira.hl7.org/browse/FHIR-52542) | Please add primary editor and contibutor information | Added a section containing primary editor and contributor information to the IG. |
| [FHIR-52543](https://jira.hl7.org/browse/FHIR-52543) | Case correction for "state" to "State" | Corrected the state field from lowercase to uppercase. |
| [FHIR-52726](https://jira.hl7.org/browse/FHIR-52726) | Update content under 1.7 | Reordered sections under How to Read this Guide to match the ADI top menu dropdown order. |
| [FHIR-52727](https://jira.hl7.org/browse/FHIR-52727) | Formatting of Content to be Modified | Removed "Type 1" from the title and deleted the first redundant bullet point. |

{: .grid}

### STU2 Ballot Release Notes

**The following changes occurred since the PACIO ADI [STU1 publication in January 2024](https://hl7.org/fhir/us/pacio-adi/)**

**Support for new advance healthcare directive document types**
* Provider-authored advance directives
  * Portable Medical Orders (PMO)
* Guidance on Mental Health Advance Directives (MHAD)
* Advance Directive Source Form
  
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
* [FHIR-40380](https://jira.hl7.org/browse/FHIR-40380.html): Change order of sections identified in Personal ACP Composition
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