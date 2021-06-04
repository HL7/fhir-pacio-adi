


Profile: PADIPersonalInterventionPreference
Parent: Observation
Id: PADI-PersonalInterventionPreference
Title: "ADI Personal Intervention Preference"
Description: "This profile is used to represent a personal preference for a type of medical intervention (treatment)."

* text 1..1 MS
* status = #final
* code MS
* code from PADIInterventionPreferencesVS (extensible)

* value[x] 1..1 MS
* note MS






Profile: PADIPersonalInterventionRequestPreference
Parent: ServiceRequest
Id: PADI-PersonalInterventionRequestPreference
Title: "ADI Personal Intervention Request Preference"
Description: "This profile is used to represent a personal preference for a type of medical intervention (treatment) request under certain conditions."

// Need to think about how better to structurally amp.
* text 1..1 MS
* status = #active
// [TODO] Need to determine if it should be a proposal, plan, or directive
* intent = #directive

* doNotPerform MS
//[TODO] Guidance that if code is not available that there would be text. Could this be a valueset that includes LOINC and Snomed examples (extensible)?
* code 1..1 MS
// [TODO] How do we handle items where there is more expected information (e.g. [Reported]). Perhaps Order detail. That needs guidance and or/binding
* code from PADIInterventionPreferencesVS (extensible)
* orderDetail MS

* subject only Reference($USCorePatient)

//[TODO] requires guidance
* asNeeded[x] MS

* requester 1..1
* requester only Reference($USCorePatient)

* reasonCode MS

* supportingInfo MS

* note MS