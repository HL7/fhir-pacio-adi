Profile: PADIDocumentReference
// [TODO] Does this need to derive from US Core DocumentReference? If so, need to review the requirements below and remove incompatible or redundant requirements
Parent: DocumentReference
Id: PADI-DocumentReference
Title: "PACIO ADI Document Reference"
Description: "This profile defines constraints that represent the information needed to register an advance directive information document on a FHIR server."

// Is a last updated required?
//* meta.lastUpdated 1..1 MS
* identifier MS
* status MS
* type 1..1 MS
* type from PADIAdvanceDirectiveCategoriesVS (extensible)
//* type short name "Advance Directives Categories"
* category 1..* MS
* category from $USCoreDocumentReferenceCategory (extensible)
* subject 1..1 MS
* subject only Reference($USCorePatient)
* date MS
* author MS
* author only Reference ($USCorePractitioner or $USCoreOrganization or $USCorePatient)
* custodian MS
* custodian only Reference ($USCoreOrganization)
* content MS
* content.attachment MS
* content.attachment.contentType 1..1 MS
* content.attachment.data MS
* content.attachment.url MS
* content.format MS
* context MS
* context.encounter MS
* context.encounter only Reference ($USCoreEncounter)
* context.period MS

* insert PADIDocumentReferenceShortDescriptions

// These are from the mapping document and are likely not the intended final short descriptions
RuleSet: PADIDocumentReferenceShortDescriptions
* type ^short = "Advance Directive Categories"
* subject ^short = "Patient"
* author ^short = "legalAuthenticator"