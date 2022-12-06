Profile: PADIPMOServiceRequest
Parent: ServiceRequest
Id: PADI-PMOServiceRequest
Title: "ADI Portable Medical Order ServiceRequest"
Description: "This profile is used to represent a practitioner authored portable medical order."

* text 1..1 MS

* status = #active
* intent = #order

// TODO need a category 
// TODO may need to get a variance request from us core ServiceRequest. In different version and also do any of the categories fit?
// http://hl7.org/fhir/us/core/STU5.0.1/ValueSet-us-core-servicerequest-category.html

* category 1..1 MS
* code 1..1 MS

/* extension contains
    padi-based-on-consent-extension named BasedOnConsentExtension 0..1
*/
//* code = $LOINC#75781-5

* subject 1..1
* subject only Reference($USCorePatient)

* encounter 0..0 // verify no encounter possible
* requester only Reference($USCorePractitioner)




Profile: PADIPMOCPRServiceRequest
Parent: PADIPMOServiceRequest
Id: PADI-PMOCPRServiceRequest
Title: "ADI PMO Cardiopulmonary Resuscitation ServiceRequest"
Description: "This profile is used to represent a practitioner authored portable medical order for cardiopulmonary resuscitation."

* ^experimental = false
* category = $LOINC#100822-6 // "Cardiopulmonary resuscitation orders"
* code from LOINCPOLSTCPRAnswerList (extensible)



Profile: PADIPMOInitialTreatmentServiceRequest
Parent: PADIPMOServiceRequest
Id: PADI-PMOInitialTreatmentServiceRequest
Title: "ADI PMO Initial Treatment ServiceRequest"
Description: "This profile is used to represent a practitioner authored portable medical order for initial treatment."

* ^experimental = false
* category = $LOINC#100823-4 // "Initial portable medical treatment orders"
* code from LOINCPOLSTInitialTxAnswerList (extensible)


Profile: PADIPMOMedicallyAssistedNutritionServiceRequest
Parent: PADIPMOServiceRequest
Id: PADI-PMOMedicallyAssistedNutritionServiceRequest
Title: "ADI PMO Medically Assisted Nutrition ServiceRequest"
Description: "This profile is used to represent a practitioner authored portable medical order for medically assisted nutrition."

* ^experimental = false
* category = $LOINC#100825-9 // "Medically assisted nutrition orders"
* code from LOINCPOLSTMedAssistNutrAnswerList (extensible)



/////////////////////////////////
// PMO as full service Request

Profile: PADIPMOFullServiceRequest
Parent: ServiceRequest
Id: PADI-PMOFullServiceRequest
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