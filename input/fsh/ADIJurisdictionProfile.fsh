Profile: ADIJurisdiction
Parent: Observation
Id: ADI-Jurisdiction
Title: "ADI Jurisdiction"
Description: "This profile enables Jurisdiction Information to be carried in the body of Composition rather than as an extension on Composition.  This change will align the approach taken in CDA to represent the Jurisdiction of the Source Form within the body of the document in the Source Form Section."

* code 1..1 MS
* code = $LOINC#101349-9 "Jurisdiction where advance directive is accepted [Location]"

* valueCodeableConcept 1..1 MS
* valueCodeableConcept from $HL7JurisdictionCodes (extensible)