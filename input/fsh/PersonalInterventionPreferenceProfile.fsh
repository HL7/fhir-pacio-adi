Profile: ADIPersonalInterventionPreference
Parent: Observation
Id: ADI-PersonalInterventionPreference
Title: "Personal Intervention Preference"
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
* code from ADIInterventionPreferencesVS (extensible)
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
Description: "If the Personal Intervention Preference code is from the Personal Intervention Preference Ordinal ValueSet, the value SHALL be 'Y' or 'N'"
Expression: "category.coding.where(code.memberOf('http://hl7.org/fhir/us/pacio-adi/ValueSet/ADIInterventionPreferencesOrdinalVS')).exists() implies (description.coding.code = 'Y' or description.coding.code = 'N')"
//Expression: "category.coding.where(code.memberOf('http://hl7.org/fhir/us/pacio-adi/ValueSet/ADIInterventionPreferencesOrdinalVS')).exists() implies description.coding.where(code.memberOf('http://terminology.hl7.org/ValueSet/v2-0136')).exists()"
//Expression: "category.coding.code.memberOf('http://hl7.org/fhir/us/pacio-adi/ValueSet/ADIInterventionPreferencesOrdinalVS').exists()"
Severity:   #error

/*
Profile: ADIPersonalInterventionPreference
Parent: Observation
Id: ADI-PersonalInterventionPreference
Title: "ADI Personal Intervention Preference"
Description: "This profile is used to represent a personal preference for a type of medical intervention (treatment)."

* text 1..1 MS
* status = #final
* code MS
* code from ADIInterventionPreferencesVS (extensible)
* code.text MS

* value[x] 1..1 MS
* value[x].extension contains
    adi-enclosedPrecondition-extension named EnclosedPreconditionExtension 0..1
* value[x].extension[adi-enclosedPrecondition-extension] ^comment = "Contextual Value contains the components that make up the Actual Value for use by systems for rendering or other purposes. It must not include additional information."

* note MS


*/


/*
Profile: ADIPersonalInterventionRequestPreference
Parent: ServiceRequest
Id: ADI-PersonalInterventionRequestPreference
Title: "ADI Personal Intervention Request Preference"
Description: "This profile is used to represent a personal preference for a type of medical intervention (treatment) request under certain conditions."

// Need to think about how better to structurally amp.
* text 1..1 MS
* status = #active
// [TODO] Need to determine if it should be a proposal, plan, or directive
* intent = #proposal

* doNotPerform MS


//[TODO] Guidance that if code is not available that there would be text. Could this be a valueset that includes LOINC and Snomed examples (extensible)?
* code 1..1 MS
* code from ADIInterventionPreferencesVS (extensible)
* code.text MS

// [TODO] How do we handle items where there is more expected information (e.g. [Reported]). Perhaps Order detail. That needs guidance and or/binding

* orderDetail MS
* orderDetail.text MS

* subject 1..1 MS
* subject only Reference($USCorePatient)

//healthcare_agent//[TODO] requires guidance
* asNeeded[x] MS
* asNeededCodeableConcept.text MS

* requester 1..1
* requester only Reference($USCorePatient)

* reasonCode MS
* reasonCode.text MS

* supportingInfo MS

* note MS

*/