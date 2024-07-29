Profile: ADIPMOComposition
Parent: ADICompositionHeader
Id: ADI-PMOComposition
Title: "ADI Portable Medical Order Composition"
Description: "This profile encompasses information that makes up a practitioner's portable medical order."

/*

Need observation for no additonal order (Specific profile an documentation on use)
https://loinc.org/100824-2/
Some sort of Value of NA or NI.


Connectathon: How to do addtional orders. What code and how to negate. Predefined use a different pattern. Like Yes CPR or No CPR.

TODO will need descriptions of using service request for all orders (including additional orders) And the observation for no additional orders


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


// TODO, need a category code
//* category = $LOINC#81352-7	"Medical Order for Life-Sustaining Treatment, Physician Order for Life-Sustaining Treatment, or a similar medical order is in place [Reported]"

* author only Reference($USCorePractitionerRole)

* type = $LOINC#93037-0 // "Portable medical order form"

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
* section ^slicing.description = "Slice based on code"
* section contains
    portable_medical_orders 1..1 MS and
    //additional_documentation 0..1 MS and
    //witness_and_notary 0..1 MS and
    gpp_personal_care_experience 0..1 and
    completion_information 0..1 MS


* section[portable_medical_orders] ^short = "Portable Medical Orders"
* section[portable_medical_orders].extension[adi-clause-extension] ^short = "Section clause, additional instructions, or information"
* section[portable_medical_orders].title 1..1 MS
* section[portable_medical_orders].code 1..1 MS
//* section[portable_medical_orders].code = $LOINC#100821-8 // "National POLST form: portable medical order panel"
* section[portable_medical_orders].code = $LOINC#93037-0 "Portable medical order form" 

* section[portable_medical_orders].entry MS
* section[portable_medical_orders].entry only Reference(ADIPMOServiceRequest or ADIPMONoAdditionalRequestObservation)

// TODO: reconsider slicing entry as profile slicing causes a significant operational cost (see https://chat.fhir.org/#narrow/stream/179166-implementers/topic/Slicing.20Composition.20Entries and 
// https://www.hl7.org/fhir/profiling.html profile discriminator type)
* section[portable_medical_orders].entry ^slicing.discriminator.type = #profile 
* section[portable_medical_orders].entry ^slicing.discriminator.path = "resolve()"
* section[portable_medical_orders].entry ^slicing.rules = #open
* section[portable_medical_orders].entry ^slicing.ordered = false   // can be omitted, since false is the default
* section[portable_medical_orders].entry ^slicing.description = "Slice based on $this value"
* section[portable_medical_orders].entry contains
    cardiopulmonary_resuscitation_service_request 0..1 MS and
    initial_treatment_service_request 0..1 MS and
    medically_assisted_nutrition_service_request 0..1 MS and
    additional_request_service_request 0..* MS and
    no_additional_request_service_request 0..1 MS


* section[portable_medical_orders].entry[cardiopulmonary_resuscitation_service_request] only Reference(ADIPMOCPRServiceRequest)
* section[portable_medical_orders].entry[initial_treatment_service_request] only Reference(ADIPMOInitialTreatmentServiceRequest)
* section[portable_medical_orders].entry[medically_assisted_nutrition_service_request] only Reference(ADIPMOMedicallyAssistedNutritionServiceRequest)
* section[portable_medical_orders].entry[additional_request_service_request] only Reference(ADIPMOAdditionalRequestServiceRequest)
* section[portable_medical_orders].entry[no_additional_request_service_request] only Reference(ADIPMONoAdditionalRequestObservation)

// TODO, should we have an invariant that additional_request_service_request slice and no_additional_request_service_request cannot exist together?



// TODO add longer description that these are not orders, but further definition of Goals the patient has to help inform medical decisions
* section[gpp_personal_care_experience] ^short = "Quality of Life related personal care experiences, personal goals, and priorities"
* section[gpp_personal_care_experience].title 1..1 MS
* section[gpp_personal_care_experience].code 1..1 MS
* section[gpp_personal_care_experience].code = $LOINC#81338-6
* section[gpp_personal_care_experience].orderedBy MS
* section[gpp_personal_care_experience].entry MS
* section[gpp_personal_care_experience].entry only Reference(ADICareExperiencePreference or ADIPersonalPrioritiesOrganizer or ADIPersonalGoal)

/*
* section[additional_documentation] ^short = "Observations regarding the existence of other advance directive related information"
* section[additional_documentation].title 1..1 MS
* section[additional_documentation].code 1..1 MS
* section[additional_documentation].code = $LOINC#77599-9

* section[additional_documentation].entry only Reference(ADIDocumentationObservation)


* section[witness_and_notary] ^short = "Witness and notary information"
* section[witness_and_notary].title 1..1 MS
* section[witness_and_notary].code 1..1 MS
* section[witness_and_notary].code = $LOINC#81339-4

* section[witness_and_notary].entry only Reference(ADIParticipant)
*/
* section[completion_information] ^short = "Portable medical order completion information"
* section[completion_information].extension[adi-clause-extension] ^short = "Administrative, instructional, and/or legal information"
* section[completion_information].title 1..1 MS
* section[completion_information].code 1..1 MS
* section[completion_information].code = $LOINC#100970-3 // "Portable medical order completion information" // Code is LOINC pre-release as on 11/03/2022 - https://loinc.org/prerelease/
// need to slice on entries. OrderReview has a max of 1 and orders participant has a max of 1

