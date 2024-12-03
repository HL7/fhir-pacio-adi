Profile: ADICompositionHeader
Parent: clinicaldocument
Id: ADI-Composition-Header
Title: "ADI Composition Header"
Description: "This abstract profile defines constraints that represent common administrative and demographic concepts for advance directives information used in US Realm clinical documents."

* ^abstract = true 
* language 1..1 MS

* extension[composition-clinicaldocument-versionNumber] 1..1 MS
// Need extensions
//* extension contains
//    http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber named versionNumber 0..1 
/*    
    http://hl7.org/fhir/us/ccda/StructureDefinition/VersionNumber named version_number_extension 0..1 MS and
    http://hl7.org/fhir/us/ccda/StructureDefinition/DataEntererExtension named data_enterer_extension 0..1 MS and
    http://hl7.org/fhir/us/ccda/StructureDefinition/InformantExtension named informant_extension 0..* MS and
    http://hl7.org/fhir/us/ccda/StructureDefinition/InformationRecipientExtension named information_recipient_extension 0..* MS and
    http://hl7.org/fhir/us/ccda/StructureDefinition/ParticipantExtension named participant_extension 0..* MS and
    http://hl7.org/fhir/us/ccda/StructureDefinition/PerformerExtension named performer_extension 0..* MS and
    http://hl7.org/fhir/us/ccda/StructureDefinition/AuthorizationExtension named authorization_extension 0..* MS and
    http://hl7.org/fhir/us/ccda/StructureDefinition/OrderExtension named order_extension 0..* MS
    */

* extension contains
  //  adi-versionNumber-extension named VersionNumber 0..1 MS and
    adi-effective-date-extension named EffectiveDateExtension 0..1 and
    adi-jurisdiction-extension named Jurisdiction 0..* and 
    adi-dataEnterer-extension named DataEntererExtension 0..1 and
    adi-informant-extension named InformantExtension 0..* and
  //  adi-informationRecipient-extension named InformationRecipientExtension 0..* MS and
    adi-participant-extension named ParticipantExtension 0..* and
    adi-performer-extension named PerformerExtension 0..* and
    adi-clause-extension named ClauseExtension 0..* and
    adi-document-revoke-status named DocumentRevokeStatus 0..1 MS

* language 1..1 MS
* identifier 1..1 MS

*  status from ADICompositionStatusVS (required) // fix for FHIR-46153

* type MS
* type from $VSACADIAdvanceDirectiveCategories (extensible)

* category 0..1 MS
* category = $LOINC#42348-3 "Advance directives"
* subject 1..1 MS
* subject only Reference($USCorePatient)

* encounter only Reference($USCoreEncounter)
* date MS
* author MS
* author only Reference($USCorePractitioner or $USCorePractitionerRole or PractitionerRole or $USCorePatient or Device or RelatedPerson)
* title MS
* confidentiality 0..0

* custodian 1..1 MS
* custodian only Reference($USCoreOrganization)

* event.code = ADITempCS#acp-services "Advance care planning services"
* event.detail ^slicing.discriminator.type = #profile
* event.detail ^slicing.discriminator.path = "resolve()"
* event.detail ^slicing.rules = #open
* event.detail ^slicing.description = "Slice based on the reference profile and code pattern"

* event.detail contains adiFacilitator 0..1
* event.detail[adiFacilitator] only Reference(ADIFacilitator)
* event.detail[adiFacilitator] ^short = "ADI Facilitator"

* section.extension contains    
    adi-clause-extension named ClauseExtension 0..*
    
// need to add notes on which attester roles there are. Change name of personal_attester to witness_attester professional_attester to notary_attester
// Need to add an extension with a code that explains the role, witness or notary. Others?


