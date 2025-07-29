Profile: ADIOrganDonationObservation
Parent: Observation
Id: ADI-OrganDonationObservation
Title: "ADI Organ Donation"
Description: "This profile is used to represent the author's thoughts about organ donation."

* text 1..1 MS
* status = #final


* code 1..1 MS
//* code from ADIOrganDonationVS (required)
* code = $LOINC#75781-5 "Thoughts on organ and tissue donations Narrative - Reported"
* code.text 
* subject 1..1 MS
* subject only Reference($USCorePatient)

* value[x] 1..1 MS

* note 0..1 MS

