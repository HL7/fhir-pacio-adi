Profile: ADIPersonAuthoredCareExperiencePreference
Parent: Observation
Id: ADI-PersonAuthoredCareExperiencePreference
Title: "ADI Person-Authored Care Experience Preference"
Description: "Person-Authored Care Experience Preference is a clinical statement that presents the author's personal thoughts about something a person feels is relevant to their care experience and may be pertinent when planning their care."


* category ^slicing.discriminator.type = #value 
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^slicing.ordered = false   // can be omitted, since false is the default
* category ^slicing.description = "Slice based on $this value"

* category 1..*
//* category from $VSACADIPersonAuthoredCareExperiencePreferences (extensible) //moved from 'category' to 'code' FHIR-35078
* category contains
    type 1..1 MS 
    
* category[type] = ADIPreferenceCategoryCS#care-experience-preference

* code 1..1 MS
* code from $VSACADIPersonAuthoredCareExperiencePreferences (extensible)
* code.text MS

* text 1..1 MS

* status = #final

* subject 1..1 MS
* subject only Reference($USCorePatient)

* value[x] 1..1 MS

* extension contains adi-enclosedPrecondition-extension named EnclosedPreconditionExtension 0..1
