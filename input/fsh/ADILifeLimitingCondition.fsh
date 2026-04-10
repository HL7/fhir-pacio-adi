Profile: ADILifeLimitingCondition
Parent: $USCoreSimpleObservation
Id: adi-limiting-condition
Title: "ADI Life Limiting Condition"
Description: "The life-limiting disease, diagnosis, or medical condition which merits the creation of a PMO."

* ^experimental = false

* status = #final

* category = $USCoreCategory#survey
* code 1..1 MS
* code = ADITempCS#life-limiting-condition "Life-limiting condition"

* subject 1..1
* subject only Reference($USCorePatient)

* encounter 0..0 // verify no encounter possible
* performer only Reference($USCorePractitioner or $USCorePractitionerRole)
 
* value[x] only CodeableConcept or string
* valueCodeableConcept 0..1 MS
* valueCodeableConcept from $USCoreConditionProblemsHealthConcernsProfile (extensible)
* valueString 0..1 MS
* valueString ^short = "Description of the life-limiting condition."