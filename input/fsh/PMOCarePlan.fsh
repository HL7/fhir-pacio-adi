Profile: PADIPMOCarePlan
Parent: CarePlan
Id: PADI-PMOCarePlan
Title: "ADI Portable Medical Order Care Plan"
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

// TODO find a proper code 
* category[portable_medical_order] = $SNOMEDCT#100821-8 //"Advance care plan"


* subject 1..1 MS
* subject only Reference($USCorePatient)

* addresses 1..* MS
* addresses ^comment = "TODO"

* activity.reference only Reference(PADIPMOServiceRequest)

//* goal ^short = "Patient's preferences and goals for the scope of this care plan."
//* goal 1..* MS
//* goal only Reference(PADIPersonalInterventionPreference or PADIPersonalGoal or PADICareExperiencePreference)

//* extension contains
    //padi-goal-order-by-descending-priority-extension named GoalOrderByDescendingPriority 0..1 