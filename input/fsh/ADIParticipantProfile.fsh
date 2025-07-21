Profile: ADIHealthcareAgentParticipant
Parent: RelatedPerson
Id: ADI-HealthcareAgentParticipant
Title: "ADI Healthcare Agent Participant"
Description: "A person represented using the ADI Healthcare Agent Profile and referenced from the ADI Healthcare Agent Consent Permit profile is appointed by the patient as an Authorized Personal Representative permitted the typical or jurisdictionally recognized powers granted to the role of healthcare agent. The person’s specific healthcare agent role, i.e. healthcare agent, primary healthcare agent, secondary healthcare agent, tertiary healthcare agent are specific within the ADI Healthcare Agent Consent Permit profile, and may be constrained through a nested ADI Healthcare Agent Consent Deny profile."

* active MS
* text 1..1 // CONF:4445-33393

* patient 1..1 MS
* patient only Reference($USCorePatient)

* relationship 0..* MS
* relationship from $HL7RelatedPersonRelationshipType (extensible)


//Healthcare Agent or Proxy Choices
//Personal And Legal Relationship Role Type

* relationship ^slicing.discriminator.type = #pattern 

* relationship ^slicing.discriminator.path = "$this"
* relationship ^slicing.rules = #open
* relationship ^slicing.ordered = false   // can be omitted, since false is the default
* relationship ^slicing.description = "Slice based on $this pattern"


* name 1..1 MS // CONF:4445-33420
* telecom 1..* MS // CONF:4445-33417
* address MS


// HOW About references to external documents????