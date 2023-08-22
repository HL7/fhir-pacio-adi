Profile: PADIAutopsyObservation
Parent: Observation
Id: PADI-AutopsyObservation
Title: "ADI Autopsy Observation"
Description: "This profile is used to represent the author's thoughts about autopsy."

* text 1..1 MS
* status = #final
//* code from PADIAutopsyVS (required)
* code = $LOINC#75782-3
* subject 1..1 MS
* subject only Reference($USCorePatient)

* value[x] 1..1 MS

* note MS


