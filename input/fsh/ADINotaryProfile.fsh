Profile: ADINotary
Parent: RelatedPerson
Id: ADI-Notary
Title: "ADI Notary"
Description: "This profile represents a person participating as a notary for a person's advance directives."

* active MS
* text 1..1 // CONF:4445-33393

* patient 1..1 MS
* patient only Reference($USCorePatient)

* relationship 1..* MS
* relationship from $HL7RelatedPersonRelationshipType (extensible)


//Healthcare Agent or Proxy Choices
//Personal And Legal Relationship Role Type

* relationship ^slicing.discriminator.type = #pattern 

* relationship ^slicing.discriminator.path = "$this"
* relationship ^slicing.rules = #open
* relationship ^slicing.ordered = false   // can be omitted, since false is the default
* relationship ^slicing.description = "Slice based on $this pattern"

* relationship contains notary 1..1 MS
* relationship[notary] = v3-ParticipationType#NOTARY
* relationship[notary] ^requirements = "Indicates the relationship is as a notary for the advance directive."

* name 1..1 MS // CONF:4445-33420
* telecom 1..* MS // CONF:4445-33417
* address MS

* extension contains
    adi-notaryInformation-extension named NotaryInformationExtension 0..1

// HOW About references to external documents????