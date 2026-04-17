Profile: ADISeriousAdvancedCondition
Parent: $USCoreSimpleObservation
Id: serious-advanced-condition
Title: "ADI Serious Advanced Condition"
Description: "This concept expresses the medical or serious advanced condition that makes the patient appropriate for a portable medical order (PMO)."

* ^experimental = false

* status = #final

* category = $USCoreCategory#survey
* code 1..1 MS
* code = ADITempCS#serious-advanced-condition "Serious advanced condition"

* subject 1..1
* subject only Reference($USCorePatient)

* encounter 0..0 // verify no encounter possible
* performer only Reference($USCorePractitioner or $USCorePractitionerRole)
 
* value[x] only CodeableConcept or string
* valueCodeableConcept 0..1 MS
* valueCodeableConcept from $USCoreConditionProblemsHealthConcernsProfile (extensible)
* valueString 0..1 MS
* valueString ^short = "Description of the serious advanced condition."