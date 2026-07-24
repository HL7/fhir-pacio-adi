Profile: ADIDocumentationObservation
Parent: $USCoreADIDocumentation
Id: ADI-DocumentationObservation
Title: "ADI Documentation Observation"
Description: "This profile is used to indicate if additional advance directive documents, such as physician order for life sustaining treatment (MOLST or POLST) or Do Not Resuscitate Order (DNR) exist and a reference to the document."

* text 1..1 MS

* status = #final

// mlt_20260722: removed code since it is already specified in US Core as 45473-6 “Advance healthcare directive completed”. The observation is a specific question for whether one was completed, as opposed to the original ADI profile where the Observation.code of LOINC 42348-3 states/asserts that it is an Advance Directive.

// * code MS
// * code = $LOINC#42348-3 "Advance healthcare directives"

// The absent-reason extension is required for a "No" answer; unlike
// Observation.dataAbsentReason, it does not conflict with US Core obs-6.

* extension contains
    adi-documentation-absent-reason named ADIDocumentationAbsentReason 0..1 MS // mlt_20260722: added to support Declined ACP Service representation (https://jira.hl7.org/browse/FHIR-57898)
    // adi-document-location named ADIDocumentLocationExtension 0..1 MS and // fix for FHIR-40376; mlt_20260724: removed as part of fix for FHIR-57898

* obeys obs-data-absent-reason-required // mlt_20260722: added to support Declined ACP Service representation (https://jira.hl7.org/browse/FHIR-57898)

* subject 1..1 MS
* subject only Reference($USCorePatient)

* focus ^short = "Reference to the additional document this observation is about"

* effective[x] 1..1 MS  // CONF:4445-33113

// * value[x] 1..1 MS
// * value[x] only CodeableConcept
// * valueCodeableConcept from ADIDocumentationTypeVS (extensible)  // mlt_20260722: commented out since US Core has a "yes/no" VS binding



// need to add derived from documentReference to allow pointing to the actual order
* derivedFrom only Reference(ADIDocumentReference)
* derivedFrom ^short = "Reference to the additional document that exists"
* performer 1..1
* note MS
* performer ^comment = "The party responsible for or made the observation. For individual (patient) authored advance directive documents this will likely be the patient."
