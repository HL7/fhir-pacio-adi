Profile: PADIParticipant
Parent: RelatedPerson
Id: PADI-Participant
Title: "ADI Participant"
Description: "This profile represents a person participating in a persons advance directives in some capacity such as healthcare agent or healthcare agent advisor."

* text 1..1 // CONF:4445-33393

* patient 1..1 MS
* patient only Reference($USCorePatient)

* relationship 0..* MS
* relationship from PADIParticipantRelationshipVS (extensible)

//Healthcare Agent or Proxy Choices
//Personal And Legal Relationship Role Type

* relationship ^slicing.discriminator.type = #pattern 

* relationship ^slicing.discriminator.path = "$this"
* relationship ^slicing.rules = #open
* relationship ^slicing.ordered = false   // can be omitted, since false is the default
* relationship ^slicing.description = "Slice based on $this pattern"
* relationship contains
    personal_and_legal_relationship_role 0..1 MS

* relationship[personal_and_legal_relationship_role].coding 1..1
* relationship[personal_and_legal_relationship_role] from PADIPersonalAndLegalRelationshipRoleTypeVS (required)
* relationship[personal_and_legal_relationship_role].coding.display 1..1  // CONF:4445-33524) 


* name 1..1 // CONF:4445-33420
* telecom 1..* // CONF:4445-33417


// HOW About references to external documents????