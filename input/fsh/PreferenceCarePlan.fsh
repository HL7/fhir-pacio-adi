Profile: ADIPreferenceCarePlan
Parent: $USCoreCarePlan
Id: ADI-PreferenceCarePlan
Title: "ADI Preference Care Plan"
Description: "The Preference Care Plan is a means for an individual to express their goals and preferences under certain circumstances that may be pertinent when planning his or her care."

* text 0..1 MS

* status = #active
* intent = #proposal

* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"

* category ^slicing.rules = #open
* category ^slicing.ordered = false   // can be omitted, since false is the default
* category ^slicing.description = "Slice based on $this value"
* category contains
    advance_care_planning 1..1 MS

* category[advance_care_planning] = $LOINC#81378-2 "Goals, preferences, and priorities under certain health conditions Narrative - Reported"
* title 1..1 MS

* subject 1..1 MS
* subject only Reference($USCorePatient)

* addresses 0..* MS
* addresses ^short = "The future potential health scenario or condition in which this ADI preference care plan is relevant (use display only for potential conditions the patient does not currently have)"
* addresses ^comment = "The conditions or circumstances in which the stated preferences and goals of the care plan apply. If there are no contained or referenceable resources (e.g. these are potential future conditions that do not represent a condition the patient currently has), the display should be in addresses.display. If there are no specific circumstances, then the display should indicate something like 'General' or 'All'. Identified future potential health scenarios should not be expressed as a Condition resource. Instead, the future health scenario codes are to be placed in the adi-condition-code-extension. If there is conditional (AND/OR) logic involved in indicating the situation in which the care plan is   to be considered to address, this is to be included in addresses.text as text."

* goal ^short = "Patient's goals for the scope of this care plan."
* goal 0..* MS
* goal only Reference(ADIPersonalGoal)

* supportingInfo ^short = "Observations of a patient's preferences for the scope of this care plan."
* supportingInfo 0..* MS
* supportingInfo only Reference(ADICareExperiencePreference)

* activity.reference only Reference($USCoreServiceRequest)

* obeys goal-or-supportingInfo-required

* extension contains
    adi-goal-order-by-descending-priority-extension named GoalOrderByDescendingPriority 0..1 and
    adi-condition-code-extension named ADIConditionCodeExtension 0..*

Invariant: goal-or-supportingInfo-required
Description: "Either goal or supportingInfo must exist, ie. goal and supportingInfo cannot both be blank, ie. if goal does not exist then supportingInfo must exist."
Expression: "goal.empty() implies supportingInfo.exists()"
Severity:   #error