Profile: ADIDecisionalCapacity
Parent: Observation
Id: ADI-DecisionalCapacity
Title: "ADI Decisional Capacity"
Description: "This profile is used to represent a patient's decisional capacity for medical decision-making."

* ^experimental = false

* status = #final

* category 1..1 MS
* category = $HL7ObservationCategory#survey
* code 1..1 MS
* code = $SNOMEDCT#551781000124102 //Under care of hospice team (finding) - US Edition

* subject 1..1
* subject only Reference($USCorePatient)

* encounter 0..0 // verify no encounter possible
* performer only Reference($USCorePractitioner or $USCorePractitionerRole)
 
* valueCodeableConcept from $VSACADIDecisionalCapacity
