Profile: ADIPACPComposition
Parent: ADICompositionHeader
Id: ADI-PACPComposition
Title: "ADI PtAuthored Composition"
Description: "This profile encompasses information that makes up the author’s advance care information plan."

* author only Reference($USCorePatient)
* attester.party only Reference($USCorePatient or RelatedPerson)

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
    healthcare_agent 0..1 and
    gpp_for_certain_health_condition 0..1 MS and
    gpp_personal_care_experience 0..1 MS and
    gpp_upon_death 0..1 MS and
    additional_documentation 0..1 MS and
    witness_and_notary 0..1 MS and
    administrative_information 0..1 MS

* section[healthcare_agent] ^short = "Healthcare agents, healthcare agent advisors, and consent regarding their roles, powers, and limitations"

* obeys HCA-section-cardinality and HCA-section-emptyReason-required

* section[healthcare_agent].title 1..1 MS
* section[healthcare_agent].code 1..1 
* section[healthcare_agent].code = $LOINC#81335-2
* section[healthcare_agent].entry 
* section[healthcare_agent].entry only Reference(ADIHealthcareAgentConsent or ADIHealthcareAgentParticipant)
* section[healthcare_agent].emptyReason from ADINoHealthcareAgentIncludedReasonVS (required)
* section[healthcare_agent].emptyReason ^short = "This is only MS (must support) if the document types are supported."
* section[healthcare_agent] obeys HCA-section-entries
// TODO add guidance around this emptyReason element
// TODO add invariant stating that if entry exists, then agent Consent must exist

* section[gpp_for_certain_health_condition] ^short = "Preference care plans defined for specific situations and/or conditions"
* section[gpp_for_certain_health_condition] ^definition = "The section defines Goals, Preferences, and Priorities of the person under certain health conditions.  In this section, the CarePlan resource provides a construct by which the identified personal values and preferences for treatment can be integrated into the plan of care which acts, from a workflow or process perspective, as the roadmap for care delivery and treatment. "
* section[gpp_for_certain_health_condition].title 1..1 MS
* section[gpp_for_certain_health_condition].code 1..1 
* section[gpp_for_certain_health_condition].code = $LOINC#81336-0
//* section[gpp_for_certain_health_condition].entry only Reference(ADIPreferenceCarePlan or ADIPersonalInterventionPreference or ADIPersonalInterventionRequestPreference or ADIPersonalPrioritiesOrganizer or ADIPersonalGoal)
* section[gpp_for_certain_health_condition].entry only Reference(ADIPreferenceCarePlan)

* section[gpp_personal_care_experience] ^short = "Quality of Life related personal care experiences, personal goals, and priorities"
* section[gpp_personal_care_experience].title 1..1 MS
* section[gpp_personal_care_experience].code 1..1 
* section[gpp_personal_care_experience].code = $LOINC#81338-6
* section[healthcare_agent].orderedBy 
* section[gpp_personal_care_experience].entry 
* section[gpp_personal_care_experience].entry only Reference(ADICareExperiencePreference or ADIPersonalPrioritiesOrganizer or ADIPersonalGoal)

* section[gpp_upon_death] ^short = "Goals, preferences, and priorities upon death"
* section[gpp_upon_death].title 1..1 MS
* section[gpp_upon_death].code 1..1 
* section[gpp_upon_death].code = $LOINC#81337-8
* section[gpp_upon_death].entry 
* section[gpp_upon_death].entry only Reference(ADIPersonalInterventionPreference or ADIPersonalPrioritiesOrganizer or ADIAutopsyObservation or ADIOrganDonationObservation or ADIPersonalGoal)


* section[additional_documentation] ^short = "Observations regarding the existence of other advance directive related information"
* section[additional_documentation].title 1..1 MS
* section[additional_documentation].code 1..1 
* section[additional_documentation].code = $LOINC#77599-9

* section[additional_documentation].entry only Reference(ADIDocumentationObservation)


* section[witness_and_notary] ^short = "Witness and notary information.  The first witness should be the author of the document"
* section[witness_and_notary] ^definition = "A participant who has assumed the role of Notary and attested to the authenticity of the signers and accuracy of the composition/document."
* section[witness_and_notary].title 1..1 MS
* section[witness_and_notary].code 1..1 
* section[witness_and_notary].code = $LOINC#81339-4
// TODO DWH - Add short description "Witness and notary statement" to ClauseExtension

* section[witness_and_notary].entry only Reference(ADIWitness or ADINotary)

* section[administrative_information] ^short = "Administrative information associated with this personal advance care plan"
* section[administrative_information].title 1..1 MS
* section[administrative_information].code 1..1 
* section[administrative_information].code = $LOINC#81381-6





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

Invariant:  HCA-section-entries
Description: "If healthcare agent section entry exists, then the HCA consent entry and HCA RelatedPerson entry must exist"
//Expression: "entry.exists() implies (entry.where($this is Consent).exists() and entry.where($this is RelatedPerson).exists())"
Expression: "entry.exists().not() or (entry.where($this.resolve() is Consent).exists() and entry.where($this.resolve() is RelatedPerson).exists())"
Severity:   #error

Invariant: HCA-section-cardinality
Description: "If the PACP Composition document type is equal to Power of attorney (64298-3), Patient Personal advance care plan (81334-5), or Power of attorney and Living will (92664-2), then the PACP Composition requires one and only one healthcare agent section slice with code = 81335-2 (Patient Healthcare agent)"
Expression: "(type.coding.where(code = '64298-3').exists().not() and type.coding.where(code = '81334-5').exists().not() and type.coding.where(code = '92664-2').exists().not()) or section.where(code.coding.where(code = '81335-2').exists()).count() = 1"
Severity:   #error

Invariant: HCA-section-emptyReason-required
Description: "section[healthcare_agent].emptyReason is required if section[healthcare_agent] is present and there are no entries."
// Expression: "section.where(code.coding.where(code = '81335-2')).exists().not() or section.where(code.coding.where(code = '81335-2')).entry.count() > 0 or section.where(code.coding.where(code = '81335-2')).emptyReason.exists()"
// Expression: "section.code.coding.where(code = '81335-2').exists().not() or section.code.coding.where(code = '81335-2').count() > 0 or section.emptyReason.exists()"
Expression: "section.where(code.coding.where(code = '81335-2').exists()).exists().not() or section.where(code.coding.where(code = '81335-2').exists()).entry.count() > 0 or section.where(code.coding.where(code = '81335-2').exists()).emptyReason.exists()"
Severity:   #error
