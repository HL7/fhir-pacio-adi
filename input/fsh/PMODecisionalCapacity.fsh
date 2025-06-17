Profile: ADIDecisionalCapacity
Parent: Observation
Id: ADI-DecisionalCapacity
Title: "ADI Decisional Capacity"
Description: "This profile is used to represent a patient's decisional capacity for medical decision-making."

* ^experimental = false

* status = #final


// TODO need a category (Survey for now)
// TODO may need to get a variance request from us core Observation. In different version and also do any of the categories fit?
// http://hl7.org/fhir/us/core/STU5.0.1/ValueSet-us-core-servicerequest-category.html

* category 1..1 MS
* category = $HL7ObservationCategory#survey
* code 1..1 MS

//* code = $LOINC#75781-5

* subject 1..1
* subject only Reference($USCorePatient)

* encounter 0..0 // verify no encounter possible
* performer only Reference($USCorePractitioner)


* code = $SNOMEDCT#551781000124102 //Under care of hospice team (finding) - US Edition
 
* valueCodeableConcept from $VSACADIDecisionalCapacity
