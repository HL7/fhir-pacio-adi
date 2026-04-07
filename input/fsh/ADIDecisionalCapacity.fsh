Profile: ADIDecisionalCapacity
Parent: $USCoreSimpleObservation
Id: ADI-DecisionalCapacity
Title: "ADI Decisional Capacity"
Description: "This profile is used to represent a patient's decisional capacity for medical decision-making."

* ^experimental = false

* status = #final

* category = $USCoreCategory#survey

* code 1..1 MS
* code = $LOINC#8693-4 "Mental status"
* code.text MS

* subject 1..1
* subject only Reference($USCorePatient)

* encounter 0..0 // verify no encounter possible
* performer only Reference($USCorePractitioner or $USCorePractitionerRole)

* value[x] 1..1 MS
* value[x] only CodeableConcept

* valueCodeableConcept from $VSACADIDecisionalCapacity (extensible)