// Other examples not part of a comprehensive example. Added to meet the minimum criteria that we need at least one example per profile.

Instance: Example-Smith-Johnson-DecisionalCapacity1
InstanceOf: ADIDecisionalCapacity
Description: "Example Patient Smith-Johnson Decisional Capacity Observation"
Usage: #example

* status = #final
* subject = Reference(Patient/Example-Smith-Johnson-Patient1)
* performer = Reference(PractitionerRole/Example-Kyle-Anydoc-PractitionerRole1)
* effectiveDateTime = "2021-03-29T14:25:34.001-05:00"
* valueCodeableConcept = $SNOMEDCT#551782000124105 "Patient lacks decisional capacity (finding)"
* effectiveDateTime = "2024-09-18T22:33:22Z"

// ------------------------------

Instance: Example-Smith-Johnson-RationaleForTreatment
InstanceOf: ADIRationaleForTreatment
Description: "Example Patient Smith-Johnson Rationale for Treatment Observation"
Usage: #example

* status = #final
* subject = Reference(Patient/Example-Smith-Johnson-Patient1)
* performer = Reference(PractitionerRole/Example-Kyle-Anydoc-PractitionerRole1)
* effectiveDateTime = "2021-03-29T14:25:34.001-05:00"
* code = $SNOMEDCT#408773008 "Reasons for treatment"
* valueString = "Patient is forgetful and has been assessed to lack decisional capacity for medical decision-making."
* effectiveDateTime = "2024-09-18T22:33:22Z"

// ------------------------------

Instance: Example-Smith-Johnson-ADIJurisdiction1
InstanceOf: ADIJurisdiction
Description: "Example Patient Smith-Johnson Jurisdiction Example"
Usage: #example

* status = #final
* subject = Reference(Patient/Example-Smith-Johnson-Patient1)
* performer = Reference(PractitionerRole/Example-Kyle-Anydoc-PractitionerRole1)
* effectiveDateTime = "2021-03-29T14:25:34.001-05:00"
* valueCodeableConcept = $USPSCodes#MI "Michigan"
* performer = Reference(Patient/Example-Smith-Johnson-Patient1)
* effectiveDateTime = "2024-09-18T22:33:22Z"

// ------------------------------

Instance: Example-Smith-Johnson-ADINotary2
InstanceOf: ADINotary
Description: "Example Patient Smith-Johnson ADI Notary (Nancy Smith)"
Usage: #example

* active = true
* patient = Reference(Example-Smith-Johnson-Patient1)
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>Notary</b></p><p>Nancy Smith</p></div>"
* relationship[notary].id = "5212468"

* name[0].family = "Smith"
* name[0].given[0] = "Nancy"
* name[0].text = "Smith, Nancy"
* telecom[0].system = #email
* telecom[0].value = "NancySmith@example.org"
* telecom[0].use = #work

// ------------------------------

Instance: Example-Smith-Johnson-ADIWitness1
InstanceOf: ADIWitness
Description: "Example Patient Smith-Johnson ADI Witness (Debra Johnson)"
Usage: #example

* active = true
* patient = Reference(Example-Smith-Johnson-Patient1)
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>Witness</b></p><p>Debra Johnson</p></div>"
// * extension[adi-notaryInformation-extension].extension[AttesterRole].valueCodeableConcept = $LOINC#81369-1 "First witness"  // mlt_20260308: removed AttesterRole from NotaryInformationExtension per ADI SME Discussion on 3/6/26.
* name[0].family = "Johnson"
* name[0].given[0] = "Debra"
* name[0].text = "Johnson, Debra"
* telecom[0].system = #email
* telecom[0].value = "DebraJohnson@example.org"
* telecom[0].use = #home

// ------------------------------

// Instance: Example-Smith-Johnson-PMOCarePlan1
// InstanceOf: ADIPMOCarePlan
// Description: "Example Patient Smith-Johnson PMO Care Plan 1"
// Usage: #example

// * text.status = #generated
// * text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Example PMO Care Plan</p></div>"

// * status = #active
// * extension[adi-condition-code-extension].valueCodeableConcept = $SNOMEDCT#230690007 "Cerebrovascular accident (disorder)"
// * title = "Care Plan for Cerebrovascular accident"
// * subject = Reference(Example-Smith-Johnson-Patient1)
// * addresses[+].display = "Stroke and impaired speech."
// * goal.display = "Prescribe speech therapy to improve expressive dysphasia."
// * supportingInfo = Reference(Example-Smith-Johnson-CareExperiencePreference5)

// ------------------------------

Instance: Example-Smith-Johnson-PMOHospiceObservation1
InstanceOf: ADIPMOHospiceObservation
Description: "Example Patient Smith-Johnson PMO Hospice Observation"
Usage: #example

* status = #final
* subject = Reference(Patient/Example-Smith-Johnson-Patient1)
* performer = Reference(PractitionerRole/Example-Kyle-Anydoc-PractitionerRole1)
* effectiveDateTime = "2021-03-29T14:25:34.001-05:00"
* valueBoolean = true
* effectiveDateTime = "2024-09-18T22:33:22Z"

