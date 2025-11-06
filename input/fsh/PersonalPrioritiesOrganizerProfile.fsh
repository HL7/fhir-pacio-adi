Profile: ADIPersonalPrioritiesOrganizer
Parent: List
Id: ADI-PersonalPrioritiesOrganizer
Title: "ADI Personal Priorities Organizer"
Description: "Personal Priorities Organizer is used to represent a set of personal goals, preferences or care experiences in a preferred ranked order."

* text 1..1 MS
* status MS // should there be a specific status code?

* title 1..1 // Should this be required?
* code 1..1

* code = $LOINC#81340-2 // CONF:4445-33374

* subject 1..1 MS
* subject only Reference($USCorePatient)

* orderedBy 1..1 MS
* orderedBy = http://terminology.hl7.org/CodeSystem/list-order#priority


* entry.item only Reference(ADIPersonalGoal or ADIPersonalInterventionPreference or ADIPersonAuthoredCareExperiencePreference)