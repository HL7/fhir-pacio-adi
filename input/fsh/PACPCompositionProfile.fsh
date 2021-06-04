Profile: PADIPACPComposition
Parent: PADIHeader
Id: PADI-PACPComposition
Title: "ADI Personal Advance Care Plan Composition"
Description: "This profile encompasses information that makes up the author’s advance care information plan."

* section ^slicing.discriminator.type = #pattern 
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.ordered = false   // can be omitted, since false is the default
* section ^slicing.description = "Slice based on $this value"

* section 1..*
* section.text 1..1 MS
* section ^slicing.discriminator.type = #pattern 
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.ordered = false   // can be omitted, since false is the default
* section ^slicing.description = "Slice based on $this value"
* section contains
    healthcare_agent_appointment 1..1 MS and
    gpp_personal_care_experience 0..1 MS and
    gpp_for_end_of_life_or_severely_dibilitating_condition 0..1 MS and
    gpp_upon_death 0..1 MS and
    administrative_information 0..1 MS

* section[healthcare_agent_appointment].title 1..1 MS
* section[healthcare_agent_appointment].code 1..1 MS
* section[healthcare_agent_appointment].code = $LOINC#81335-2
* section[healthcare_agent_appointment].entry MS
* section[healthcare_agent_appointment].entry only Reference(PADIHealthcareAgent or PADIConsentForHealthcareAgent)

* section[gpp_personal_care_experience].title 1..1 MS
* section[gpp_personal_care_experience].code 1..1 MS
* section[gpp_personal_care_experience].code = $LOINC#81338-6
* section[gpp_personal_care_experience].entry MS
* section[gpp_personal_care_experience].entry only Reference(PADICareExperiencePreference or PADIPersonalPrioritiesOrganizer or PADIPersonalHealthGoal)  // Missing personal Health Goal

* section[gpp_for_end_of_life_or_severely_dibilitating_condition].title 1..1 MS
* section[gpp_for_end_of_life_or_severely_dibilitating_condition].code 1..1 MS
* section[gpp_for_end_of_life_or_severely_dibilitating_condition].code = $LOINC#81336-0
* section[gpp_for_end_of_life_or_severely_dibilitating_condition].entry MS
* section[gpp_for_end_of_life_or_severely_dibilitating_condition].entry only Reference(PADIPersonalInterventionPreference or PADIPersonalPrioritiesOrganizer or PADIPMOLSTObservation or PADIPersonalHealthGoal)  // Missing personal Health Goal

* section[gpp_upon_death].title 1..1 MS
* section[gpp_upon_death].code 1..1 MS
* section[gpp_upon_death].code = $LOINC#81337-8
* section[gpp_upon_death].entry MS
* section[gpp_upon_death].entry only Reference(PADIPersonalInterventionPreference or PADIPersonalPrioritiesOrganizer or PADIAutopsyObservation or PADIOrganDonationObservation or PADIPersonalHealthGoal)  // Missing personal Health Goal

* section[administrative_information].title 1..1 MS
* section[administrative_information].code 1..1 MS
* section[administrative_information].code = $LOINC#81339-4
