// Bundle Examples
Instance: PMO-Example-Smith-Johnson-Bundle2
InstanceOf: Bundle
Description: "Example Patient Smith-Johnson PMO ADI Document Bundle Smith-Johnson 2"
Usage: #example

* identifier.system = "urn:oid:2.16.840.1.113883.3.3208.101.1"
// * identifier.value = "20130607100315-CCDA-CCD"
* type = #document
* timestamp = "2024-03-29T14:25:34.001-05:00"

* entry[+].fullUrl = "http://www.example.org/fhir/Composition/PMO-Example-Smith-Johnson-PMOComposition1"
* entry[=].resource = PMO-Example-Smith-Johnson-PMOComposition1
* entry[+].fullUrl = "http://www.example.org/fhir/Patient/Example-Smith-Johnson-Patient1"
* entry[=].resource = Example-Smith-Johnson-Patient1
* entry[+].fullUrl = "http://www.example.org/fhir/Patient/Example-Kyle-Anydoc-PractitionerRole1"
* entry[=].resource = Example-Kyle-Anydoc-PractitionerRole1
* entry[+].fullUrl = "http://www.example.org/fhir/Patient/Example-Kyle-Anydoc-Practitioner"
* entry[=].resource = Example-Kyle-Anydoc-Practitioner
* entry[+].fullUrl = "http://www.example.org/fhir/Patient/Example-Smith-Johnson-CPR-ServiceRequest1"
* entry[=].resource = Example-Smith-Johnson-CPR-ServiceRequest1

// Patient Examples - *** MLT: example already created for PACP.


//Composition Examples

Instance: PMO-Example-Smith-Johnson-PMOComposition1
InstanceOf: ADIPMOComposition
Description: "Example Patient Smith-Johnson Personal Advance Care Plan Composition Example 1"
Usage: #example

* language = #en-US

// Need to add extensions (mostly participants)
* extension[composition-clinicaldocument-versionNumber].valueString = "11546d53-a054-4882-bc0a-ff02aa0ba887c"
* extension[adi-jurisdiction-extension].valueCodeableConcept = urn:iso:std:iso:3166:-2#US-MI
* extension[adi-dataEnterer-extension].valueReference = Reference(Example-Smith-Johnson-Patient1)
* extension[adi-effective-date-extension].valuePeriod.start = "2024-03-29T14:25:34-05:00"
// witness Sally Bobbins

* identifier.system = "urn:oid:2.16.840.1.113883.4.823.1.7124"
* identifier.value = "0-87f37989294a408897aacd1fc5d8fd16"


* status = #final
* type = $LOINC#93037-0 "Portable medical order form"
* category = $LOINC#42348-3 "Advance directives"
* subject = Reference(Example-Smith-Johnson-Patient1)
* date = "2024-03-29T14:25:34-05:00"
* author = Reference(Example-Kyle-Anydoc-PractitionerRole1)
* title = "Portable Medical Order"

* custodian = Reference(Example-Smith-Johnson-OrganizationCustodian1)


* section[portable_medical_orders].title = "Portable Medical Orders"
// * section[portable_medical_orders].code = $LOINC#93037-0 
* section[portable_medical_orders].text.status = #generated
* section[portable_medical_orders].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>PMO Medical Orders</b></p>
<p><i>Order Exists: <a href='http://www.example.com'>available here</a></i></p>
</div>"

* section[portable_medical_orders].entry[+] = Reference(Example-Smith-Johnson-CPR-ServiceRequest1)


* section[additional_documentation].title = "Additional Documentation"
* section[additional_documentation].code = $LOINC#77599-9
* section[additional_documentation].text.status = #generated
* section[additional_documentation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>PMOLST Order Observation</b></p>
<p><i>Order Exists: <a href='http://www.example.com'>available here</a></i></p>
</div>"

* section[additional_documentation].entry[+] = Reference(Example-Smith-Johnson-DocumentationObservation1)


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

Instance: Example-Kyle-Anydoc-Practitioner
InstanceOf: $USCorePractitioner
Description: "Example of Practitioner for PMO Composition Example 1"
Usage: #example

* identifier[NPI].value = "21548796354"
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
* orderDetail = $LOINC#LA33470-8