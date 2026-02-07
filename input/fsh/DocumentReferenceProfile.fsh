Profile: ADIDocumentReference
// [TODO] Does this need to derive from US Core DocumentReference? If so, need to review the requirements below and remove incompatible or redundant requirements
Parent: $USCoreADIDocumentReference
// Parent: DocumentReference
Id: ADI-DocumentReference
Title: "ADI Document Reference"
Description: "This profile defines constraints that represent the information needed
to register an advance healthcare directive document on a FHIR server."

* identifier MS
* identifier ^short = "Contains a specialized identifier for the setId used to identify a specific logical document."
* status MS
* type 1..1 MS
* type from $VSACADIDocumentTypesGrouper (extensible) // fix for FHIR-55633 tying .category and .type to VSAC value sets and replacing the slice fix from FHIR-36962.


// ****** fix for FHIR-36962 - addition of slicing discriminator ***** - replaced by VSAC value set from FHIR-55633
// // Slice the type.coding element using pattern-based discrimination
// * type.coding ^slicing.discriminator.type = #pattern
// * type.coding ^slicing.discriminator.path = "$this"
// * type.coding ^slicing.rules = #open
// * type.coding ^slicing.description = "Slicing based on document type codes to support C-CDA and FHIR PACP formats"

// // Slice for CDA documents
// * type.coding contains cdaDocument 0..1 MS
// * type.coding[cdaDocument] ^short = "CDA Document Type Coding"
// * type.coding[cdaDocument] ^definition = "Identifies this as a CDA document with structured body format"
// * type.coding[cdaDocument] ^patternCoding.system = "http://terminology.hl7.org/CodeSystem/v3-HL7DocumentFormatCodes"
// * type.coding[cdaDocument] ^patternCoding.code = #urn:hl7-org:sdwg:pacp-structuredBody:1.3
// * type.coding[cdaDocument].system 1..1
// * type.coding[cdaDocument].code 1..1
// * type.coding[cdaDocument].display = "PACP Structured Body CDA Document"

// // Slice for FHIR ADI Bundle
// * type.coding contains fhirADIBundle 0..1 MS
// * type.coding[fhirADIBundle] ^short = "FHIR PACP Bundle Type Coding"
// * type.coding[fhirADIBundle] ^definition = "Identifies this as a FHIR PACP Bundle document"
// * type.coding[fhirADIBundle] ^patternCoding.system = "urn:ietf:rfc:3986"
// // Note: Replace the URL below with the actual Canonical URL of your PACP Bundle profile
// * type.coding[fhirADIBundle] ^patternCoding.code = #http://hl7.org/fhir/us/pacio-adi/StructureDefinition/ADI-Bundle
// * type.coding[fhirADIBundle].system 1..1
// * type.coding[fhirADIBundle].code 1..1
// * type.coding[fhirADIBundle].display = "pacp-structuredBody:1.3"

* contained ^short = "Used to communicate the DocumentReference for a superseded document referenced in DocumentReference.relatesTo.target."

* authenticator only Reference($USCorePractitioner or $USCoreOrganization or ADIPractitionerRole)
* authenticator ^short = "The attester or authenticator of the advance directive."
* authenticator ^comment = "This role is equivalent to the Composition.attester.party element."

* description ^short = "the associated document title(s) in the description is a best practice that improves searchability."

* context.encounter ^short = "An encounter where the associated document was considered relevant."

* context.period ^short = "the span of time that is relevant for the advance healthcare document"
* context.period ^comment = "Describes the span of time that is relevant for the advance healthcare document.  i.e. period.start equals document.content.creation, period.end equals document expiration date or omit period.end if no expiration date"

// Ensure format element is present and constrained appropriately
// * format MS
// * format ^short = "Format/content rules for the document"
// * format ^definition = "An identifier of the document encoding, structure, and template that the document conforms to beyond the base format indicated in the mimeType."


// ****** end of fix for FHIR-36962  *****

* date 1..1 MS
* category 1..* MS
* category from $VSACADIAdvanceDirectiveCategories (extensible) // fix for FHIR-55633 tying .category and .type to VSAC value sets
* subject 1..1 MS
* subject only Reference($USCorePatient)
* date MS
* author MS
* author only Reference($USCorePractitionerRole or $USCoreOrganization or $USCorePatient)
* custodian MS
* custodian only Reference($USCoreOrganization)
* content MS
* content.attachment MS
* content.attachment.contentType 1..1 MS
* content.attachment.data MS
* content.attachment.url MS
* content.attachment.creation 1..1 MS
* content.format MS
* context MS
* context.encounter MS
* context.encounter only Reference($USCoreEncounter)
* context.period MS

// * docStatus from ADIDocumentReferenceStatusVS (required) // fix for FHIR-46153

* docStatus from http://hl7.org/fhir/us/pacio-adi/ValueSet/ADICompositionStatusVS (required)

* extension contains
    adi-document-revoke-status named DocumentRevokeStatus 0..1 MS and
    adi-docVersionNumber-extension named DocumentReferenceVersionNumber 0..1 MS
// These are from the mapping document and are likely not the intended final short descriptions
RuleSet: ADIDocumentReferenceShortDescriptions
* type ^short = "Advance Directive Categories"
* subject ^short = "Patient"

