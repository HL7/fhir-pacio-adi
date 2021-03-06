/*Profile: PADICareExperiencePreference
Parent: Observation
Id: PADI-CareExperiencePreference
Title: "ADI Care Experience Preference"
Description: "Care Experience Preference is a clinical statement that presents the author's personal thoughts about something he or she feels is relevant to his or her care experience and may be pertinent when planning his or her care."

* text 1..1 MS
* status = #final


* code 1..1 MS
* code from PADICareExperiencePreferencesVS (extensible)
* code.text MS
* subject 1..1 MS
* subject only Reference($USCorePatient)

* value[x] 1..1 MS
* value[x].extension contains
    padi-contextualValue-extension named ContextualValueExtension 0..1

* value[x].extension[padi-contextualValue-extension] ^comment = "Contextual Value contains the components that make up the Actual Value for use by systems for rendering or other purposes. It must not include additional information."

* note MS

*/
// If we restrict the value type, have guidance about including information in note


Profile: PADICareExperiencePreference
Parent: PADIGoal
Id: PADI-CareExperiencePreference
Title: "ADI Care Experience Preference"
Description: "Care Experience Preference is a clinical statement that presents the author's personal thoughts about something he or she feels is relevant to his or her care experience and may be pertinent when planning his or her care."

* category from PADICareExperiencePreferencesVS (extensible)