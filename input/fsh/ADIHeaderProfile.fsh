Profile: PADIHeader
Parent: clinicaldocument
Id: PADI-Header
Title: "PACIO ADI Header"
Description: "This abstract profile defines constraints that represent common administrative and demographic concepts for advance directives information used in US Realm clinical documents."

* ^abstract = true 
* language 1..1 MS


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
    padi-versionNumber-extension named VersionNumber 0..1 MS and
    padi-dataEnterer-extension named DataEntererExtension 0..1 MS and
    padi-informant-extension named InformatExtension 0..* MS and
    padi-informationRecipient-extension named InformationRecipientExtension 0..* MS and
    padi-participant-extension named ParticipantExtension 0..* MS and
    padi-performer-extension named PerformerExtension 0..* MS and
    padi-authorization-extension named AuthorizationExtension 0..* MS and
    padi-order-extension named OrderExtension 0..* MS
    // and 

* language 1..1 MS
* identifier 1..1 MS
* type MS
* type from PADIAdvanceDirectiveCategoriesVS (extensible)

* category 1..1 MS
* subject MS
* subject only Reference($USCorePatient)
* encounter MS
* encounter only Reference($USCoreEncounter)
* date MS
* author MS
* author only Reference($USCorePractitioner or $USCorePractitionerRole or PractitionerRole or $USCorePatient or Device or RelatedPerson)
* title MS
* confidentiality 0..0

* attester ^slicing.discriminator.type = #value 
* attester ^slicing.discriminator.path = "mode"
// Should the pattern be open or closed?
* attester ^slicing.rules = #open
* attester ^slicing.ordered = false   // can be omitted, since false is the default
* attester ^slicing.description = "Slice based on $this value"
* attester contains
    legal_attester 0..1 MS and
    notary_attester 0..* MS and
    witness_attester 0..* MS
* attester[legal_attester].mode 1..1 MS
* attester[legal_attester].mode = #legal
* attester[legal_attester].party 1..1 MS
* attester[legal_attester].party  only Reference ($USCorePractitioner or $USCorePractitionerRole or $USCoreOrganization)
* attester[notary_attester].mode 1..1 MS
* attester[notary_attester].mode = #professional
* attester[notary_attester].party 1..1 MS
* attester[notary_attester].party  only Reference (RelatedPerson)
* attester[witness_attester].mode 1..1 MS
* attester[witness_attester].mode = #personal
* attester[witness_attester].party 1..1 MS
* attester[witness_attester].party  only Reference ($USCorePatient or RelatedPerson)

* custodian 1..1 MS
* custodian only Reference ($USCoreOrganization)

// need to add notes on which attester roles there are. Change name of personal_attester to witness_attester professional_attester to notary_attester
// Need to add an extension with a code that explains the role, witness or notary. Others?


