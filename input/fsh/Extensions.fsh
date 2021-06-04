Extension: VersionNumber
Id: padi-versionNumber-extension
Title: "Version Number"
Description: "Advance Directive Information VersionNumber Extension represents a numeric value used to version successive replacement documents."
* valueInteger 0..1 MS
* value[x] only integer


//[TODO get clarification on the extension descriptions and constraints. ]

Extension: DataEntererExtension
Id: padi-dataEnterer-extension
Title: "Data Enterer"
Description: "Data Enterer Extension represents the person who transferred the content, written or dictated, into the Advance Directive document. To clarify, an author provides the content, subject to their own interpretation; a dataEnterer adds an author’s information to the electronic system."
* value[x] only Reference
* valueReference 1..1 MS
* valueReference only Reference($USCorePractitioner or $USCorePractitionerRole or $USCorePatient or RelatedPerson)


Extension: InformantExtension
Id: padi-informant-extension
Title: "Informant"
Description: "The Advance Directive Information Informant Extension describes an information source for any content within the Advance Directive document. This informant is constrained for use when the source of information is an assigned health care provider for the patient."
* value[x] only Reference
* valueReference 1..1 MS
* valueReference only Reference($USCorePractitioner or $USCorePractitionerRole or $USCorePatient or RelatedPerson)


Extension: InformationRecipientExtension
Id: padi-informationRecipient-extension
Title: "Information Recipient"
Description: "The Information Recipient Extension records the intended recipient of the advance directive information at the time the document was created."
* value[x] only Reference
* valueReference 1..1 MS
* valueReference only Reference($USCorePractitioner or $USCorePractitionerRole or $USCorePatient or RelatedPerson)


Extension: ParticipantExtension
Id: padi-participant-extension
Title: "Participant"
Description: "The Advance Directive Information Participant Extension identifies supporting entities, including parents, relatives, caregivers, insurance policyholders, guarantors, and others related in some way to the patient. A supporting person or organization is an individual or an organization with a relationship to the patient. A supporting person who is playing multiple roles would be recorded in multiple participants (e.g., emergency contact and next-of-kin)."
* value[x] only Reference
* valueReference 1..1 MS
* valueReference only Reference($USCorePractitioner or $USCorePractitionerRole or RelatedPerson)


Extension: PerformerExtension
Id: padi-performer-extension
Title: "Informant"
Description: "The Advance Directive Information Performer Extension represents clinicians who actually and principally carry out the clinical services being documented. In a transfer of care this represents the healthcare providers involved in the current or pertinent historical care of the patient. Preferably, the patients key healthcare care team members would be listed, particularly their primary physician and any active consulting physicians, therapists, and counselors."
* value[x] only Reference
* valueReference 1..1 MS
* valueReference only Reference($USCorePractitioner or $USCorePractitionerRole)


Extension: AuthorizationExtension
Id: padi-authorization-extension
Title: "Authorization"
Description: "The Advance Directive Information Authorization Extension contains the ADI Consent profile which represents information about a patient’s consents."
* value[x] only Reference
* valueReference 1..1 MS
* valueReference only Reference(Consent)


Extension: OrderExtension
Id: padi-order-extension
Title: "Order"
Description: "The Advance Directive Information Order Extension represents orders that are fulfilled by this document such as a radiologists report of an x-ray."
* value[x] only Reference
* valueReference 1..1 MS
* valueReference only Reference(ServiceRequest)




/*




The official URL for this extension is:

http://hl7.org/fhir/us/ccda/StructureDefinition/InformantExtension


Extension: VersionNumber
Id: composition-clinicaldocument-versionNumber
Title: "Version Number"
Description: "Advance Directive Information Document Version Number."
* value[x] 1..1

Extension: VersionNumber
Id: composition-clinicaldocument-versionNumber
Title: "Version Number"
Description: "Advance Directive Information Document Version Number."
* value[x] 1..1

Extension: VersionNumber
Id: composition-clinicaldocument-versionNumber
Title: "Version Number"
Description: "Advance Directive Information Document Version Number."
* value[x] 1..1

Extension: VersionNumber
Id: composition-clinicaldocument-versionNumber
Title: "Version Number"
Description: "Advance Directive Information Document Version Number."
* value[x] 1..1

Extension: VersionNumber
Id: composition-clinicaldocument-versionNumber
Title: "Version Number"
Description: "Advance Directive Information Document Version Number."
* value[x] 1..1

Extension: VersionNumber
Id: composition-clinicaldocument-versionNumber
Title: "Version Number"
Description: "Advance Directive Information Document Version Number."
* value[x] 1..1

Extension: VersionNumber
Id: composition-clinicaldocument-versionNumber
Title: "Version Number"
Description: "Advance Directive Information Document Version Number."
* value[x] 1..1

Extension: VersionNumber
Id: composition-clinicaldocument-versionNumber
Title: "Version Number"
Description: "Advance Directive Information Document Version Number."
* value[x] 1..1
*/