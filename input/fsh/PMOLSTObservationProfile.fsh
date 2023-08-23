Profile: PADIPMOLSTObservation
Parent: Observation
Id: PADI-PMOLSTObservation
Title: "ADI PMOLST Observation"
Description: "This profile is used to indicate if a person has a medical order or physician order for life sustaining treatment (MOLST or POLST)."

* text 1..1 MS

// TODO is this final?
* status = #final
//TODO What should we use for category. Observations are commonly queried on category.

// TODO should the code.coding?
* code MS
* code = $LOINC#81352-7 // CONF:4445-33158

// What to do about these displayName requirements? With FHIR teh display is in a coding which could have multiple instances (translations).
//   Do we limit the coding instances? (not preferred).  Do we require display for all of them? Or do we define only the first instance to be exactly as it should be?
//* code.coding.display 1..1  // CONF:4445-33536
* subject 1..1 MS
* subject only Reference($USCorePatient)

* effective[x] 1..1 MS  // CONF:4445-33113

* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from PADIPresenceIndicatorVS (required)

// need to add derived from documentReference to allow pointing to the actual order


* note MS
