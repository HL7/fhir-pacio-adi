Profile: ADIDocumentationObservation
Parent: Observation
Id: ADI-DocumentationObservation
Title: "ADI Documentation Observation"
Description: "This profile is used to indicate if additional advance directive documents, such as physician order for life sustaining treatment (MOLST or POLST) or Do Not Resuscitate Order (DNR) exist and a reference to the document."

* text 1..1 MS

* status = #final
//TODO What should we use for category. Observations are commonly queried on category.

// TODO should the code.coding?
* code MS
* code = $LOINC#42348-3 "Advance healthcare directives"

* extension contains
    adi-document-location named ADIDocumentLocationExtension 0..1 MS // fix for FHIR-40376

* subject 1..1 MS
* subject only Reference($USCorePatient)

* focus ^short = "Reference to the additional document this observation is about"

* effective[x] 1..1 MS  // CONF:4445-33113

* value[x] 1..1 MS
* value[x] only CodeableConcept

* valueCodeableConcept from ADIDocumentationTypeVS (extensible)

// need to add derived from documentReference to allow pointing to the actual order
* derivedFrom only Reference(ADIDocumentReference)
* derivedFrom ^short = "Reference to the additional document that exists"
* performer 1..1
* note MS
* performer ^comment = "The party responsible for or made the observation. For individual (patient) authored advance directive documents this will likely be the patient."

