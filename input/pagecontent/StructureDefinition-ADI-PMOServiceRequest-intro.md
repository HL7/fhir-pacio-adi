<!-- The following Conformance note is related to US Core v.9.0.0 Ballot Comment FHIR-54949: More guidance needed for what to represent in Requester field. -->
**Conformance:** 

`ServiceRequest.requester` identifies the Practitioner entering the derivative order in their local system based on the patient's PMO, not the author of the original PMO document. The PMO document author is captured in the referenced US Core `ADI DocumentReference` Profile.