Profile: ADIPMOCarePlan
Parent: $USCoreCarePlan
Id: ADI-PMOCarePlan
Title: "ADI PMO Care Plan"
Description: "The Portable Medical Order Care Plan."

//* text 1..1 MS

* status = #active
* intent = #order

* category ^slicing.discriminator.type = #pattern 
* category ^slicing.discriminator.path = "$this"
// Should the pattern be open or closed?
* category ^slicing.rules = #open
* category ^slicing.ordered = false   // can be omitted, since false is the default
* category ^slicing.description = "Slice based on $this value"
* category contains
    portable_medical_order 1..1 MS

* category[portable_medical_order] = $LOINC#93037-0 "Portable medical order form" //"Portable medical order form"


* subject 1..1 MS
* subject only Reference($USCorePatient)

* addresses 0..* MS
* addresses ^comment = "TODO"

* activity.reference only Reference(ADIPMOServiceRequest)

//* goal ^short = "Patient's preferences and goals for the scope of this care plan."
//* goal 1..* MS
//* goal only Reference(ADIPersonalInterventionPreference or ADIPersonalGoal or ADICareExperiencePreference)

//* extension contains
    //padi-goal-order-by-descending-priority-extension named GoalOrderByDescendingPriority 0..1 