Profile: ADIWitness
Parent: RelatedPerson
Id: ADI-Witness
Title: "ADI Witness"
Description: "This profile represents a person participating as a witness for a person's advance directives."

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

* relationship contains witness 1..1 MS
* relationship[witness] = v3-ParticipationType#WIT
* relationship[witness] ^requirements = "Indicates the relationship is as a witness to the advance directive."

* name 1..1 MS // CONF:4445-33420
* telecom 1..* MS // CONF:4445-33417
* address MS


// HOW About references to external documents????