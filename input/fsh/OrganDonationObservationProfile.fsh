Profile: PADIOrganDonationObservation
Parent: Observation
Id: PADI-OrganDonationObservation
Title: "ADI Organ Donation"
Description: "This profile is used to represent the author's thoughts about organ donation."

* text 1..1 MS
* status = #final


* code 1..1 MS
//* code from PADIOrganDonationVS (required)
* code = $LOINC#75781-5
* code.text MS
* subject 1..1 MS
* subject only Reference($USCorePatient)

* value[x] 1..1 MS

* note MS

