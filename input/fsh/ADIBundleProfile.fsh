Profile: ADIBundle
Parent: Bundle
Id: ADI-Bundle
Title: "ADI Bundle"
Description: "The ADI Bundle profile is used to represent a collection of resources that are related to advance directives information."

* type = #document
* identifier 1..1 MS

* entry 1..*
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slice based on the entry.resource profile"

* entry contains patient 1..1 MS and 
    pacp-composition 0..* MS and
    pmo-composition 0..* MS

* entry[patient].resource only $USCorePatient
* entry[pacp-composition].resource only ADIPACPComposition
* entry[pmo-composition].resource only ADIPMOComposition