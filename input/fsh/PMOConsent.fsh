/*
Profile: PADIPMOConsent
Parent: Consent
Id: PADI-PMOConsent
Title: "ADI PMO Consent"
Description: "This profile is used to represent a practitioner authored portable medical order."

/*  Removed, this does not seem to resolve the issue. It just adds another example (albeit correct example)
// Identifier included to address R4 Base Consent Resource invalid example that generates errors in the 
* identifier ^example.label = "General"
* identifier ^example.valueIdentifier.system = "urn:ietf:rfc:3986"
* identifier ^example.valueIdentifier.value = "urn:oid:2.16.840.1.113883.11.19455"
*
* status MS
//[TODO] need verification that it is active only. Is the authority proposed if the agent is not yet aware or accepted the role?
* status = #active
// [TODO], the LOINC code is an observable, which is not meant to express scope. Will need to find another code that could (Follow-up with Dan Vreeman  Liz Umberfield)
* scope = $HL7ConsentScope#treatment


* category from PADIPMOConsentCategoriesVS (extensible)

* patient 1..1 MS
* patient only Reference($USCorePatient)
* dateTime 1..1 MS

* policy MS
* policy ^comment = "A URI indicating the policy or jurisdiction that defines the policy related to this portable medical order."


//* provision 1..1 MS

* provision.extension contains
    padi-clause-extension named ClauseExtension 0..* MS


//* provision.type 1..1 MS
//* provision.period MS
//[TODO] do we need to support and require provision.actor for all HCA's?
* provision.actor 1..* MS
* provision.actor ^short = "Actors involved in the order, including the ordering practitioner"
// TODO Slice


// TODO Add guidanceexamples from spreadsheet
// Has communication with your healthcare agent(s) occurred?
// Health care agent willingness to serve in the HCA role

//* provision.actor.extension contains
//    padi-clause-extension named ClauseExtension 0..* MS
    

// [TODO] we need a valueset defined. Any candidates?





Profile: PADIPMOCPRConsent
Parent: PADIPMOConsent
Id: PADI-PMOCPRConsent
Title: "ADI PMO Cardiopulmonary Resuscitation Consent"
Description: "This profile is used to represent a practitioner authored portable medical order consent for cardiopulmonary resuscitation."

* ^experimental = false
* provision.action = $LOINC#100822-6 // "Cardiopulmonary resuscitation orders"
* provision.code from LOINCPOLSTCPRAnswerList (extensible)



Profile: PADIPMOInitialTreatmentConsent
Parent: PADIPMOConsent
Id: PADI-PMOInitialTreatmentConsent
Title: "ADI PMO Initial Treatment Consent"
Description: "This profile is used to represent a practitioner authored portable medical order consent for initial treatment."

* ^experimental = false
* provision.action = $LOINC#100823-4 // "Initial portable medical treatment orders"
* provision.code from LOINCPOLSTInitialTxAnswerList (extensible)


Profile: PADIPMOMedicallyAssistedNutritionConsent
Parent: PADIPMOConsent
Id: PADI-PMOMedicallyAssistedNutritionConsent
Title: "ADI PMO Medically Assisted Nutrition Consent"
Description: "This profile is used to represent a practitioner authored portable medical order consent for medically assisted nutrition."

* ^experimental = false
* provision.action = $LOINC#100825-9 // "Medically assisted nutrition orders"
* provision.code from LOINCPOLSTMedAssistNutrAnswerList (extensible)
*/



Profile: PADIPMOAdditionalRequestConsent
Parent: PADIPMOConsent
Id: PADI-PMOAdditionalRequestConsent
Title: "ADI PMO Additional Request or Instructions Consent"
Description: "This profile is used to represent a practitioner authored portable medical order consent for additional requests or instructions."

* ^experimental = false
* provision.action = $LOINC#100824-2 // "Additional portable medical orders or instructions"
* provision.code 1..1 