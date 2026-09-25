Profile: ADIPMOParticipantObservation
Parent: Observation
Id: ADI-PMOParticipantObservation
Title: "ADI PMO Participant Observation"
Description: "This profile is used to represent the portable medical orders participant observation."


// TODO will likely need a variance Request
//* text 1..1 MS
* status = #final


* code 1..1 MS
* code = $LOINC#100827-5

// * focus 1..1 MS
// * focus only Reference(ADIPMOComposition) // mlt_20260925: Removed ADIPMOComposition reference to avoid a circular reference. (fix for JIRA FHIR-52686)

* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from LOINCPOLSTDiscussPartAnswerList (extensible) // other value in valueSet causes an issue with extensible bindings. How to address?