* section[completion_information].entry ^slicing.discriminator.type = #profile
* section[completion_information].entry ^slicing.discriminator.path = "resolve()"
* section[completion_information].entry ^slicing.rules = #open 
* section[completion_information].entry ^slicing.ordered = false
* section[completion_information].entry ^slicing.description = "Slice based on $this value"

* section[completion_information].entry contains
    orders_review 0..* and
    orders_participant 0..* and
    hospice_observation 0..1 and 
    hospice_agency 0..1

* section[completion_information].entry[orders_review] only Reference(ADIPMOReviewObservation)
* section[completion_information].entry[orders_participant] only Reference(ADIPMOParticipantObservation)
* section[completion_information].entry[hospice_observation] only Reference(ADIPMOHospiceObservation)
* section[completion_information].entry[hospice_agency] only Reference($USCoreOrganization)



// NEW For Connectathon
// 
// ServiceRequest
// Consent at the document level (not connectathon)
// For CarePlan, look at MCC to see about CarePLan reconciliation. CarePlan is not part of the guide, we are defining orders that may be integrated into a care plan.




// Open for discussion
// Signature
// How to capture hospice agency
// TODO add extension to ServiceRequest for basedOn consent.




// TODO: May need to add a witness and notary section for the persons signature
// TODO: Where it physician participants? What are informants in CDA ePOLST? Looks like dataEnterer (from POLST mapping) For Ordering participant, may be done by a PA, so a supervising physician. Physicians should have licensing/cert #s
// TODO: In CDA ePOLST review •	Legal Authenticator va Authentication. •	Legal Authenticator seems to be for supervising
// TODO: Part of National POLST - Professional Assisting Health Care Professional w/ Completion (Name) - With role that could include Social Worker, Nurse, Clergy, Other.
// TODO: CDA ePOLST legalAuthenticator is •	Legal Authenticator: The legalAuthenticator element is the individual who is responsible for the document. For the ePOLST, this is the signer in "Section F. Signature: Health Care Provider" of the National POLST Form (either the "Health Care Provider" or the "Supervising physician"). Only licensed healthcare providers authorized to sign POLST forms in their state or D.C. can sign this form. 
// TODO: CDA - Difference between License and Cert # - From Howard - Physician Assistants are Certified (PA-C) and it looks like Nurse Practitioners may vary between states as certified or licensed. Certified would have to operate under a medical director or supervising physician, and would likely need that validating signature.
// TODO: CDA has "Patient is enrolled in hospice" in the mapping to "US Realm Header (V3), participant" How is this to be done in the CDA? Not clear in the templates.

// Practitioner (role supervising (Or is this attending) ) Hospice phone number, Hospice Hospice agency
// Who can complete the document (http://polst.org/state-signature-requirements-pdf), may need to get roles here, may need to look at forms to see what roles they may have.
// Need a place to store licenses and certifications (Need to determine the difference) - MD/DO, PA, NP/APRN/ARNP/ND 
// DAR for supervising physician


// TODO the Professional Assisting Health Care Provider w/ Form Completion Maybe should not be an observation, but a related person with a role.
// Signature date of provide needs to be linked to provider.


// Split Orders out into slices with the various types (CPR initial Treatment, etc.)
// TODO for Connectathon dataEnterer, Practitioner signing, and supervising Practitioner, Sub elements including license number
// TODO Connectathon Hospice status and agency, Legally designated responsible person.
//551781000124102 SnowMed code for Under Hospice Team Care (US Edition - Under care of hospice team (finding))




// FOR O&O Service Request
// How to state preconditions? asNeeded only allows for 1.
// servicerequest-precondition
// Trigger extension? Rob Hausam mentioned it.
// Flag resource to raise the importance http://hl7.org/fhir/R4/valueset-flag-code.html (Maybe not a Flag.)
// Consider CarePlan
// Maybe consider consent
// IPS has done some with Advance Directives - Not much, but should take a look at it.
// ServiceRequest has a basedOn, but does not include a consent 


// Concepts for Connectathon
// Do not forms of orders
// Hospice
// Medically assisted hydration (vs nutrition)
// Medically assisted nutrition (Will we need to include different types)
// Patient presence at a healthcare facility - Loinc 78022-1 - (MAYBE/MAYBE NOT)
// Additional Orders - Captured as free text in form, maybe need to support free and structured
// Signatures (Practitioner, license#/cert# and phone numbers)
// Add Patient preference Goals



// For medically assisted nutrition and hydration (and anti-biotics) trial period. Need a goal and time in the consent (or CarePlan)?
// Need to have an "if needed" indicator for interventions


// Consent 2022-11-17




// Re-assessment timepoints used resources that we may want to consider. Chris P would be the contact

// TODO add entries
//Orders Review Observation
//Orders Participants Observation
//Administrative Information? Is this an observation with code 100828-3 "Portable medical order administrative information" or is this a new section with text?
//      This is equivalent to the clause. TODO, do we need to create a specialization on the clause to support the code from ePOLST? This would help in reverse transformation.





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
