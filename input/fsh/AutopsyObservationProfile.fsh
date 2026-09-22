Profile: ADIAutopsyObservation
Parent: Observation
Id: ADI-AutopsyObservation
Title: "ADI Autopsy Observation"
Description: "This profile is used to represent the author's thoughts about autopsy. Note: this information also can be represented using the Upon Death Preferences Entry profile."  // mlt_20260921: added the note to fix FHIR-51596.

* text 1..1 MS
* status = #final
* code = $LOINC#75782-3 "Thoughts regarding autopsy Narrative - Reported"
* subject 1..1 MS
* subject only Reference($USCorePatient)

* value[x] 1..1 MS
* value[x] only CodeableConcept or string
* note 0..1 MS
