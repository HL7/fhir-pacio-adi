// Bundle Examples
Instance: PMO-Example-Smith-Johnson-Bundle2
InstanceOf: ADIBundle
Description: "Example Patient Smith-Johnson PMO ADI Document Bundle Smith-Johnson 2"
Usage: #example

* identifier.system = "http://example.org/GoodHealthClinic/id"
* identifier.value = "20130607100315-ExamplePMODocument"
* type = #document
* timestamp = "2024-03-29T14:25:34.001-05:00"

* entry[+].fullUrl = "http://www.example.org/fhir/Composition/PMO-Example-Smith-Johnson-PMOComposition1"
* entry[=].resource = PMO-Example-Smith-Johnson-PMOComposition1
* entry[+].fullUrl = "http://www.example.org/fhir/Patient/Example-Smith-Johnson-Patient1"
* entry[=].resource = Example-Smith-Johnson-Patient1
* entry[+].fullUrl = "http://www.example.org/fhir/PractitionerRole/Example-Kyle-Anydoc-PractitionerRole1"
* entry[=].resource = Example-Kyle-Anydoc-PractitionerRole1
* entry[+].fullUrl = "http://www.example.org/fhir/Practitioner/Example-Kyle-Anydoc-Practitioner"
* entry[=].resource = Example-Kyle-Anydoc-Practitioner
* entry[+].fullUrl = "http://www.example.org/fhir/Organization/Example-Smith-Johnson-OrganizationCustodian1"
* entry[=].resource = Example-Smith-Johnson-OrganizationCustodian1
* entry[+].fullUrl = "http://www.example.org/fhir/ServiceRequest/Example-Smith-Johnson-CPR-ServiceRequest1"
* entry[=].resource = Example-Smith-Johnson-CPR-ServiceRequest1
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-Smith-Johnson-DocumentationObservation2"
* entry[=].resource = Example-Smith-Johnson-DocumentationObservation2
* entry[+].fullUrl = "http://www.example.org/fhir/PractitionerRole/ADI-Facilitator-MSW-MargaretReynolds"
* entry[=].resource = ADI-Facilitator-MSW-MargaretReynolds
* entry[+].fullUrl = "http://www.example.org/fhir/Practitioner/Practitioner-MargaretReynolds"
* entry[=].resource = Practitioner-MargaretReynolds
* entry[+].fullUrl = "http://www.example.org/fhir/Endpoint/Example-Smith-Johnson-Endpoint2"
* entry[=].resource = Example-Smith-Johnson-Endpoint2
* entry[+].fullUrl = "http://www.example.org/fhir/Consent/Example-Smith-Johnson-HealthcareAgentConsent-Permit"
* entry[=].resource = Example-Smith-Johnson-HealthcareAgentConsent-Permit
* entry[+].fullUrl = "http://www.example.org/fhir/Consent/Example-Smith-Johnson-HealthcareAgentConsent-Deny"
* entry[=].resource = Example-Smith-Johnson-HealthcareAgentConsent-Deny
* entry[+].fullUrl = "http://www.example.org/fhir/RelatedPerson/Example-Smith-Johnson-HealthcareAgent1"
* entry[=].resource = Example-Smith-Johnson-HealthcareAgent1
* entry[+].fullUrl = "http://www.example.org/fhir/Provenance/Example-Smith-Johnson-PMOProvenance1"
* entry[=].resource = Example-Smith-Johnson-PMOProvenance1
* entry[+].fullUrl = "http://www.example.org/fhir/Organization/Example-Smith-Johnson-OrganizationAssembler1"
* entry[=].resource = Example-Smith-Johnson-OrganizationAssembler1

//Composition Examples

Instance: PMO-Example-Smith-Johnson-PMOComposition1
InstanceOf: ADIPMOComposition
Description: "Example Patient Smith-Johnson Personal Advance Care Plan Composition Example 1"
Usage: #example

* language = #en-US

