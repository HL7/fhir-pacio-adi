Profile: PADIPersonalGoal
Parent: $USCoreGoal
Id: PADI-PersonalGoal
Title: "ADI Personal Goal"
Description: "This profile is a statement that presents the author's personal health and treatment goals that are pertinent when planning his or her care."

//[TODO]
//* ^purpose = "here is a description in markdown"

* text 1..1 MS

//* lifeCycleStatus = #accepted
* category 1..1 MS
* category from PADIHealthGoalsVS (extensible)
* category.text MS

* target MS
* target.measure MS
* target.detail[x] MS

* note MS



