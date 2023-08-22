Extension: VersionNumber
Id: padi-versionNumber-extension
Title: "Version Number"
Description: "Advance Directive Information VersionNumber Extension represents a numeric value used to version successive replacement documents."
* valueInteger 0..1 MS
* value[x] only integer

Extension: Jurisdiction
Id: padi-jurisdiction-extension
Title: "Jurisdiction"
Description: "Jurisdiction for which content is applicable."
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from $HL7JurisdictionCodes (extensible)


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

/*
Extension: InformationRecipientExtension
Id: padi-informationRecipient-extension
Title: "Information Recipient"
Description: "The Information Recipient Extension records the intended recipient of the advance directive information at the time the document was created."
* value[x] only Reference
* valueReference 1..1 MS
* valueReference only Reference($USCorePractitioner or $USCorePractitionerRole or $USCorePatient or RelatedPerson or $USCoreOrganization)
*/

Extension: ParticipantExtension
Id: padi-participant-extension
Title: "Participant"
Description: "The Advance Directive Information Participant Extension identifies supporting entities, including parents, relatives, caregivers, insurance policyholders, guarantors, and others related in some way to the patient. A supporting person or organization is an individual or an organization with a relationship to the patient. A supporting person who is playing multiple roles would be recorded in multiple participants (e.g., emergency contact and next-of-kin)."
* value[x] only Reference
* valueReference 1..1 MS
* valueReference only Reference($USCorePractitioner or $USCorePractitionerRole or RelatedPerson)


Extension: PerformerExtension
Id: padi-performer-extension
Title: "Performer"
Description: "The Advance Directive Information Performer Extension represents clinicians who actually and principally carry out the clinical services being documented. In a transfer of care this represents the healthcare providers involved in the current or pertinent historical care of the patient. Preferably, the patients key healthcare care team members would be listed, particularly their primary physician and any active consulting physicians, therapists, and counselors."
* value[x] only Reference
* valueReference 1..1 MS
* valueReference only Reference($USCorePractitioner or $USCorePractitionerRole)

/*
Extension: OrderExtension
Id: padi-order-extension
Title: "Order"
Description: "The Advance Directive Information Order Extension represents orders that are fulfilled by this document such as a radiologists report of an x-ray."
* value[x] only Reference
* valueReference 1..1 MS
* valueReference only Reference(ServiceRequest)
*/


Extension: ContextualValueExtension
Id: padi-contextualValue-extension
Title: "Contextual Value"
Description: "The Contextual Value Extension represents one or more values with a singular context."
* extension contains
	Context 1..1 and
	Value 1..*
* extension[Context] ^short = "Context the value is provided within"
* extension[Context].value[x] 1..1
* extension[Value] ^short = "Value"
* extension[Value].value[x] 1..1


Extension: AttestationInformationExtension
Id: padi-attestationInformation-extension
Title: "Attestation Information"
Description: "The Attestation Information Extension allows for the capture of information relevant to the attestation."
* extension contains
	AttesterRole 1..1 and
    AttestationStatement 0..1 and
	NotarySealId 0..1 and
	NotaryCommissionExpirationDate 0..1 and
    Signature 0..1

* obeys notary-information-requires-notary-role

* extension[AttesterRole] ^short = "Attester Role"
* extension[AttesterRole].value[x] 1..1 MS
* extension[AttesterRole].value[x] only CodeableConcept
* extension[AttesterRole].valueCodeableConcept from PADIAttesterRoleTypeVS (extensible)

* extension[AttestationStatement] ^short = "Attestation Statement"
* extension[AttestationStatement].value[x] 1..1 MS
* extension[AttestationStatement].value[x] only string or markdown

* extension[NotarySealId] ^short = "Notary seal id"
* extension[NotarySealId].value[x] 1..1 MS
* extension[NotarySealId].value[x] only Identifier

* extension[NotaryCommissionExpirationDate] ^short = "Notary commission expiration date"
* extension[NotaryCommissionExpirationDate].value[x] 1..1 MS
* extension[NotaryCommissionExpirationDate].value[x] only date

* extension[Signature] ^short = "Attester Signature with Date"
* extension[Signature].value[x] 1..1 MS
* extension[Signature].value[x] only Signature




Extension: EffectiveDateExtension
Id: padi-effective-date-extension
Title: "Effective Date"
Description: "The Advance Directive document effective dates."
* value[x] only Period
* valuePeriod 1..1 MS


Extension: ClauseExtension
Id: padi-clause-extension
Title: "Clause"
Description: "A clause or set of clauses relevant to the resource or element being extended"
* extension 1..*
* extension contains
	Title 0..1 and
	Type 0..1 and
	Policy 0..* and
	Clause 1..*

* extension[Title] ^short = "Section in which clauses are presented."
* extension[Title].value[x] 1..1
* extension[Title].value[x] only string

* extension[Type] ^short = "Type of clause."
* extension[Type].value[x] 1..1
* extension[Type].value[x] only CodeableConcept
* extension[Type].valueCodeableConcept from $VSACClauseType (extensible)

* extension[Policy] ^short = "Link to the policies related to the clause"
* extension[Policy].value[x] 1..1 MS
* extension[Policy].value[x] only Reference

* extension[Clause] ^short = "A human readable clause."
* extension[Clause].value[x] 1..1 MS
* extension[Clause].value[x] only markdown


Extension: GoalOrderByDescendingPriority
Id: padi-goal-order-by-descending-priority-extension
Title: "Goal Order by Descending Priority"
Description: "Indicates if the goals are ordered in descending priority (Y) or no specific order (N)."
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from $HL7YesNoVS (extensible)


Invariant:  notary-information-requires-notary-role
Description: "If Notary information (seal or commission expiration date exists, then role must be notary"
Expression: "(extension.where(url = 'NotarySealId').valuerIdentifier.exists() or extension.where(url = 'NotaryCommissionExpirationDate').valueDate.exists()) implies  extension.where(url = 'AttesterRole').valueCodeableConcept.where(coding.code='81372-5').exists()"
//Expression: "category.coding.where(code.memberOf('http://hl7.org/fhir/us/pacio-adi/ValueSet/PADIInterventionPreferencesOrdinalVS')).exists() implies description.coding.where(code.memberOf('http://terminology.hl7.org/ValueSet/v2-0136')).exists()"
//Expression: "category.coding.code.memberOf('http://hl7.org/fhir/us/pacio-adi/ValueSet/PADIInterventionPreferencesOrdinalVS').exists()"
Severity:   #error



// TODO Could add Invariant for Signature.type matching the attesterRole
// TODO Notary Expiration Date?

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