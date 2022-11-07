Profile: PADIPMOComposition
Parent: PADIHeader
Id: PADI-PMOComposition
Title: "ADI Portable Medical Order Composition"
Description: "This profile encompasses information that makes up a practitioner's portable medical order."

/*


CDA sections are:
US Realm Person Name (PN.US.FIELDED) (required)
ePOLST Medical Orders Section (required)
ePOLST Completion Information Section (optional)




CDA ePOLST entries are:
Cardiopulmonary Resuscitation Order Act (ePOLST) (required)
    drafted

Initial Treatment Orders Act (ePOLST) (required)
    drafted

Additional Orders Act (ePOLST) (required)
    How to address? Should it just be the base serviceRequest or do we need another profile for "other"

Medically Assisted Nutrition Orders Act (ePOLST) (required)
    drafted

ePOLST Clinical Instructions (optional)
    TODO, need to review with team. Not clear if these exist separately from orders are associated to specific orders
    It a seems these can be at the entry level or at the order level. Need to figure out how this can be done at both.

ePOLST Administrative Information (optional)
    TODO, is there a difference from the PACP administrative info


Orders Participants 100827-5 where to go? In CDA, this goes in completion section in an observation
have the following values
LA33482-3 Patient with decision-making capacity
LA33483-1 Court appointed guardian
LA33485-6 Parent of minor
LA33487-2 Legal surrogate/health care agent
LA46-8 Other
*/

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
    portable_medical_orders 1..1 MS and
    //additional_documentation 0..1 MS and
    //witness_and_notary 0..1 MS and
    completion_information 0..1 MS


* section[portable_medical_orders] ^short = "Portable Medical Orders"
* section[portable_medical_orders].title 1..1 MS
* section[portable_medical_orders].code 1..1 MS
* section[portable_medical_orders].code = $LOINC#81337-8
* section[portable_medical_orders].entry MS
* section[portable_medical_orders].entry only Reference(PADIPMOServiceRequest)

/*
* section[additional_documentation] ^short = "Observations regarding the existence of other advance directive related information"
* section[additional_documentation].title 1..1 MS
* section[additional_documentation].code 1..1 MS
* section[additional_documentation].code = $LOINC#77599-9

* section[additional_documentation].entry only Reference(PADIDocumentationObservation)


* section[witness_and_notary] ^short = "Witness and notary information"
* section[witness_and_notary].title 1..1 MS
* section[witness_and_notary].code 1..1 MS
* section[witness_and_notary].code = $LOINC#81339-4

* section[witness_and_notary].entry only Reference(PADIParticipant)
*/
* section[completion_information] ^short = "Portable medical order completion information"
* section[completion_information].title 1..1 MS
* section[completion_information].code 1..1 MS
* section[completion_information].code = $LOINC#100970-3 // Code is LOINC pre-release as on 11/03/2022 - https://loinc.org/prerelease/
// need to slice on entries. OrderReview has a max of 1 and orders participant has a max of 1
* section[completion_information].entry ^slicing.discriminator.type = #pattern 
* section[completion_information].entry ^slicing.discriminator.path = "$this"
* section[completion_information].entry ^slicing.rules = #open 
* section[completion_information].entry ^slicing.ordered = false
* section[completion_information].entry ^slicing.description = "Slice based on $this value"

* section[completion_information].entry contains
    orders_review 0..1 and
    orders_participant 0..1

* section[completion_information].entry[orders_review] only Reference(PADIPMOReviewObservation)
* section[completion_information].entry[orders_participant] only Reference(PADIPMOParticipantObservation)


// TODO add entries
//Orders Review Observation
//Orders Participants Observation
//Administrative Information? Is this an observation with code 100828-3 "Portable medical order administrative information" or is this a new section with text?





/*
Invariant:  HCA-section-entries0
Description: "0 - If healthcare agent section entry exists, then the HCA consent entry and HCA relatedPerson entry must exist"
//Expression: "entry.exists() implies (entry.where($this is Consent).exists() and entry.where($this is RelatedPerson).exists())"
Expression: "entry.exists().not()"
//Expression: "entry.resolve() is Consent" fail
Severity:   #error



Invariant:  HCA-section-entries1
Description: "1 -If healthcare agent section entry exists, then the HCA consent entry and HCA relatedPerson entry must exist"
//Expression: "entry.exists() implies (entry.where($this is Consent).exists() and entry.where($this is RelatedPerson).exists())"
Expression: "entry.where($this.resolve() is Consent)"
Severity:   #error



Invariant:  HCA-section-entries2
Description: "2 - If healthcare agent section entry exists, then the HCA consent entry and HCA relatedPerson entry must exist"
//Expression: "entry.exists() implies (entry.where($this is Consent).exists() and entry.where($this is RelatedPerson).exists())"
Expression: "entry.where($this.resolve() is relatedPerson)"
Severity:   #error

*/
