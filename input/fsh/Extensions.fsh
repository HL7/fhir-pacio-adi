
Extension: DocumentReferenceVersionNumber
Id: adi-docVersionNumber-extension
Title: "Version Number"
Description: "Advance Directive Information VersionNumber Extension represents a numeric value used to version successive replacement documents."
Context: DocumentReference
* valueString 1..1 MS
* value[x] only string


Extension: Jurisdiction
Id: adi-jurisdiction-extension
Title: "Jurisdiction"
Description: "Jurisdiction for which content is applicable. Represent state jurisdictions as a codeableConcept using the 2-letter state value set, and organization jurisdictions as a string value."
Context: DocumentReference
* value[x] only CodeableConcept or string
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from $HL7JurisdictionCodes (extensible)


//[TODO get clarification on the extension descriptions and constraints. ]

Extension: DataEntererExtension
Id: adi-dataEnterer-extension
Title: "Data Enterer"
Description: "Data Enterer Extension represents the person who transferred the content, written or dictated, into the Advance Directive document. To clarify, an author provides the content, subject to their own interpretation; a dataEnterer adds an author’s information to the electronic system."
Context: Composition
* value[x] only Reference
* valueReference 1..1 MS
* valueReference only Reference($USCorePractitioner or $USCorePractitionerRole or $USCorePatient or RelatedPerson)


Extension: InformantExtension
Id: adi-informant-extension
Title: "Informant"
Description: "The Advance Directive Information Informant Extension describes an information source for any content within the Advance Directive document. This informant is constrained for use when the source of information is an assigned health care provider for the patient."
Context: Composition
* value[x] only Reference
* valueReference 1..1 MS
* valueReference only Reference($USCorePractitioner or $USCorePractitionerRole or $USCorePatient or RelatedPerson)

Extension: ParticipantExtension
Id: ADI-HealthcareAgentParticipant-extension
Title: "Participant"
Description: "The Advance Directive Information Participant Extension identifies supporting entities, including parents, relatives, caregivers, insurance policyholders, guarantors, and others related in some way to the patient. A supporting person or organization is an individual or an organization with a relationship to the patient. A supporting person who is playing multiple roles would be recorded in multiple participants (e.g., emergency contact and next-of-kin)."
Context: Composition
* value[x] only Reference
* valueReference 1..1 MS
* valueReference only Reference($USCorePractitioner or $USCorePractitionerRole or RelatedPerson)


Extension: PerformerExtension
Id: adi-performer-extension
Title: "Performer"
Description: "The Advance Directive Information Performer Extension represents clinicians who actually and principally carry out the clinical services being documented. In a transfer of care this represents the healthcare providers involved in the current or pertinent historical care of the patient. Preferably, the patients key healthcare care team members would be listed, particularly their primary physician and any active consulting physicians, therapists, and counselors."
Context: Composition
* value[x] only Reference
* valueReference 1..1 MS
* valueReference only Reference($USCorePractitioner or $USCorePractitionerRole)

/*
Extension: OrderExtension
Id: adi-order-extension
Title: "Order"
Description: "The Advance Directive Information Order Extension represents orders that are fulfilled by this document such as a radiologists report of an x-ray."
* value[x] only Reference
* valueReference 1..1 MS
* valueReference only Reference(ServiceRequest)
*/


Extension: EnclosedPreconditionExtension
Id: adi-enclosedPrecondition-extension
Title: "Enclosed Precondition"
Description: "The Enclosed Precondition Extension allows for a precondition to be applied to an advance directive observation or goal.  When applied to Goal instance, the stated goal only applies if the precondition is met.  For example, the precondition 'If I am so sick or seriously injured that I cannot express my own medical treatment preferences' could be applied to the patient's goal of 'Avoiding prolonged dependence on machines'.  When applied to an Observation instance, it is important to note that the precondition applies only to the preference expressed within the observation, not to the observation itself, since the act of recording the preference as an observation has already been done.  For example, the precondition 'If I am nearing end of life' could be applied to the preference 'Please attempt to notify someone from my religion at the following number...' recorded within an observation."
Context: Observation, Goal.description
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS	


Extension: NotaryInformationExtension
Id: adi-notaryInformation-extension
Title: "Notary Information"
Description: "The Notary Information Extension allows for the capture of information relevant to the notary."
Context: RelatedPerson
* extension contains
	AttesterRole 1..1 and
    AttestationStatement 0..1 and
    Signature 0..1 and
	NotarySealId 0..1 and
	NotaryCommissionExpirationDate 0..1 and
	adi-jurisdiction-extension named NotaryCommissionJurisdiction 0..1

* obeys notary-information-requires-notary-role

