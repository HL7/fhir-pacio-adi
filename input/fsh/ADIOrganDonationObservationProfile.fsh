Profile: ADIOrganDonationObservation
Parent: Observation
Id: ADI-OrganDonationObservation
Title: "ADI Organ Donation Observation"
Description: "This profile is used to represent the author's thoughts about organ donation. Note: this information also can be represented using the Upon Death Preferences Entry profile."  // mlt_20260921: added the note to fix FHIR-51596.

* text 1..1 MS
* status = #final


* code 1..1 MS
//* code from ADIOrganDonationVS (required)
* code = $LOINC#75781-5 "Thoughts on organ and tissue donations Narrative - Reported"
* code.text 
* subject 1..1 MS
* subject only Reference($USCorePatient)

* value[x] only CodeableConcept or string
* value[x] 1..1 MS
* value[x] ^short = "Description of thoughts on organ and tissue donations."

* note 0..1 MS

