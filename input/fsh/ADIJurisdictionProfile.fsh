Profile: ADIJurisdiction
Parent: Observation
Id: ADI-Jurisdiction
Title: "ADI Jurisdiction"
Description: "The ADI Jurisdiction Observation profile includes information about the state jurisdiction of the source advance healthcare directive document. The observation.value (codeableConcept) holds the two letter abbreviation of the relevant state which accepts this form. A valueString can be used to hold the name of a form that may be accepted in multiple states such as the 'National POLST Form', 'American Bar Association Power of Attorney Form'."

* code 1..1 MS
* code = $LOINC#101349-9 "Jurisdiction where advance directive is accepted [Location]"

* valueCodeableConcept 1..1 MS
* valueCodeableConcept from $HL7JurisdictionCodes (extensible)