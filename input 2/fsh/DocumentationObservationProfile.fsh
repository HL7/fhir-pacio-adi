Profile: ADIDocumentationObservation
Parent: Observation
Id: ADI-DocumentationObservation
Title: "ADI Documentation Observation"
Description: "This profile is used to indicate if additional advance directive documents, such as physician order for life sustaining treatment (MOLST or POLST) or Do Not Resuscitate Order (DNR) exist and a reference to the document."

* text 1..1 MS

// TODO is this final?
* status = #final
//TODO What should we use for category. Observations are commonly queried on category.

// TODO should the code.coding?
* code MS
* code = $LOINC#42348-3

//* code = from ADIDocumentationTypeVS (extensible)

// What to do about these displayName requirements? With FHIR teh display is in a coding which could have multiple instances (translations).
//   Do we limit the coding instances? (not preferred).  Do we require display for all of them? Or do we define only the first instance to be exactly as it should be?
//* code.coding.display 1..1  // CONF:4445-33536
* subject 1..1 MS
* subject only Reference($USCorePatient)

* focus ^short = "Reference to the additional document this observation is about"

* effective[x] 1..1 MS  // CONF:4445-33113

* value[x] 1..1 MS
* value[x] only CodeableConcept
// Remove Presence indicator

* valueCodeableConcept from ADIDocumentationTypeVS (extensible)

// need to add derived from documentReference to allow pointing to the actual order

* performer 1..1



* note MS


* performer ^comment = "The party responsible for or made the observation. For individual (patient) authored advance directive documents this will likely be the patient."


/*
Profile: ADIDNROrderObservation
Parent: Observation
Id: ADI-DNROrderObservation
Title: "ADI DNR Order Observation"
Description: "This profile is used to indicate if a person has a Do Not Resuscitate, Do Not Attempt Resuscitation, or Allow Natural Death order is in place."

* text 1..1 MS

// TODO is this final?
* status = #final
//TODO What should we use for category. Observations are commonly queried on category.

// TODO should the code.coding?
* code MS
* code = $LOINC#81351-9 // CONF:4445-33158

// What to do about these displayName requirements? With FHIR teh display is in a coding which could have multiple instances (translations).
//   Do we limit the coding instances? (not preferred).  Do we require display for all of them? Or do we define only the first instance to be exactly as it should be?
//* code.coding.display 1..1  // CONF:4445-33536
* subject 1..1 MS
* subject only Reference($USCorePatient)

* effective[x] MS  // CONF:4445-33113

* value[x] 1..1 MS
* value[x] only CodeableConcept


// need to add derived from documentReference to allow pointing to the actual order


* note MS
*/