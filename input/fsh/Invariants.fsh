// ********* Invariants *******************

Invariant: comp-section-code-equals-type
Description: "Composition.section.code SHALL be equal to Composition.type"
Severity: #error
Expression: "section.code = type"

Invariant: obs-data-absent-reason-required
Description: "The ADI Documentation Absent Reason extension SHALL be present when Observation.valueCodeableConcept contains SNOMED CT code 373067005."
Severity: #error
Expression: "value.coding.where(system = 'http://snomed.info/sct' and code = '373067005').exists() implies extension.where(url = 'http://hl7.org/fhir/us/pacio-adi/StructureDefinition/adi-documentation-absent-reason').exists()"
