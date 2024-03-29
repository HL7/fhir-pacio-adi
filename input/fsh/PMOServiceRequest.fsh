Profile: ADIPMOServiceRequest
Parent: ServiceRequest
Id: ADI-PMOServiceRequest
Title: "ADI Portable Medical Order ServiceRequest"
Description: "This profile is used to represent a practitioner authored portable medical order."

/*
* extension contains
    adi-based-on-consent-extension named BasedOnConsentExtension 0..1
*/
//* text 1..1 MS

* status = #active
* intent = #order

// TODO need a category 
// TODO may need to get a variance request from us core ServiceRequest. In different version and also do any of the categories fit?
// http://hl7.org/fhir/us/core/STU5.0.1/ValueSet-us-core-servicerequest-category.html

* category 1..1 MS
* code 1..1 MS


/* extension contains
    adi-based-on-consent-extension named BasedOnConsentExtension 0..1
*/
//* code = $LOINC#75781-5

* subject 1..1
* subject only Reference($USCorePatient)

* occurrenceTiming ^short = "Used to express a trial or period to conduct the treatment" 

* encounter 0..0 // verify no encounter possible
* requester 1..1
* requester only Reference($USCorePractitioner)




Profile: ADIPMOCPRServiceRequest
Parent: ADIPMOServiceRequest
Id: ADI-PMOCPRServiceRequest
Title: "ADI PMO Cardiopulmonary Resuscitation ServiceRequest"
Description: "This profile is used to represent a practitioner authored portable medical order for cardiopulmonary resuscitation."

* ^experimental = false
* category = $LOINC#100822-6 // "Cardiopulmonary resuscitation orders"
* code from LOINCPOLSTCPRAnswerList (extensible)



Profile: ADIPMOInitialTreatmentServiceRequest
Parent: ADIPMOServiceRequest
Id: ADI-PMOInitialTreatmentServiceRequest
Title: "ADI PMO Initial Treatment ServiceRequest"
Description: "This profile is used to represent a practitioner authored portable medical order for initial treatment."

* ^experimental = false
* category = $LOINC#100823-4 // "Initial portable medical treatment orders"
* code from LOINCPOLSTInitialTxAnswerList (extensible)


Profile: ADIPMOMedicallyAssistedNutritionServiceRequest
Parent: ADIPMOServiceRequest
Id: ADI-PMOMedicallyAssistedNutritionServiceRequest
Title: "ADI PMO Medically Assisted Nutrition ServiceRequest"
Description: "This profile is used to represent a practitioner authored portable medical order for medically assisted nutrition."

* ^experimental = false
* category = $LOINC#100825-9 // "Medically assisted nutrition orders"
* code from LOINCPOLSTMedAssistNutrAnswerList (extensible)


Profile: ADIPMOAdditionalRequestServiceRequest
Parent: ADIPMOServiceRequest
Id: ADI-PMOAdditionalRequestServiceRequest
Title: "ADI PMO Additional request or instruction ServiceRequest"
Description: "This profile is used to represent a practitioner authored portable medical order additional requests or instructions."

* ^experimental = false
* category = $LOINC#100824-2 // "Additional portable medical orders or instructions"
* code 1..1 MS


Profile: ADIPMONoAdditionalRequestObservation
Parent: Observation
Id: ADI-PMONoAdditionalRequestObservation
Title: "ADI PMO No Additional request or instruction Observation"
Description: "This profile is used to represent that there are no other portable medical order additional requests or instructions."

* ^experimental = false
* status = #final
* code = $LOINC#100824-2 // "Additional portable medical orders or instructions"
* value[x] only boolean
* valueBoolean = false
* performer 1..1
* performer only Reference($USCorePractitioner)



/////////////////////////////////
// PMO as full service Request
/*
Profile: ADIPMOFullServiceRequest
Parent: ServiceRequest
Id: ADI-PMOFullServiceRequest
Title: "ADI Portable Medical Order Full ServiceRequest"
Description: "This profile is used to represent a practitioner authored portable medical order."

* text 1..1 MS

* status = #active
* intent = #order

// TODO need a category 
// TODO may need to get a variance request from us core ServiceRequest. In different version and also do any of the categories fit?
// http://hl7.org/fhir/us/core/STU5.0.1/ValueSet-us-core-servicerequest-category.html

* category 1..1 MS
* code 1..1 MS

//* code = $LOINC#75781-5

* subject 1..1
* subject only Reference($USCorePatient)

* encounter 0..0 // verify no encounter possible
* requester only Reference($USCorePractitioner)

* ^experimental = false
* category = $LOINC#100822-6 // "Cardiopulmonary resuscitation orders"
* code from LOINCPOLSTCPRAnswerList (extensible)

*/