* extension[composition-clinicaldocument-versionNumber].valueString = "2024-03-29T14:25:34-05:00"  // versionNumber changed to dateTime stamp (fix for FHIR-46150)
* extension[adi-dataEnterer-extension].valueReference = Reference(Example-Smith-Johnson-Patient1)
* extension[adi-healthcareAgentParticipant-extension].valueReference = Reference(PractitionerRole/Example-Kyle-Anydoc-PractitionerRole1)
* extension[adi-expiration-date-extension].valueDateTime = "2024-03-29T14:25:34-05:00"
* extension[adi-performer-extension].valueReference = Reference(PractitionerRole/Example-Kyle-Anydoc-PractitionerRole1)
* extension[adi-informant-extension].valueReference = Reference(RelatedPerson/Example-Smith-Johnson-HealthcareAgent1)
* extension[adi-document-revoke-status].valueCode = ADIRevokeStatusCS#deprecated
* extension[adi-clause-extension].extension[Clause].valueMarkdown = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Example Clause Statement</p></div>"

* identifier.system = "http://example.org/GoodHealthClinic/id"
* identifier.value = "0-87f37989294a408897aacd1fc5d8fd16"


* status = #final
* type = $LOINC#93037-0 "Portable medical order form"
* category = $LOINC#42348-3 "Advance healthcare directives"
* subject = Reference(Example-Smith-Johnson-Patient1)
* date = "2023-03-29T14:25:34-05:00"
* author = Reference(PractitionerRole/Example-Kyle-Anydoc-PractitionerRole1)
* attester.mode = #legal
* attester.party = Reference(PractitionerRole/Example-Kyle-Anydoc-PractitionerRole1)
* title = "Portable Medical Order"

* custodian = Reference(Example-Smith-Johnson-OrganizationCustodian1)

* event.detail[0] = Reference(PractitionerRole/ADI-Facilitator-MSW-MargaretReynolds)
* event.detail[+] = Reference(Consent/Example-Smith-Johnson-HealthcareAgentConsent-Permit)
* event.detail[+] = Reference(Consent/Example-Smith-Johnson-HealthcareAgentConsent-Deny)

* section[portable_medical_orders].title = "Portable Medical Orders"
* section[portable_medical_orders].text.status = #generated
* section[portable_medical_orders].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>PMO Medical Orders</b></p><p><i>Order Exists: <a href=\"http://www.example.com\">available here</a></i></p></div>"

* section[portable_medical_orders].entry[+] = Reference(ServiceRequest/Example-Smith-Johnson-CPR-ServiceRequest1)


