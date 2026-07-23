// ********* Invariants *******************

Invariant: comp-section-code-equals-type
Description: "Composition.section.code SHALL be equal to Composition.type"
Severity: #error
Expression: "section.code = type"

// mlt_20260722: commented out this Invariant for FHIR-57898. It derives from US Core DocumentationObservation, which has obs-6 'dataAbsentReason SHALL only be present if Observation.value[x] is not present (dataAbsentReason.empty() or value.empty())’. Consequently both Invariants conflict. Will review with ADI team on whether we should just address it with narrative guidance.
// Invariant: obs-data-absent-reason-required
// Description: "Observation.dataAbsentReason SHALL be present when Observation.code contains SNOMED CT code 373067005."
// Severity: #error
// Expression: "code.coding.where(system = 'http://snomed.info/sct' and code = '373067005').exists() implies dataAbsentReason.exists()"