* extension[AttesterRole] ^short = "Attester Role"
* extension[AttesterRole].value[x] 1..1 MS
* extension[AttesterRole].value[x] only CodeableConcept
* extension[AttesterRole].valueCodeableConcept from ADIAttesterRoleTypeVS (extensible)

* extension[AttestationStatement] ^short = "Attestation Statement"
* extension[AttestationStatement].value[x] 1..1 MS
* extension[AttestationStatement].value[x] only string or markdown

* extension[Signature] ^short = "Attester Signature with Date"
* extension[Signature].value[x] 1..1 MS
* extension[Signature].value[x] only Signature

* extension[NotarySealId] ^short = "Notary seal id"
* extension[NotarySealId].value[x] 1..1 MS
* extension[NotarySealId].value[x] only Identifier

* extension[NotaryCommissionExpirationDate] ^short = "Notary commission expiration date"
* extension[NotaryCommissionExpirationDate].value[x] 1..1 MS
* extension[NotaryCommissionExpirationDate].value[x] only date



Extension: ExpirationDateExtension
Id: adi-expiration-date-extension
Title: "ADI Expiration Date"
Description: "The Advance Directive document expiration date. The start date is represented by the Composition.date element."
Context: Composition
* value[x] only dateTime
* valueDateTime 0..1 MS


Extension: ClauseExtension
Id: adi-clause-extension
Title: "Clause"
Description: "A clause or set of clauses relevant to the resource or element being extended"
Context: Bundle, Composition, Consent
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
Id: adi-goal-order-by-descending-priority-extension
Title: "Goal Order by Descending Priority"
Description: "Indicates if the goals are ordered in descending priority (Y) or no specific order (N)."
Context: CarePlan
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from $HL7YesNoVS (extensible)

Extension: ADIConditionCodeExtension
Id: adi-condition-code-extension
Title: "ADI Care Plan Condition Codes"
Description: "Indicates hypothetical conditions that indicate when a CarePlan should be considered and not be confused with conditions a patient has, has had, is suspected of having or is at any sort of risk of having."
Context: CarePlan
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from $USCoreConditionCode (extensible)

Invariant:  notary-information-requires-notary-role
Description: "If Notary information (seal or commission expiration date) exists, then role must be notary"
Expression: 
	"extension.where(url = 'NotarySealId').value.exists() or 
	extension.where(url = 'NotaryCommissionExpirationDate').value.exists() 
	implies extension.where(url = 'AttesterRole').value.coding.exists(code='81372-5')"

// mlt_20231105: line below commented out for troubleshooting Invariant.
// Expression: "(extension.where(url = 'NotarySealId').valueIdentifier.exists() or extension.where(url = 'NotaryCommissionExpirationDate').valueDate.exists()) implies extension.where(url = 'AttesterRole').valueCodeableConcept.where(coding.code='81372-5').exists()"

//Expression: "category.coding.where(code.memberOf('http://hl7.org/fhir/us/pacio-adi/ValueSet/ADIInterventionPreferencesOrdinalVS')).exists() implies description.coding.where(code.memberOf('http://terminology.hl7.org/ValueSet/v2-0136')).exists()"
//Expression: "category.coding.code.memberOf('http://hl7.org/fhir/us/pacio-adi/ValueSet/ADIInterventionPreferencesOrdinalVS').exists()"
Severity:   #error


Extension: DocumentRevokeStatus
Id: adi-document-revoke-status
Title: "Revoke Status"
Description: "The Advance Directive document revoke status."
Context: Composition, DocumentReference
* value[x] only code
* value[x] 0..1 MS
* value[x] from ADIDocumentRevokeStatusVS (required) //  R5 Composition Status valueset. Fix for FHIR-

Extension: ADIDocumentReferenceExtension
Id: adi-document-reference-extension
Title: "ADI Document Reference Extension"
Description: "ADI Document Reference Extension is used to tie to the Composition.relatesTo element."
Context: Composition
* value[x] only Reference
* valueReference 1..1 MS
* valueReference only Reference(ADIDocumentReference)

// TODO Could add Invariant for Signature.type matching the attesterRole
// TODO Notary Expiration Date?

Extension: ADIDocumentLocationExtension
Id: adi-document-location
Title: "Document Location"
Description: "The Advance Directive document location. This location is the endpoint URL that points to the ADI document or resource that exists or a string."
Context: DocumentReference
* value[x] only Reference or string
* value[x] 0..1 MS
* valueReference 0..1
* valueReference only Reference(Endpoint)
* valueString 0..1 MS
* valueString ^short = "A FHIR endpoint URL that points to the ADI document or resource that exists."
* valueString ^comment = "A FHIR endpoint URL that points to the ADI document or resource that exists.  This is used when the document is not available in the FHIR server, such as a PDF or other file format."