// ------------------------------

Instance: Example-Smith-Johnson-ADIPMOParticipantObservation1
InstanceOf: ADIPMOParticipantObservation
Description: "Example Patient Smith-Johnson PMO Participant Observation"
Usage: #example

* status = #final
* subject = Reference(Patient/Example-Smith-Johnson-Patient1)
* focus = Reference(Composition/PMO-Example-Smith-Johnson-PMOComposition1)
* performer = Reference(PractitionerRole/Example-Kyle-Anydoc-PractitionerRole1)
* effectiveDateTime = "2021-03-29T14:25:34.001-05:00"
* valueCodeableConcept = $LOINC#LA33482-3 "Patient with decision-making capacity"
* effectiveDateTime = "2024-09-18T22:33:22Z"

// ------------------------------

Instance: Example-Smith-Johnson-ADIPMOProcedure1
InstanceOf: ADIPMOProcedure
Description: "Example Patient Smith-Johnson PMO Procedure"
Usage: #example

* status = #preparation
* code = $SNOMEDCT#386373004 "Nutrition therapy (regime/therapy)"
* subject = Reference(Patient/Example-Smith-Johnson-Patient1)
* performedDateTime = "2024-09-18T22:33:22Z"

// ------------------------------

Instance: Example-Smith-Johnson-ADIPMOReviewObservation1
InstanceOf: ADIPMOReviewObservation
Description: "Example Patient Smith-Johnson PMO Review Observation"
Usage: #example

* status = #final
* subject = Reference(Patient/Example-Smith-Johnson-Patient1)
* focus = Reference(Composition/PMO-Example-Smith-Johnson-PMOComposition1)
* performer = Reference(PractitionerRole/Example-Kyle-Anydoc-PractitionerRole1)
* effectiveDateTime = "2021-03-29T14:25:34.001-05:00"
* valueCodeableConcept = $LOINC#LA33476-5 "Yes the document was reviewed"
* effectiveDateTime = "2024-09-18T22:33:22Z"

// ------------------------------

Instance: Example-Smith-Johnson-PMOAdditionalOrdersServiceRequest1
InstanceOf: ADIPMOAdditionalOrdersOrInstructionsServiceRequest
Description: "Example Patient Smith-Johnson PMO Additional Orders Service Request"
Usage: #example

* subject = Reference(Patient/Example-Smith-Johnson-Patient1)
* requester = Reference(Practitioner/Example-Kyle-Anydoc-Practitioner)
* code = $SNOMEDCT#428311008
* authoredOn = "2024-03-29T14:25:34.001-05:00"
* doNotPerform = true
// * occurenceDateTime = "2024-04-01T22:33:22Z"

// ------------------------------

Instance: Example-Smith-Johnson-PMONutritionServiceRequest1
InstanceOf: ADIPMOMedicallyAssistedNutritionServiceRequest
Description: "Example Patient Smith-Johnson PMO Medically Assisted Nutrition Service Request"
Usage: #example

* extension[adi-trialperiod-extension].valueString = "One week trial period for medically assisted nutrition to assess tolerance and effectiveness."
* subject = Reference(Patient/Example-Smith-Johnson-Patient1)
* requester = Reference(Practitioner/Example-Kyle-Anydoc-Practitioner)
* code = $LOINC#LA33489-8 "Provide feeding through new or existing surgically-placed tubes"
* authoredOn = "2024-03-29T14:25:34.001-05:00"
* doNotPerform = true

// ------------------------------

Instance: Example-Smith-Johnson-PMOHydrationServiceRequest1
InstanceOf: ADIPMOMedicallyAssistedHydrationServiceRequest
Description: "Example Patient Smith-Johnson PMO Medically Assisted Hydration Service Request"
Usage: #example

* extension[adi-trialperiod-extension].valueString = "One week trial period for medically assisted hydration to assess tolerance and effectiveness."
* subject = Reference(Patient/Example-Smith-Johnson-Patient1)
* requester = Reference(Practitioner/Example-Kyle-Anydoc-Practitioner)
* code = $SNOMEDCT#281800008 "Intravenous fluid replacement (procedure)"
* authoredOn = "2024-03-29T14:25:34.001-05:00"
* doNotPerform = false

// ------------------------------

Instance: Example-Smith-Johnson-PMOInitialTreatmentServiceRequest1
InstanceOf: ADIPMOInitialTreatmentServiceRequest
Description: "Example Patient Smith-Johnson PMO Initial Treatment Service Request"
Usage: #example

* subject = Reference(Patient/Example-Smith-Johnson-Patient1)
* requester = Reference(Practitioner/Example-Kyle-Anydoc-Practitioner)
* code = $LOINC#LA33475-7 "Comfort-focused treatments"
* authoredOn = "2024-03-29T14:25:34.001-05:00"
* doNotPerform = false

// ------------------------------

