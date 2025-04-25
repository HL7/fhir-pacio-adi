Profile: ADIPMOComposition
Parent: ADICompositionHeader
Id: ADI-PMOComposition
Title: "ADI PMO Composition"
Description: "This profile encompasses information that makes up a practitioner's portable medical order."

* author only Reference($USCorePractitionerRole)
* attester 1..* MS     
* attester.party only Reference($USCorePractitioner or $USCorePractitionerRole or RelatedPerson)
* attester.mode = #legal

* type = $LOINC#93037-0 // "Portable medical order form"

// fix for FHIR-46609: PMO Composition event needs further constraints for facilitators.
// * event.detail only Reference(ADIPMOServiceRequest or ADIParticipantConsent or ADIPMOProcedure)

// modified FHIR-46609 with FHIR-48858 to accommodate slicing in support of ADI faciliator at the PMO Composition Header level.
* event.detail contains pmo-servicerequest 0..* and pmo-healthcareagentconsent 0..* and pmo-procedure 0..*
* event.detail[pmo-servicerequest] only Reference(ADIPMOServiceRequest)
* event.detail[pmo-servicerequest] ^short = "ADI PMO Service Request"
* event.detail[pmo-healthcareagentconsent] only Reference(ADIHealthcareAgentConsent)
* event.detail[pmo-healthcareagentconsent] ^short = "ADI Healthcare Agent Consent"
* event.detail[pmo-procedure] only Reference(ADIPMOProcedure)
* event.detail[pmo-procedure] ^short = "ADI PMO Procedure"


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
    completion_information 0..1 and 
    administration_information 0..1 and
    gpp_upon_death 0..1 and
    additional_documentation 0..1 and
    witness_and_notary 0..1

// ******* Medical Orders Section ********
* section[portable_medical_orders] ^short = "Portable Medical Orders"
* section[portable_medical_orders].extension[adi-clause-extension] ^short = "Section clause, additional instructions, or information"
* section[portable_medical_orders].title 1..1 MS
* section[portable_medical_orders].code 1..1 MS
* section[portable_medical_orders].code = $LOINC#59772-4

* section[portable_medical_orders].entry MS
* section[portable_medical_orders].entry only Reference(ADIPMOServiceRequest) // or ADIPMONoAdditionalRequestObservation)

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
    additional_orders_or_instructions_service_request 0..* MS and
    medically_assisted_nutrition_service_request 0..1 MS and
    medically_assisted_hydration_service_request 0..1 MS

* section[portable_medical_orders].entry[cardiopulmonary_resuscitation_service_request] only Reference(ADIPMOCPRServiceRequest)
* section[portable_medical_orders].entry[initial_treatment_service_request] only Reference(ADIPMOInitialTreatmentServiceRequest)
* section[portable_medical_orders].entry[additional_orders_or_instructions_service_request] only Reference(ADIPMOAdditionalOrdersOrInstructionsServiceRequest)
* section[portable_medical_orders].entry[medically_assisted_nutrition_service_request] only Reference(ADIPMOMedicallyAssistedNutritionServiceRequest)
* section[portable_medical_orders].entry[medically_assisted_hydration_service_request] only Reference(ADIPMOMedicallyAssistedHydrationServiceRequest)

// ******* PMO Completion Information Section ********

* section[completion_information] ^short = "Portable medical order completion information"
* section[completion_information].extension[adi-clause-extension] ^short = "Administrative, instructional, and/or legal information"
* section[completion_information].title 1..1 MS
* section[completion_information].code 1..1 MS
* section[completion_information].code = adi-temp-cs#ldo // "Portable medical order completion information" // Code is LOINC pre-release as on 11/03/2022 - https://loinc.org/prerelease/
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

// ******* PMO Administration Information Section ********

* section[administration_information] ^short = "Observations regarding the existence of other advance directive related information"
* section[administration_information].title 1..1 MS
* section[administration_information].code 1..1 MS
* section[administration_information].code = adi-temp-cs#adm
// * section[administration_information].entry only Reference(<enter reference to EmergencyContactInformation>)

* section[administration_information].entry ^slicing.discriminator.type = #profile
* section[administration_information].entry ^slicing.discriminator.path = "resolve()"
* section[administration_information].entry ^slicing.rules = #open 
* section[administration_information].entry ^slicing.ordered = false
* section[administration_information].entry ^slicing.description = "Slice based on $this value"

* section[administration_information].entry contains
    adi_personal_goal 0..* and 
    minimal_source_form 0..1 MS

* section[administration_information].entry[adi_personal_goal] only Reference(ADIPersonalGoal)
* section[administration_information].entry[minimal_source_form] only Reference(Binary)

// ******* GPP Upon Death ************

* section[gpp_upon_death] ^short = "Goals, preferences, and priorities upon death"
* section[gpp_upon_death].title 1..1 MS
* section[gpp_upon_death].code 1..1 
* section[gpp_upon_death].code = $LOINC#81337-8
* section[gpp_upon_death].entry 
* section[gpp_upon_death].entry only Reference(ADIPersonalInterventionPreference or ADIPersonalPrioritiesOrganizer or ADIAutopsyObservation or ADIOrganDonationObservation or ADIPersonalGoal or ADIUponDeathPreference)


// ******* PMO Additional Documentation Section ********

* section[additional_documentation] ^short = "Observations regarding the existence of other advance directive related information"
* section[additional_documentation].title 1..1 MS
* section[additional_documentation].code 1..1 MS
* section[additional_documentation].code = $LOINC#77599-9
* section[additional_documentation].entry only Reference(ADIDocumentationObservation)

// ******* PMO Witness and Notary Section ********

* section[witness_and_notary] ^short = "Witness and notary information.  The first witness should be the author of the document."
* section[witness_and_notary] ^definition = "A participant who has assumed the role of Notary and attested to the authenticity of the signers and accuracy of the composition/document."
* section[witness_and_notary].title 1..1 MS
* section[witness_and_notary].code 1..1 MS
* section[witness_and_notary].code = $LOINC#81339-4
* section[witness_and_notary].entry only Reference(ADIHealthcareAgentParticipant)


//****** Open for discussion **********
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


// TODO the Professional Assisting Health Care Provider w/ Form Completion Maybe should not be an observation, but a related person with a role.
// Signature date of provide needs to be linked to provider.

// For medically assisted nutrition and hydration (and anti-biotics) trial period. Need a goal and time in the consent (or CarePlan)?
// Need to have an "if needed" indicator for interventions


/*
Invariant:  HCA-section-entries0
Description: "0 - If healthcare agent section entry exists, then the HCA consent entry and HCA RelatedPerson entry must exist"
//Expression: "entry.exists() implies (entry.where($this is Consent).exists() and entry.where($this is RelatedPerson).exists())"
Expression: "entry.exists().not()"
//Expression: "entry.resolve() is Consent" fail
Severity:   #error



Invariant:  HCA-section-entries1
Description: "1 -If healthcare agent section entry exists, then the HCA consent entry and HCA RelatedPerson entry must exist"
//Expression: "entry.exists() implies (entry.where($this is Consent).exists() and entry.where($this is RelatedPerson).exists())"
Expression: "entry.where($this.resolve() is Consent)"
Severity:   #error



Invariant:  HCA-section-entries2
Description: "2 - If healthcare agent section entry exists, then the HCA consent entry and HCA RelatedPerson entry must exist"
//Expression: "entry.exists() implies (entry.where($this is Consent).exists() and entry.where($this is RelatedPerson).exists())"
Expression: "entry.where($this.resolve() is RelatedPerson)"
Severity:   #error

*/