* section[additional_documentation].title = "Additional Documentation"
* section[additional_documentation].code = $LOINC#77599-9
* section[additional_documentation].text.status = #generated
* section[additional_documentation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
  <p><b>PMOLST Order Observation</b></p>
  <p><i>Order Exists: <a href=\"http://www.example.com\">available here</a></i></p>
</div>"

* section[additional_documentation].entry[+] = Reference(Example-Smith-Johnson-DocumentationObservation2)


// Line 1205
* section[witness_and_notary].title = "Witnesses and Notary"
* section[witness_and_notary].code = $LOINC#81339-4 "Witness and Notary Document"
* section[witness_and_notary].text.status = #additional
* section[witness_and_notary].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">

<p>I am emotionally and mentally competent to make this uADD.  I understand the purpose and effect of this uADD, I agree with everything that is written in this uADD, and I have made this uADD knowingly, willingly and after careful deliberation.</p>

<table>
    <tbody>
        <tr>
            <td><b>Signature:</b></td>
            <td>Betsy Smith-Johnson</td>
        </tr>
        <tr>
            <td><b>Date:</b></td>
            <td>3/29/2024</td>
        </tr>
    </tbody>
</table>

<p> </p>
<p><b>Statement of Witnesses</b></p>
<p> </p>
<p>I declare that the person who signed this uADD, or who asked another to sign this uADD on his/her behalf, is the individual identified in the document, and he/she did so in my presence or otherwise provided satisfactory proof to me of his/her identity. I believe him/her to be of sound mind and at least 18 years of age. I personally witnessed him/her sign this document or ask the person indicated to do so, or I received proof of his/her identity that I believe is adequate, and I believe that he/she did so voluntarily.  By signing this document as a witness, I certify that I am:</p>
<p> </p>
<ul>
	<li>At least 18 years of age.</li>
	<li>Not related to the person signing this document by blood, marriage or adoption.</li>
	<li>Not a healthcare agent appointed by the person signing this document.</li>
	<li>Not directly financially responsible for that person’s healthcare.</li>
	<li>Not a healthcare provider directly serving the person at this time.</li>
	<li>Not an employee (other than a social worker or chaplain), officer, director, or partner of a healthcare provider (or any parent organization of such healthcare provider) directly serving the person at this time.</li>
	<li>Not aware that I am entitled to or have a claim against the person’s estate.</li>
</ul>
<p> </p>

<table>
	<tbody>
		<tr>
			<td><b>Witness Number:</b></td>
			<td></td>
		</tr>
		<tr>
			<td><b>Signature:</b></td>
			<td></td>
		</tr>
		<tr>
			<td><b>Date:</b></td>
			<td></td>
		</tr>
	</tbody>
</table>
</div>"



Instance: Example-Kyle-Anydoc-PractitionerRole1
InstanceOf: $USCorePractitionerRole
Description: "Example of PractitionerRole for PMO Composition Example 1"
Usage: #example

* practitioner = Reference(Example-Kyle-Anydoc-Practitioner)
* telecom.system = #email
* telecom.value = "kanydoc@example.org"
* telecom.use = #work

Instance: Example-Kyle-Anydoc-Practitioner
InstanceOf: $USCorePractitioner
Description: "Example of Practitioner for PMO Composition Example 1"
Usage: #example

* identifier[NPI].value = "1818345971"
* name.family = "Anydoc"
* name.given = "Kyle"
* name.prefix = "Dr."
* gender = #male
* address.use = #home
* address.line = "567 Healthcare Drive"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "12345"
* address.country = "US"
* qualification.code = http://terminology.hl7.org/CodeSystem/v2-0360#MD "Doctor of Medicine"
* telecom.system = #email
* telecom.value = "kanydoc@example.org"
* telecom.use = #work

Instance: Example-Smith-Johnson-CPR-ServiceRequest1
InstanceOf: ADIPMOCPRServiceRequest
Description: "Example of ADI PMO ServiceRequest"
Usage: #example

* doNotPerform = true
* subject = Reference(Example-Smith-Johnson-Patient1)
* requester = Reference(Example-Kyle-Anydoc-Practitioner)
// * category[0] = $USCoreServiceRequestCategory#treatment-intervention-preference "Treatment Intervention Preference"
* code = $LOINC#LA33470-8
* orderDetail = $LOINC#LA33470-8

Instance: Example-Smith-Johnson-HealthcareAgentConsent-Permit
InstanceOf: ADIConsentPermit
Description: "Example of ADI Healthcare Agent Permit"
Usage: #example

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p>I am consenting for my son Charles to be my authorized personal representative (primary healthcare agent) and I am permitting him to make decisions on my behalf about intubation.</p>
</div>"
* status = #active
* patient = Reference(Example-Smith-Johnson-Patient1)
* policy.uri = "http://example.org/healthcare-agent-policy"  // fictitious policy URL for example
* provision.actor.role = $LOINC#75783-1 "Primary healthcare agent [Reported]"
* provision.actor.reference = Reference(RelatedPerson/Example-Smith-Johnson-HealthcareAgent1)

Instance: Example-Smith-Johnson-HealthcareAgentConsent-Deny
InstanceOf: ADIConsentDeny
Description: "Example of ADI Healthcare Agent Deny"
Usage: #example

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p>I am consenting for my son Charles to be my primary healthcare agent and I am denying him to make decisions on my behalf about nutrition.</p>
</div>"
* status = #active
* patient = Reference(Example-Smith-Johnson-Patient1)
* policy.uri = "http://example.org/healthcare-agent-policy"  // fictitious policy URL for example
* provision.actor.role = $LOINC#75783-1 "Primary healthcare agent [Reported]"
* provision.actor.reference = Reference(RelatedPerson/Example-Smith-Johnson-HealthcareAgent1)

Instance: ADI-Facilitator-MSW-MargaretReynolds
InstanceOf: ADIFacilitator
Usage: #example
Description: "Margaret A. Reynolds' Facilitator Role"
* active = true
* code = $HL7v3ParticipationType#PPRF
* specialty = $NUCC#1041C0700X "Clinical Social Worker"
* practitioner = Reference(Practitioner/Practitioner-MargaretReynolds) "Margaret A. Reynolds"
* organization = Reference(Organization/Example-Smith-Johnson-OrganizationAssembler1) "Example Organization"
* endpoint = Reference(Example-Smith-Johnson-Endpoint2)

Instance: Practitioner-MargaretReynolds
InstanceOf: Practitioner
Usage: #example
Description: "Margaret Q. Reynolds's practitioner record."
* identifier.system = "http://example.org/fhir/MI-state-license"
* identifier.value = "86420"
* active = true
* name.text = "Margaret Q. Reynolds"
* name.family = "Reynolds"
* name.given[0] = "Margaret"
* name.given[1] = "Q."
* telecom[0].system = #phone
* telecom[=].value = "(555) 391-9414"
* address.text = "18051 Mack Ave, Detroit, MI 48224"
* address.line = "18051 Mack Ave"
* address.city = "Detroit"
* address.state = "MI"
* address.postalCode = "48224"
* address.country = "US"
* gender = #female


Instance: Example-Smith-Johnson-DocumentationObservation2
InstanceOf: $USCoreObservationADIDocumentation // fix for FHIR-51827 - replaced US Core equivalent of ADIDocumentationObservation
Description: "Example Patient Smith-Johnson PMOLST Documentation Observation"
Usage: #example

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>PMOLST Order Observation</b></p>
<p><i>Order Exists: <a href='http://www.example.com'>available here</a></i></p>
</div>"
* status = #final
* subject = Reference(Example-Smith-Johnson-Patient1)
* performer = Reference(Example-Kyle-Anydoc-PractitionerRole1)
//* focus = "DocumentReference/Example-Smith-Johnson-Patient1-DocumentReference_PMOLST"
* effectiveDateTime = "2021-03-29T14:25:34.001-05:00"
* valueCodeableConcept = $SNOMEDCT#697978002 "Provider orders for life-sustaining treatment"
* performer = Reference(Example-Smith-Johnson-Patient1)
* effectiveDateTime = "2016-05-18T22:33:22Z"

// Provenance Examples

Instance: Example-Smith-Johnson-PMOProvenance1
InstanceOf: ADIProvenance
Description: "Example Patient Smith-Johnson Provenance"
Usage: #example

* target = Reference(PMO-Example-Smith-Johnson-PMOComposition1)
* recorded = "2021-03-29T14:25:34.001-05:00"

* agent[assembler].type = $HL7ProvenanceParticipantType#assembler "Assembler"
* agent[assembler].who = Reference(Example-Smith-Johnson-OrganizationAssembler1)

// TODO where does assembler or provenance get referenced to by the Composition (or doesn't it)?
Instance: Example-Smith-Johnson-OrganizationAssembler1
InstanceOf: $USCoreOrganization
Description: "Example Patient Smith-Johnson Assembler Organization"
Usage: #example

* identifier.system = "http://example.org/GoodHealthClinic/id"
* identifier.value = "12c5dcee5089494ca1ca0cb428ed3fff"
* active = true
* name = "GoodHealth Clinic"

* telecom[0].system = #phone
* telecom[0].value = "+1(202)776-7700"
* telecom[0].use = #work

* address[0].type = http://hl7.org/fhir/address-type#physical
* address[0].line[0] = "740 E. Campbell Rd. Suite 825"
* address[0].city = "Richardson"
* address[0].state = "TX"
* address[0].postalCode = "75081"
* address[0].country = "US"

Instance: Example-Smith-Johnson-Endpoint2
InstanceOf: Endpoint
Usage: #example
Description: "Betsy Smith-Johnson MHAD Composition Example"

* identifier.system = "https://example.org/GoodHealth-Clinic"
* identifier.value = "PatientCorrection"
* connectionType = $endpoint-connection-type#hl7-fhir-rest "HL7 FHIR"
* status = #active
* name = "Good Health Clinic Endpoint"
* payloadType.coding[0] = $HL7v3DocumentFormatCodes#urn:hl7-org:sdwg:ccda-nonXMLBody:1.1
* payloadType.coding[+] = $HL7v3DocumentFormatCodes#urn:hl7-org:sdwg:ccda-structuredBody:1.1
* payloadType.text = "For documents following C-CDA constraints using a structured body"
* address = "https://example.org/address"