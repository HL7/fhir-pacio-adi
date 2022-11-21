Profile: PADIPMOReviewObservation
Parent: Observation
Id: PADI-PMOReviewObservation
Title: "ADI PMO Review Observation"
Description: "This profile is used to represent the review status of the portable medical order."


// TODO will likely need a variance Request
* text 1..1 MS
* status = #final


* code 1..1 MS
* code = $LOINC#100826-7 

* focus 1..1 MS
* focus only Reference(PADIPMOComposition) // TODO, is this needed, check with O&O

* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from LOINCPOLSTReviewAnswerList (extensible)



