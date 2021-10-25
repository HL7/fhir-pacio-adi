Profile: PADIDocumentationObservation
Parent: Observation
Id: PADI-DocumentationObservation
Title: "ADI Documentation Observation"
Description: "This profile is used to indicate if additional advance directive documents, such as physician order for life sustaining treatment (MOLST or POLST) or Do Not Resuscitate Order (DNR) exist and a reference to the document."

* text 1..1 MS

// TODO is this final?
* status = #final
//TODO What should we use for category. Observations are commonly queried on category.

// TODO should the code.coding?
* code MS
* code from PADIDocumentationTypeVS (extensible)

// What to do about these displayName requirements? With FHIR teh display is in a coding which could have multiple instances (translations).
//   Do we limit the coding instances? (not preferred).  Do we require display for all of them? Or do we define only the first instance to be exactly as it should be?
//* code.coding.display 1..1  // CONF:4445-33536
* subject 1..1 MS
* subject only Reference($USCorePatient)

* focus only Reference(DocumentReference or Binary or Bundle or Basic)
* focus ^short = "Reference to the additional document this observation is about"

* effective[x] 1..1 MS  // CONF:4445-33113

* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from PADIPresenceIndicatorVS (required)

// need to add derived from documentReference to allow pointing to the actual order


* note MS



/*
Profile: PADIDNROrderObservation
Parent: Observation
Id: PADI-DNROrderObservation
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
* valueCodeableConcept from PADIPresenceIndicatorVS (required)

// need to add derived from documentReference to allow pointing to the actual order


* note MS
*/