Profile: PADIPersonalPrioritiesOrganizer
Parent: List
Id: PADI-PersonalPrioritiesOrganizer
Title: "ADI Personal Priorities Organizer"
Description: "Personal Priorities Organizer is used to represent a set of personal goals, preferences or care experiences in a preferred ranked order."

* text 1..1 MS
* status MS // should there be a specific status code?

* title 1..1 // Should this be required?
* code 1..1
// TODO how do we change the binding for a fixed value? THe binding is still showing the FHIR standard VS. Can't add loinc directly as it is a codeSystem
//* code from $LOINC (extensible)
* code = $LOINC#81340-2 // CONF:4445-33374

* orderedBy 1..1 MS
* orderedBy = http://terminology.hl7.org/CodeSystem/list-order#priority


* entry.item only Reference(PADIPersonalHealthGoal or PADIPersonalInterventionPreference)