Instance: Example-Smith-Johnson-DocumentationObservation3-DeclinedACP
InstanceOf: ADIDocumentationObservation		// fix for FHIR-57898 - Missing guidance on how to represent a person formally declining ACP Services
Description: "Example Patient Smith-Johnson Declines ACP Services"
Usage: #example

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>Patient declines Advance Care Planning (ACP) Services</b></p>
</div>"
* status = #final
* subject = Reference(Patient/Example-Smith-Johnson-Patient1)
* performer = Reference(ADI-Facilitator-MSW-MargaretReynolds)
* effectiveDateTime = "2025-03-29T14:25:34.001-05:00"
* valueCodeableConcept = $SNOMEDCT#373067005 "No (qualifier value)"
* extension[supporting-info].valueReference = Reference(DocumentReference/Example-Smith-Johnson-DocRef-ACP-Decline-Service)
* extension[adi-documentation-absent-reason].valueCodeableConcept = $HL7AdataAbsentReason#asked-declined "Asked But Declined"

// ------------------------------

Instance: Example-Smith-Johnson-DocRef-ACP-Decline-Service
InstanceOf: $USCoreDocumentReference
Usage: #Example
Description: "Betsy Smith-Johnson Example Clinical Note declining Advance Care Planning (ACP) services."
* status = #current
* category = $LOINC#11506-3 "Progress note"
* type = $LOINC#100532-1 "Social worker Outpatient Progress note"
* type.text = "Social worker Progress Note"
* subject = Reference(Patient/Example-Smith-Johnson-Patient1)
* date = "2026-07-24T08:15:00.000+00:00"
* custodian = Reference(Organization/org-ED-Metro-Hospital)
* content.attachment.title = "Social worker Advance Care Planning Note for Betsy Smith-Johnson"
* content.attachment.creation = "2026-07-24T08:15:00.000+00:00"
* content.attachment.contentType = #text/plain
* content.attachment.data = "R09PRCBIRUFMVEggQ0xJTklDCkNsaW5pY2FsIFNvY2lhbCBXb3JrIEVuY291bnRlciBOb3RlCgpQYXRpZW50OiBCZXRzeSBTbWl0aC1Kb2huc29uCk1STjogR0hDLTAwMDE4NDcgKGZpY3RpdGlvdXMpCkRhdGUgb2YgU2VydmljZTogMDcvMjQvMjAyNgpBdXRob3I6IE1hcmdhcmV0IFJleW5vbGRzLCBMQ1NXCkVuY291bnRlciBUeXBlOiBPdXRwYXRpZW50IFNvY2lhbCBXb3JrCgpNYXJnYXJldCBSZXlub2xkcywgTENTVywgbWV0IGJyaWVmbHkgd2l0aCBCZXRzeSBTbWl0aC1Kb2huc29uIGFuZCBwcm92aWRlZCBnZW5lcmFsIGVkdWNhdGlvbiByZWdhcmRpbmcgYWR2YW5jZSBjYXJlIHBsYW5uaW5nLCBpbmNsdWRpbmcgdGhlIHB1cnBvc2Ugb2YgZGlzY3Vzc2luZyBhbmQgZG9jdW1lbnRpbmcgZnV0dXJlIGhlYWx0aGNhcmUgcHJlZmVyZW5jZXMgYW5kIGlkZW50aWZ5aW5nIGEgaGVhbHRoY2FyZSBkZWNpc2lvbi1tYWtlci4gU29jaWFsIHdvcmsgc2VydmljZXMgd2VyZSBvZmZlcmVkIHRvIGFzc2lzdCB3aXRoIGZ1cnRoZXIgZGlzY3Vzc2lvbiBvciBjb21wbGV0aW9uIG9mIGFkdmFuY2UgY2FyZSBwbGFubmluZyBkb2N1bWVudHMuCgpNcy4gU21pdGgtSm9obnNvbiBkZWNsaW5lZCBhZHZhbmNlIGNhcmUgcGxhbm5pbmcgc2VydmljZXMgYXQgdGhpcyB0aW1lLCBzdGF0aW5nIHRoYXQgc2hlIHByZWZlcnMgbm90IHRvIGRpc2N1c3MgaGVyIGNhcmUgcHJlZmVyZW5jZXMgY3VycmVudGx5LiBIZXIgZGVjaXNpb24gd2FzIGFja25vd2xlZGdlZCBhbmQgcmVzcGVjdGVkLiBTaGUgd2FzIGluZm9ybWVkIHRoYXQgc3VwcG9ydCByZW1haW5zIGF2YWlsYWJsZSB0aHJvdWdoIEdvb2QgSGVhbHRoIENsaW5pYyBzaG91bGQgc2hlIHdpc2ggdG8gcmV2aXNpdCB0aGUgdG9waWMgaW4gdGhlIGZ1dHVyZS4gTm8gYWRkaXRpb25hbCBzb2NpYWwgd29yayBmb2xsb3ctdXAgaXMgaW5kaWNhdGVkIGF0IHRoaXMgdGltZSB1bmxlc3MgcmVxdWVzdGVkIGJ5IHRoZSBwYXRpZW50IG9yIGNhcmUgdGVhbS4KCkVsZWN0cm9uaWNhbGx5IHNpZ25lZCBieTogTWFyZ2FyZXQgUmV5bm9sZHMsIExDU1cKR29vZCBIZWFsdGggQ2xpbmlj"



