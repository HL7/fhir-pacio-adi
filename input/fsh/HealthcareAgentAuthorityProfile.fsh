Profile: PADIHealthcareAgentAuthority
Parent: Consent
Id: PADI-HealthcareAgentAuthority
Title: "ADI Healthcare Agent Authority"
Description: "This profile is used to represent a power or limitation granted to a person acting as a healthcare agent."

* text 1..1 MS
/*  Removed, this does not seem to resolve the issue. It just adds another example (albeit correct example)
// Identifier included to address R4 Base Consent Resource invalid example that generates errors in the 
* identifier ^example.label = "General"
* identifier ^example.valueIdentifier.system = "urn:ietf:rfc:3986"
* identifier ^example.valueIdentifier.value = "urn:oid:2.16.840.1.113883.11.19455"
*/
* status MS
// [TODO], the LOINC code is an observable, which is not meant to express scope. Will need to find another code that could (Follow-up with Dan Vreeman  Liz Umberfield)
* scope = $LOINC#75786-4
//[TODO] need verification that it is active only. Is the authority proposed if the agent is not yet aware or accepted the role?
* status = #active

* category = http://terminology.hl7.org/CodeSystem/consentcategorycodes#acd

// [TODO] there seems to be an issue with consent scope. The url http://terminology.hl7.org/CodeSystem/consentscope forwards to https://terminology.hl7.org/2.1.0/CodeSystem-consentscope.html
// But the version we are using is the R4 version http://hl7.org/fhir/codesystem-consent-scope.html#consent-scope-adr
//* scope = $HL7ConsentScope#adr

//[TODO] What is the proper category. This is not an advance directive category because this is the consent given to the agent to make the decisions, not to clinician, right?
//*category = $HL7ConsentCategoryCodes#acd

* patient 1..1 MS
* dateTime MS

// [TODO] Where is the appropriate place to state that this Consent is for an agent 
//* policyRule = $LOINC#75786-4

* provision 1..1 MS
* provision.type 1..1 MS
* provision.period MS
//[TODO] do we need to support and require provision.actor for all HCA's?

* provision.actor.role = $HL7RoleClass#AGNT
* provision.actor.reference only Reference(PADIHealthcareAgent)

// [TODO] we need a valueset defined. Any candidates?
* provision.action MS
* provision.purpose = http://terminology.hl7.org/CodeSystem/v3-ActReason#PWATRNY

// [TODO] need to add guidance that first provision is the base set of rules, and the nested ones are exceptions to the rules.
// This may tke 2 forms, either a permit as a base rule with exceptions stating what is type deny, or vice versa.


