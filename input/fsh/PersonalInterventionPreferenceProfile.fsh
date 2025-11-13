Profile: ADIPersonalInterventionPreference
Parent: Observation
Id: ADI-PersonalInterventionPreference
Title: "ADI Person Authored Personal Intervention Preference"
Description: "This profile is used to represent a personal preference for a type of medical intervention (treatment) request under certain conditions."

* category ^slicing.discriminator.type = #value 
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^slicing.ordered = false   // can be omitted, since false is the default
* category ^slicing.description = "Slice based on $this value"

* category 1..*
//* category from ADIInterventionPreferencesVS (extensible) //moved from 'category' to 'code' FHIR-35078 
* category contains
    type 1..1 MS 
    
* category[type] = ADIPreferenceCategoryCS#intervention-preference

* code 1..1 MS
* code from $VSACADIInterventionPreferencesEndOfLifeGrouping (extensible) // ADIInterventionPreferencesVS (extensible)
* code.text MS

* text 1..1 MS

* status = #final

* subject 1..1 MS
* subject only Reference($USCorePatient)

* value[x] 1..1 MS

* extension contains adi-enclosedPrecondition-extension named EnclosedPreconditionExtension 0..1

// TODO Fix invariant
//* obeys value-personal-intervention-preference-ordinal

Invariant:  value-personal-intervention-preference-ordinal
Description: "If the ADI Person Authored Personal Intervention Preference code is from the ADI Person Authored Personal Intervention Preference Ordinal ValueSet, the value SHALL be 'Y' or 'N'"
Expression: "category.coding.where(code.memberOf('http://hl7.org/fhir/us/pacio-adi/ValueSet/ADIInterventionPreferencesOrdinalVS')).exists() implies (description.coding.code = 'Y' or description.coding.code = 'N')"
//Expression: "category.coding.where(code.memberOf('http://hl7.org/fhir/us/pacio-adi/ValueSet/ADIInterventionPreferencesOrdinalVS')).exists() implies description.coding.where(code.memberOf('http://terminology.hl7.org/ValueSet/v2-0136')).exists()"
//Expression: "category.coding.code.memberOf('http://hl7.org/fhir/us/pacio-adi/ValueSet/ADIInterventionPreferencesOrdinalVS').exists()"
Severity:   #error

