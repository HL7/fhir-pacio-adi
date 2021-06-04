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

//[TODO] need verification that it is active only. Is the authority proposed if the agent is not yet aware or accepted the role?
* status = #active
// [TODO] there seems to be an issue with consent scope. The url http://terminology.hl7.org/CodeSystem/consentscope forwards to https://terminology.hl7.org/2.1.0/CodeSystem-consentscope.html
// But the version we are using is the R4 version http://hl7.org/fhir/codesystem-consent-scope.html#consent-scope-adr
//* scope = $HL7ConsentScope#adr

//[TODO] What is the proper category. This is not an advance directive category because this is the consent given to the agent to make the decisions, not to clinician, right?
//*category = $HL7ConsentCategoryCodes#acd

* patient 1..1 MS
* dateTime MS

// [TODO] Where is the appropriate place to state that this Consent is for an agent 
* policyRule = $LOINC#75786-4


* provision.actor.role = $HL7RoleClass#AGNT
* provision.actor.reference only Reference(PADIHealthcareAgent)

