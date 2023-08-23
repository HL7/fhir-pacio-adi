Profile: PADIParticipant
Parent: RelatedPerson
Id: PADI-Participant
Title: "ADI Participant"
Description: "This profile represents a person participating in a person's advance directives in some capacity such as healthcare agent or healthcare agent advisor."

* text 1..1 // CONF:4445-33393

* patient 1..1 MS
* patient only Reference($USCorePatient)

* relationship 0..* 
* relationship from $HL7RelatedPersonRelationshipType (extensible)


//Healthcare Agent or Proxy Choices
//Personal And Legal Relationship Role Type

* relationship ^slicing.discriminator.type = #pattern 

* relationship ^slicing.discriminator.path = "$this"
* relationship ^slicing.rules = #open
* relationship ^slicing.ordered = false   // can be omitted, since false is the default
* relationship ^slicing.description = "Slice based on $this pattern"


* name 1..1 // CONF:4445-33420
* telecom 1..* // CONF:4445-33417


// HOW About references to external documents????