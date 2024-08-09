Profile: ADIParticipantConsent
Parent: Consent
Id: ADI-ParticipantConsent
Title: "ADI Participant Consent"
Description: "This profile is used to represent a consent for an advance directive participant such as a healthcare agent or advisor and power or limitation granted to such persons."

* obeys HCA-authority-scope-provisionType
* obeys HCA-consent-category
* obeys HCA-provision-purpose

* text 1..1 MS

* status MS
//[TODO] need verification that it is active only. Is the authority proposed if the agent is not yet aware or accepted the role?
* status = #active
// [TODO], the LOINC code is an observable, which is not meant to express scope. Will need to find another code that could (Follow-up with Dan Vreeman  Liz Umberfield)
* scope from $VSACADIConsentType (required)

// Fix for FHIR_34506 - meeting on 2023-08-28: re-point to http://terminology.hl7.org/CodeSystem/consentcategorycodes
/*
	* Create a fixed value of acd for the consent type.
	* Write in narrative what our interpretation of the existing code.
*/

* category from $HL7ConsentCategoryVS (extensible)

// Attempt at slicing category
// * category ^slicing.discriminator.type = #pattern
// * category ^slicing.discriminator.path = "$this"
// * category ^slicing.rules = #open
// * category ^slicing.ordered = true
// * category ^slicing.description = "Description"

// * category contains AdvanceDirective 1..1
// * category[AdvanceDirective] = $HL7ConsentCategoryCodes#acd "Advance Directive"
// * category[AdvanceDirective] ^requirements = "Used to identify that this is a consent related to an advance directive."

// * category contains ConsentCategory 0..*
// * category[ConsentCategory] from $HL7ConsentCategoryVS (extensible)
// * category[ConsentCategory] ^requirements = "Indicates other categories this consent is related to."

// [TODO] there seems to be an issue with consent scope. The url http://terminology.hl7.org/CodeSystem/consentscope forwards to https://terminology.hl7.org/2.1.0/CodeSystem-consentscope.html
// But the version we are using is the R4 version http://hl7.org/fhir/codesystem-consent-scope.html#consent-scope-adr
//* scope = $HL7ConsentScope#adr

* patient 1..1 MS
* patient only Reference($USCorePatient)
* dateTime MS

// [TODO] Where is the appropriate place to state that this Consent is for an agent 
* policy MS
* policy ^comment = "A URI indicating the policy or jurisdiction that defines the policy for healthcare agents and granted powers and limitations."
//$LOINC#75786-4

* provision 1..1 MS

* provision.extension contains
    adi-clause-extension named ClauseExtension 0..*


* provision.type 1..1 MS
* provision.period 
//[TODO] do we need to support and require provision.actor for all HCA's?
* provision.actor 1..* MS


// TODO Add guidanceexamples from spreadsheet
// Has communication with your healthcare agent(s) occurred?
// Health care agent willingness to serve in the HCA role

* provision.actor.extension contains
    adi-clause-extension named ClauseExtension 0..*
    
* provision.actor.role from $VSACADIConsentActorRole (required)
* provision.actor.reference only Reference(ADIParticipant)

// [TODO] we need a valueset defined. Any candidates?

* provision.action from ADIHCADecisionsVS (extensible)
* provision.action ^comment = "Actions without a defined code are placed in action.text."
* provision.purpose from http://terminology.hl7.org/ValueSet/v3-ActReason (required)

// [TODO] need to add guidance that first provision is the base set of rules, and the nested ones are exceptions to the rules.
// This may tke 2 forms, either a permit as a base rule with exceptions stating what is type deny, or vice versa.


// examples of provisions in OneNote - Powers & Limitation Examples for consent

/*
    i.      My agent is authorized to
    ii.      __Consent, refuse, or withdraw consent to any care, procedure, treatment, or service to diagnose, treat, or maintain a physical or mental condition, including artificial nutrition and hydration;
    iii.      __Permit, refuse, or withdraw permission to participate in federally regulated research related to my condition or disorder;
    iv.      __Make all necessary arrangements for any hospital, phychiatric treatment facility, hospice, nursing home, or other healthcare organization; and, employ or discharge healthcare personnel (any person who is authorized or permitted by the laws of the state to provide healthcare services) as he or she shall deem necessary for my physical, mental, or emotional well-being;
    v.      __Request, receive, review, and authorize sending any information regarding my physical or mental health, or my personal affairs, including medical and hospital records; and execute any releases that may be required to obtain such information;
    vi.      __Move me into or out of any State or institution;
    vii.      __Take legal action, if needed;
    viii.      __Make decisions about autopsy, tissue and organ donation, and the disposition of my body in conformity with state law; and
    ix.      __Become my guardian if one is needed.


*/

// need to define jurisdiction, original form?



Invariant:  HCA-authority-scope-provisionType
Description: "Scope indicates powers granted and provision type is permit or scope indicates limitations placed and provision type is deny or scope indicates no powers/limitations and no provisions type and no action exist"
Expression: "(scope.coding.where(code = '75786-4').exists() and provision.type = 'permit') or (scope.coding.where(code = '81346-9').exists() and provision.type = 'deny') or (scope.coding.where(code = '81335-2').exists() and provision.type.exists().not() and provision.action.exists().not() and provision.provision.exists().not())"
Severity:   #error

Invariant: HCA-consent-category
Description: "Category must have a ConsentCategory of 'acd'"
Expression: "category.coding.where(code = 'acd').exists()"
Severity:   #error

Invariant: HCA-provision-purpose
Description: "Provision purpose must have a purpose of 'PWATRNY'"
Expression: "provision.purpose.exists().not() or provision.purpose.where(code = 'PWATRNY').exists()"
Severity:   #error
