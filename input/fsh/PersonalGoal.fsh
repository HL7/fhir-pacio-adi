Profile: ADIPersonalGoal
Parent: $USCoreGoal
Id: ADI-PersonalGoal
Title: "ADI Personal Goal"
Description: "This profile is a statement that presents the author's personal health and treatment goals that are pertinent when planning their care."

* category ^slicing.discriminator.type = #value 
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^slicing.ordered = false   // can be omitted, since false is the default
* category ^slicing.description = "Slice based on $this value"
* category MS
* category 1..*
* category.text MS
* category contains type 1..1 MS 
* category[type] from $HealthGoalsGrouping

* text 1..1 MS

* description 1..1 MS
// * description from $PersonalGoalGrouping  # MLT_TO_ADD once the VSAC valueset is available.
* description.extension contains
    adi-enclosedPrecondition-extension named EnclosedPreconditionExtension 0..1
* description.extension[adi-enclosedPrecondition-extension] ^comment = "Contextual Value contains the components that make up the Actual Value for use by systems for rendering or other purposes. It must not include additional information."

* subject 1..1 MS
* subject only Reference($USCorePatient)

* expressedBy 1..1 MS
* expressedBy only Reference($USCorePatient)

* obeys goal-subject-expressedby

Invariant:  goal-subject-expressedby
Description: "subject and expressedBy refer to the same patient"
Expression: "subject = expressedBy"
Severity:   #error

