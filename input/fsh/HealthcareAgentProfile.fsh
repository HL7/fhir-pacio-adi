Profile: PADIHealthcareAgent
Parent: RelatedPerson
Id: PADI-HealthcareAgent
Title: "ADI Healthcare Agent"
Description: "This profile represents a person's appointment of a healthcare agent."

* text 1..1 // CONF:4445-33393

* relationship 1..* MS
* relationship from PADIHealthcareAgentRelationshipVS (extensible)

//Healthcare Agent or Proxy Choices
//Personal And Legal Relationship Role Type

* relationship ^slicing.discriminator.type = #pattern 

* relationship ^slicing.discriminator.path = "$this"
* relationship ^slicing.rules = #open
* relationship ^slicing.ordered = false   // can be omitted, since false is the default
* relationship ^slicing.description = "Slice based on $this pattern"
* relationship contains
    heatlhcare_agent_or_proxy_role 1..1 MS and  // CONF:4445-33280)
    personal_and_legal_relationship_role 0..1 MS
    //agent_verification 0..1 MS  TODO Do we need some sort of verification status? Is the relationship the right location, possibly. What is the right valueset? (ACCEPTED AND SELECTED), How about a date?
* relationship[heatlhcare_agent_or_proxy_role].coding 1..1
* relationship[heatlhcare_agent_or_proxy_role] from PADIHealthcareAgentOrProxyChoicesVS (required)
* relationship[heatlhcare_agent_or_proxy_role].coding.display 1..1  // CONF:4445-33524) 
* relationship[personal_and_legal_relationship_role].coding 1..1
* relationship[personal_and_legal_relationship_role] from PADIPersonalAndLegalRelationshipRoleTypeVS (required)
* relationship[personal_and_legal_relationship_role].coding.display 1..1  // CONF:4445-33524) 


* name 1..1 // CONF:4445-33420
* telecom 1..* // CONF:4445-33417


// HOW About references to external documents????