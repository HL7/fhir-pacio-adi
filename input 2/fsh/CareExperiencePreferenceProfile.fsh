Profile: ADICareExperiencePreference
Parent: Observation
Id: ADI-CareExperiencePreference
Title: "ADI Care Experience Preference"
Description: "Care Experience Preference is a clinical statement that presents the author's personal thoughts about something a person feels is relevant to their care experience and may be pertinent when planning their care."


* category ^slicing.discriminator.type = #value 
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^slicing.ordered = false   // can be omitted, since false is the default
* category ^slicing.description = "Slice based on $this value"

* category 1..*
//* category from $VSACADICareExperiencePreferences (extensible) //moved from 'category' to 'code' FHIR-35078
* category contains
    type 1..1 MS 
    
* category[type] = ADIPreferenceCategoryCS#care-experience-preference

* code 1..1 MS
* code from $VSACADICareExperiencePreferences (extensible)
* code.text MS

* text 1..1 MS

* status = #final

* subject 1..1 MS
* subject only Reference($USCorePatient)

* value[x] 1..1 MS

* extension contains adi-contextualValue-extension named ContextualValueExtension 0..1

/*Profile: ADICareExperiencePreference
Parent: Observation
Id: ADI-CareExperiencePreference
Title: "ADI Care Experience Preference"
Description: "Care Experience Preference is a clinical statement that presents the author's personal thoughts about something he or she feels is relevant to his or her care experience and may be pertinent when planning his or her care."

* text 1..1 MS
* status = #final


* code 1..1 MS
* code from ADICareExperiencePreferencesVS (extensible)
* code.text MS
* subject 1..1 MS
* subject only Reference($USCorePatient)

* value[x] 1..1 MS
* value[x].extension contains
    adi-contextualValue-extension named ContextualValueExtension 0..1

* value[x].extension[adi-contextualValue-extension] ^comment = "Contextual Value contains the components that make up the Actual Value for use by systems for rendering or other purposes. It must not include additional information."

* note MS

*/
// If we restrict the value type, have guidance about including information in note