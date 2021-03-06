Profile: PADIGoal
Parent: $USCoreGoal
Id: PADI-Goal
Title: "ADI Goal"
Description: "This profile defines the base requirements for all ADI Goals."

* ^abstract = true 

* obeys goal-subject-expressedby


* text 1..1 MS

* category 1..1 MS
* category.text MS
* description 1..1 MS
* description.extension contains
    padi-contextualValue-extension named ContextualValueExtension 0..1
* description.extension[padi-contextualValue-extension] ^comment = "Contextual Value contains the components that make up the Actual Value for use by systems for rendering or other purposes. It must not include additional information."

* subject 1..1 MS
* subject only Reference($USCorePatient)
* target MS
* target.measure MS
* target.detail[x] MS

* expressedBy 1..1 MS
* expressedBy only Reference($USCorePatient)

* note MS





Profile: PADIPersonalGoal
Parent: PADIGoal
Id: PADI-PersonalGoal
Title: "ADI Personal Goal"
Description: "This profile is a statement that presents the author's personal health and treatment goals that are pertinent when planning his or her care."

* category from PADIHealthGoalsVS (extensible)



Invariant:  goal-subject-expressedby
Description: "subject and expressedBy refer to the same patient"
Expression: "subject = expressedBy"
Severity:   #error

