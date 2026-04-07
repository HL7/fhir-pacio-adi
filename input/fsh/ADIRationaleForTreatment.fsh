Profile: ADIRationaleForTreatment
Parent: $USCoreSimpleObservation
Id: adi-rationale-for-treatment
Title: "ADI Rationale for Treatment"
Description: "This profile is used to represent the rationale for a patient's treatment decision."

* ^experimental = false

* status = #final

* category = $USCoreCategory#survey
* code 1..1 MS
* code from $VSACADIRationaleForTreatment

* subject 1..1
* subject only Reference($USCorePatient)

* encounter 0..0 // verify no encounter possible
* performer only Reference($USCorePractitioner or $USCorePractitionerRole)
 
* value[x] only string
* valueString 0..1 MS