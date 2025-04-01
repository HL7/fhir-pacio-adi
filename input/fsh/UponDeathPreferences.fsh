Profile: ADIUponDeathPreference
Parent: Observation
Id: ADI-UponDeathPreferences
Title: "ADI Upon Death Preferences"
Description: "This profile is used to represent the author's thoughts about preferences upon death."

* text 1..1 MS
* status = #final

* category = #care-experience-preference
* code 1..1 MS
* code from $VSACUponDeathPreferences (extensible)
* code.text 
* subject 1..1 MS
* subject only Reference($USCorePatient)

* value[x] 1..1 MS
* value[x] only string

