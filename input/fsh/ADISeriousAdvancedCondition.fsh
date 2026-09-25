Profile: ADISeriousAdvancedCondition
Parent: $USCoreSimpleObservation
Id: ADI-SeriousAdvancedCondition
Title: "ADI Serious Advanced Condition"
Description: "This concept expresses the medical or serious advanced condition that makes the patient appropriate for a portable medical order (PMO)."

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
* ^experimental = false

* status = #final

* category = $USCoreCategory#PMO
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