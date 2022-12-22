Instance: Example-Smith-Johnson-PMOCPRServiceRequest1
InstanceOf: PADIPMOCPRServiceRequest
Description: "Example Patient Smith-Johnson PMO CPR ServiceRequest Smith-Johnson 1"
Usage: #example

//* text.status = #generated
//* text.status = #empty // TODO change when there is a text value
//* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: ServiceRequest</b><a name=\"Example-Smith-Johnson-PMOCPRServiceRequest1\"> </a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource ServiceRequest &quot;Example-Smith-Johnson-PMOCPRServiceRequest1&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-PADI-PMOCPRServiceRequest.html\">ADI PMO Cardiopulmonary Resuscitation ServiceRequest</a></p></div><p><b>status</b>: active</p><p><b>intent</b>: order</p><p><b>category</b>: Cardiopulmonary resuscitation orders <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://loinc.org/\">LOINC</a>#100822-6)</span></p><p><b>code</b>: YES CPR <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://loinc.org/\">LOINC</a>#LA33470-8)</span></p><p><b>subject</b>: <a href=\"Patient-Example-Smith-Johnson-Patient1.html\">Patient/Example-Smith-Johnson-Patient1</a> &quot; SMITH-JOHNSON&quot;</p><p><b>requester</b>: <a href=\"Practitioner-PMOPractitioner1.html\">Practitioner/PMOPractitioner1</a> &quot; LEVIN&quot;</p></div>"


//* extension contains
//    padi-based-on-consent-extension named BasedOnConsentExtension 0..1

* status = #active
* intent = #order

* category = $LOINC#100822-6 "Cardiopulmonary resuscitation orders"
* code = $LOINC#LA33470-8 "YES CPR"



* subject = Reference(Example-Smith-Johnson-Patient1) "Smith-Johnson, Betsy"

* requester = Reference(PMOPractitioner1)



Instance: Example-Smith-Johnson-PMOInitialTreatmentServiceRequest1
InstanceOf: PADIPMOInitialTreatmentServiceRequest
Description: "Example Patient Smith-Johnson PMO Initial Treatment ServiceRequest Smith-Johnson 1"
Usage: #example

//* text.status = #generated
//* text.status = #empty // TODO change when there is a text value
//* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"

//* extension contains
//    padi-based-on-consent-extension named BasedOnConsentExtension 0..1

* status = #active
* intent = #order

* category = $LOINC#100823-4 "Initial portable medical treatment orders"
* code = $LOINC#LA33473-2 "Full Treatments"

* subject = Reference(Example-Smith-Johnson-Patient1) "Smith-Johnson, Betsy"

* requester = Reference(PMOPractitioner1)







Instance: Example-Smith-Johnson-PMOMNutritionServiceRequest1
InstanceOf: PADIPMOMedicallyAssistedNutritionServiceRequest
Description: "Example Patient Smith-Johnson PMO Medically Assisted Nutrition ServiceRequest Smith-Johnson 1"
Usage: #example

//* text.status = #generated
 //* text.status = #empty // TODO change when there is a text value
//* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"

//* extension contains
//    padi-based-on-consent-extension named BasedOnConsentExtension 0..1

* status = #active
* intent = #order

* category = $LOINC#100825-9 "Medically assisted nutrition orders"
* code = $LOINC#LA33492-2 "Not discussed or no decision made (provide standard of care)"



* subject = Reference(Example-Smith-Johnson-Patient1) "Smith-Johnson, Betsy"

* requester = Reference(PMOPractitioner1)





Instance: Example-Smith-Johnson-PMOAdditionalRequestServiceRequest1
InstanceOf: PADIPMOAdditionalRequestServiceRequest
Description: "Example Patient Smith-Johnson PMO Additional ServiceRequest Smith-Johnson 1"
Usage: #example

//* text.status = #generated
//* text.status = #empty // TODO change when there is a text value
//* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"

//* extension contains
//    padi-based-on-consent-extension named BasedOnConsentExtension 0..1

* status = #active
* intent = #order

* category = $LOINC#100824-2 "Additional portable medical orders or instructions"
* code.text = "Avoid transport to hospital unless necessary"



* subject = Reference(Example-Smith-Johnson-Patient1) "Smith-Johnson, Betsy"

* requester = Reference(PMOPractitioner1)


Instance: Example-Smith-Johnson-PMONoAdditionalRequestObservation1
InstanceOf: PADIPMONoAdditionalRequestObservation
Description: "Example Patient Smith-Johnson PMO No Additional ServiceRequest Observation Smith-Johnson 1"
Usage: #example

//* text.status = #generated
//* text.status = #empty // TODO change when there is a text value
//* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"

//* extension contains
//    padi-based-on-consent-extension named BasedOnConsentExtension 0..1

* status = #final

* code = $LOINC#100824-2 "Additional portable medical orders or instructions"
* valueBoolean = false
* subject = Reference(Example-Smith-Johnson-Patient1) "Smith-Johnson, Betsy"
* performer = Reference(PMOPractitioner1)




Instance: Example-Smith-Johnson-PMOReviewObservation1
InstanceOf: PADIPMOReviewObservation
Description: "Example Patient Smith-Johnson PMO Advance Directive Review Smith-Johnson 1"
Usage: #example

// TODO will likely need a variance Request
//* text.status = #empty // TODO change when there is a text value
//* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* status = #final


* code = $LOINC#100826-7 "Portable medical order AndOr advance directive review"

* focus = Reference(Example-Smith-Johnson-PADIPMOComposition1) 
* valueCodeableConcept = $LOINC#LA33478-1 "Conflict exists, notified patient"




Instance: Example-Smith-Johnson-PADIPMOParticipantObservation1
InstanceOf: PADIPMOParticipantObservation
Description: "Example Patient Smith-Johnson PMO Participant Observation Smith-Johnson 1"
Usage: #example

// TODO will likely need a variance Request
//* text.status = #empty // TODO change when there is a text value
//* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* status = #final


* code = $LOINC#100827-5 "Portable medical order discussion participants"

* focus = Reference(Example-Smith-Johnson-PADIPMOComposition1) 
* valueCodeableConcept = $LOINC#LA33482-3 "Patient with decision-making capacity"



/*

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


Profile: PADIPMOAdditionalRequestServiceRequest
Parent: PADIPMOServiceRequest
Id: PADI-PMOAdditionalRequestServiceRequest
Title: "ADI PMO Additional request or instruction ServiceRequest"
Description: "This profile is used to represent a practitioner authored portable medical order additional requests or instructions."

* ^experimental = false
* category = $LOINC#100824-2 // "Additional portable medical orders or instructions"
* code 1..1 MS

*/

Instance: PMOPractitioner1
InstanceOf: USCorePractitionerProfile
Description: "PMO Provider 1"
Usage: #example
//* meta.profile = Canonical(C4BBOrganization)
* identifier[NPI].type = $HL7IdentifierType#NPI
* identifier[NPI].value = "846274937"
* name[0].family = "Levin"
* name[0].given[0] = "Henry"
* name[0].suffix = "MD"
* name[0].text = "Levin, Henry MD"
* active = true




Instance: Example-Smith-Johnson-DocRef-PMOBundle
InstanceOf: PADI-DocumentReference
Description: "Example Patient Smith-Johnson DocumentReference Bundle"
Usage: #example

* masterIdentifier.system = "urn:oid:2.16.840.1.113883.4.823.1.7124"
* masterIdentifier.value = "0-87f37989294a408897aacd1fc5d8fd16"

* identifier[+].system = "urn:oid:2.16.840.1.113883.3.3208.101.1"
* identifier[=].value = "0-87f37989294a408897aacd1fc5d8fd16"


* status = #current
* docStatus = #final

* type = $LOINC##93037-0 "Portable medical order form"
// TODO, need a better category code
* category = $LOINC#81352-7	"Medical Order for Life-Sustaining Treatment, Physician Order for Life-Sustaining Treatment, or a similar medical order is in place [Reported]"


* subject = Reference(Example-Smith-Johnson-Patient1) "Smith-Johnson, Betsy"

* date = "2022-12-12T14:25:34.001-05:00"

* author = Reference(Example-Smith-Johnson-Patient1) "Smith-Johnson, Betsy"



* authenticator = Reference(Example-Smith-Johnson-OrganizationCustodian1) "MyDirectives.com"

* custodian = Reference(Organization/Example-Smith-Johnson-OrganizationCustodian1) "MyDirectives.com"

* description = "National POLST: portable medical order"

* securityLabel.coding[0] = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N "normal"

* content[0].attachment.contentType = #application/fhir+json
* content[0].attachment.url = "Bundle/Example-Smith-Johnson-PMOBundle1"


// Bundle Examples

Instance: Example-Smith-Johnson-PMOBundle1
InstanceOf: Bundle
Description: "Example Patient Smith-Johnson PMO Document Bundle Smith-Johnson 1"
Usage: #example

* identifier.system = "urn:oid:2.16.840.1.113883.3.3208.101.1"
* identifier.value = "20130607100315-CCDA-CCD"
* type = #document
* timestamp = "2021-03-29T14:25:34.001-05:00"

* entry[+].fullUrl = "http://www.example.org/fhir/Composition/Example-Smith-Johnson-PADIPMOComposition1"
* entry[=].resource = Example-Smith-Johnson-PADIPMOComposition1

* entry[+].fullUrl = "http://www.example.org/fhir/Patient/Example-Smith-Johnson-Patient1"
* entry[=].resource = Example-Smith-Johnson-Patient1

* entry[+].fullUrl = "http://www.example.org/fhir/Practitioner/PMOPractitioner1"
* entry[=].resource = PMOPractitioner1
* entry[+].fullUrl = "Organization/Example-Smith-Johnson-OrganizationCustodian1"
* entry[=].resource = Example-Smith-Johnson-OrganizationCustodian1





* entry[+].fullUrl = "http://www.example.org/fhir/RelatedPerson/Example-Smith-Johnson-Notary1"
* entry[=].resource = Example-Smith-Johnson-Notary1


* entry[+].fullUrl = "http://www.example.org/fhir/ServiceRequest/Example-Smith-Johnson-PMOCPRServiceRequest1"
* entry[=].resource = Example-Smith-Johnson-PMOCPRServiceRequest1
* entry[+].fullUrl = "http://www.example.org/fhir/ServiceRequest/Example-Smith-Johnson-PMOInitialTreatmentServiceRequest1"
* entry[=].resource = Example-Smith-Johnson-PMOInitialTreatmentServiceRequest1
* entry[+].fullUrl = "http://www.example.org/fhir/ServiceRequest/Example-Smith-Johnson-PMOMNutritionServiceRequest1"
* entry[=].resource = Example-Smith-Johnson-PMOMNutritionServiceRequest1
* entry[+].fullUrl = "http://www.example.org/fhir/ServiceRequest/Example-Smith-Johnson-PMONoAdditionalRequestObservation1"
* entry[=].resource = Example-Smith-Johnson-PMONoAdditionalRequestObservation1

//* entry[+].fullUrl = "http://www.example.org/fhir/ServiceRequest/Example-Smith-Johnson-PMOAdditionalRequestServiceRequest1"
//* entry[=].resource = Example-Smith-Johnson-PMOAdditionalRequestServiceRequest1




* entry[+].fullUrl = "http://www.example.org/fhir/Goal/Example-Smith-Johnson-CareExperiencePreference5"
* entry[=].resource = Example-Smith-Johnson-CareExperiencePreference5
* entry[+].fullUrl = "http://www.example.org/fhir/Goal/Example-Smith-Johnson-CareExperiencePreference6"
* entry[=].resource = Example-Smith-Johnson-CareExperiencePreference6



* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-Smith-Johnson-PMOReviewObservation1"
* entry[=].resource = Example-Smith-Johnson-PMOReviewObservation1
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-Smith-Johnson-PADIPMOParticipantObservation1"
* entry[=].resource = Example-Smith-Johnson-PADIPMOParticipantObservation1

/*

// Patient Examples

Instance: Example-Smith-Johnson-Patient1
InstanceOf: $USCorePatient
Description: "Example Patient Smith-Johnson Patient Example 1"
Usage: #example

* meta.lastUpdated = "2021-03-29T14:25:34.001-05:00"
* language = #en-US

* identifier[0].system = "urn:oid:2.16.840.1.113883.4.823.1"
* identifier[0].value = "047e62ccf09d4b39a8add708a69b7f38"

* active = true
* name[0].use = #usual
* name[0].family = "Smith-Johnson"
* name[0].given[0] = "Betsy"


* telecom[0].system = #email
* telecom[0].value = "BetsySJ@example.com"
* telecom[0].use = #home

* gender = #female
* birthDate = "1950-11-15"
* address[0].use = #home
* address[0].type = http://hl7.org/fhir/address-type#physical
* address[0].line[0] = "111 Maple Court"
* address[0].city = "San Antonio"
* address[0].state = "TX"
* address[0].postalCode = "78212"
* address[0].country = "US"
* maritalStatus = $HL7NullFlavor#UNK


* communication[0].language = urn:ietf:bcp:47#en "English"
* communication[0].preferred = true

*/
//Composition Examples

Instance: Example-Smith-Johnson-PADIPMOComposition1
InstanceOf: PADIPMOComposition
Description: "Example Patient Smith-Johnson Portable Medical Order Composition Example 1"
Usage: #example

* language = #en-US

// Need to add extensions (mostly participants)
* extension[padi-versionNumber-extension].valueInteger = 1
* extension[padi-jurisdiction-extension].valueCodeableConcept = urn:iso:std:iso:3166:-2#US-MI
* extension[padi-dataEnterer-extension].valueReference = Reference(Example-Smith-Johnson-Patient1) "Smith-Johnson, Betsy"
// witness Sally Bobbins

* identifier.system = "urn:oid:2.16.840.1.113883.4.823.1.7124"
* identifier.value = "0-87f37989294a408897aacd1fc5d8fd20"


* status = #final
* type = $LOINC#93037-0 "Portable medical order form"
// TODO, need a better category code
* category = $LOINC#81352-7	"Medical Order for Life-Sustaining Treatment, Physician Order for Life-Sustaining Treatment, or a similar medical order is in place [Reported]"
* subject = Reference(Example-Smith-Johnson-Patient1) "Smith-Johnson, Betsy"
* date = "2022-12-12T14:25:34-05:00"
* author = Reference(Example-Smith-Johnson-Patient1) "Smith-Johnson, Betsy"
* title = "Portable Medical Order for Life Sustaining Treatment"

* custodian = Reference(Example-Smith-Johnson-OrganizationCustodian1)

* attester[notary_attester].mode = #professional
* attester[notary_attester].party = Reference(Example-Smith-Johnson-Notary1) "Xavier, Charles"
* attester[notary_attester].extension[padi-attestationInformation-extension].extension[AttesterRole].valueCodeableConcept = $LOINC#81372-5 "Notary"
* attester[notary_attester].extension[padi-attestationInformation-extension].extension[NotarySealId].valueIdentifier.value = "notary-1254"
* attester[notary_attester].extension[padi-attestationInformation-extension].extension[NotaryCommissionExpirationDate].valueDate = "2022-12-31"


// TODO Where should the top level note go? <p><b>It is very important for you to discuss your medical treatment goals and wishes with your healthcare agent, your family, and your medical care providers.</b> Keep in mind that advance medical directives are simply expressions of your medical treatment goals and preferences. There is no guarantee that your medical care providers will follow all of your wishes, but one thing is certain: <b>If your advance medical directives cannot be quickly located and retrieved in a time of need, then medical care providers, your family and friends will not be able to take your wishes into consideration when they make critical decisions regarding your treatment.</b></p>


// no legal authenticator in CDA

// Line 202
* section[portable_medical_orders].title = "Portable Medical Orders"
* section[portable_medical_orders].code = $LOINC#59772-4 "Planned procedure Narrative"
* section[portable_medical_orders].text.status = #empty
* section[portable_medical_orders].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"

* section[portable_medical_orders].entry[+] = Reference(Example-Smith-Johnson-PMOCPRServiceRequest1)
* section[portable_medical_orders].entry[+] = Reference(Example-Smith-Johnson-PMOInitialTreatmentServiceRequest1)
* section[portable_medical_orders].entry[+] = Reference(Example-Smith-Johnson-PMOMNutritionServiceRequest1)
* section[portable_medical_orders].entry[+] = Reference(Example-Smith-Johnson-PMONoAdditionalRequestObservation1)
//* section[portable_medical_orders].entry[+] = Reference(Example-Smith-Johnson-PMOAdditionalRequestServiceRequest1)



// Line 1011
* section[gpp_personal_care_experience].title = "Patient Goals, Preferences, and Priorities for Care Experience"
* section[gpp_personal_care_experience].code = $LOINC#81338-6 "Patient Goals, Preferences, and Priorities for Care Experience"
* section[gpp_personal_care_experience].text.status = #additional
* section[gpp_personal_care_experience].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><i>MyDirectives® offers people a list of optional questions that can be answered by typing text in a text box or by uploading a video or audio file for each question. Only those questions answered by Betsy Smith-Johnson appear here. For a complete list of questions in My Thoughts, please visit www.MyDirectives.com.</i></p>
<p> </p>
<p><b>In case I’m being cared for by a person(s) who doesn't know me very well, I’d like my following thoughts to be known.</b></p>
<p><b>My religion:</b></p>
<p>If I appear to be approaching the end of my life, here are some things that I would like for my caregivers to know about my faith and my religion.</p>
<p><i>Please call Father Mark if my condition warrants the services of a priest.</i></p>
<p> </p>
<p> </p>
<p><b>Please attempt to notify someone from my religion at the following phone number:</b></p>
<p>If I have included one</p>
<p><i>Catholic</i></p>

</div>"
* section[gpp_personal_care_experience].entry[+] = Reference(Example-Smith-Johnson-CareExperiencePreference5)
* section[gpp_personal_care_experience].entry[+] = Reference(Example-Smith-Johnson-CareExperiencePreference6)




// Line 477
* section[completion_information].title = "Portable medical order completion information"
* section[completion_information].code = $LOINC#100970-3 "Portable medical order completion information" // Code is LOINC pre-release as on 11/03/2022 - https://loinc.org/prerelease/
* section[completion_information].text.status = #empty
* section[completion_information].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"



* section[completion_information].entry[+] = Reference(Example-Smith-Johnson-PMOReviewObservation1)
* section[completion_information].entry[+] = Reference(Example-Smith-Johnson-PADIPMOParticipantObservation1)


/*

// Participant examples
// Healthcare Agent examples

Instance: Example-Smith-Johnson-HealthcareAgent1
InstanceOf: PADIParticipant
Description: "Example Patient Smith-Johnson Healthcare Agent (Charles Johnson)"
Usage: #example
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>Primary Healthcare Agent</b></p>
<p>The person I choose as my Primary Healthcare Agent is:</p>
<p><i>Charles Johnson</i></p>
<p><i>(Son)</i></p>
<p><i>CharlesSJ@example.com</i></p>
<p>[SELECTED to act as a healthcare agent on 3/29/2021, at 2:25 PM CDT]</p>
<p>[ACCEPTED to act as a healthcare agent on 4/1/2021, at 3:39 PM CDT]</p>
</div>"

* patient = Reference(Example-Smith-Johnson-Patient1) "Smith-Johnson, Betsy"
* relationship[personal_and_legal_relationship_role] = $HL7RoleCode#SON "natural son"

* name[0].family = "Johnson"
* name[0].given[0] = "Charles"
* telecom[0].system = #email
* telecom[0].value = "CharlesSJ@example.com"
* telecom[0].use = #home



Instance: Example-Smith-Johnson-HealthcareAgent2
InstanceOf: PADIParticipant
Description: "Example Patient Smith-Johnson Healthcare Agent (Debra Johnson)"
Usage: #example
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>First Alternate Healthcare Agent</b></p>
<p>If this healthcare agent is unable or unwilling to make medical treatment decisions for me, or if my spouse is designated as my primary healthcare agent and our marriage is annulled, or we are divorced or legally separated, then my next choice for a healthcare agent is:</p>
<p><i>Debra Johnson</i></p>
<p><i>(Daughter)</i></p>
<p><i>DebraSJ@example.com</i></p>
<p>[SELECTED to act as a healthcare agent on 3/29/2021, at 2:25 PM CDT]</p>
<p>[As of 4/1/2021, at 3:40 PM CDT, a response is still PENDING]</p>
</div>"

* patient = Reference(Example-Smith-Johnson-Patient1) "Smith-Johnson, Betsy"
//* relationship[0] = $LOINC#75784-9 "First alternate healthcare agent [Reported]"
* relationship[0] = $HL7RoleCode#DAU "natural daughter"

* name[0].family = "Johnson"
* name[0].given[0] = "Debra"
* telecom[0].system = #email
* telecom[0].value = "DebraSJ@example.com"
* telecom[0].use = #home



Instance: Example-Smith-Johnson-Notary1
InstanceOf: PADIParticipant
Description: "Example Patient Smith-Johnson Notary"
Usage: #example
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>Notary</b></p>
<p>Charles Xavier</p>
</div>"

* patient = Reference(Example-Smith-Johnson-Patient1) "Smith-Johnson, Betsy"

* name[0].family = "Xavier"
* name[0].given[0] = "Charles"
* telecom[0].system = #email
* telecom[0].value = "Chales@example.com"
* telecom[0].use = #work



// TODO update text
Instance: Example-Smith-Johnson-HealthcareAgentConsent
InstanceOf: PADIParticipantConsent
Description: "Example Patient Smith-Johnson Healthcare Agent Consent"
Usage: #example
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p><b>status</b>: active</p><p><b>scope</b>: <span title='Codes: {http://loinc.org 75786-4}'>Powers granted to healthcare agent [Reported]</span></p><p><b>category</b>: <span title='Codes: {http://terminology.hl7.org/CodeSystem/consentcategorycodes acd}'>Advance Directive</span></p><p><b>patient</b>: <a href='Patient-Example-Smith-Johnson-Patient1.html'>Betsy Smith-Johnson</a> ; BetsySJ@example.com; gender: female; birthDate: 1950-11-15</p><p><b>dateTime</b>: 2020-08-03</p><h3>Policies</h3><table class='grid'><tr><td>-</td><td><b>Authority</b></td><td><b>Uri</b></td></tr><tr><td>*</td><td><a href='https://www.michigan.gov/'>https://www.michigan.gov/</a></td><td><a href='http://www.legislature.mi.gov/(S(tpnclc1ofteerx2x2dppcmdz))/mileg.aspx?page=GetObject&amp;objectname=mcl-386-1998-V-5'>http://www.legislature.mi.gov/(S(tpnclc1ofteerx2x2dppcmdz))/mileg.aspx?page=GetObject&amp;objectname=mcl-386-1998-V-5</a></td></tr></table><blockquote><p><b>provision</b></p><p><b>type</b>: permit</p><blockquote><p><b>actor</b></p><p><b>role</b>: <span title='Codes: {http://loinc.org 75783-1}'>Primary healthcare agent [Reported]</span></p><p><b>reference</b>: <a href='RelatedPerson-Example-Smith-Johnson-HealthcareAgent1.html'><span title='Codes: {http://terminology.hl7.org/CodeSystem/v3-RoleCode SON}'>natural son</span>; Charles Johnson ; CharlesSJ@example.com</a></p></blockquote><blockquote><p><b>actor</b></p><p><b>role</b>: <span title='Codes: {http://loinc.org 75784-9}'>First alternate healthcare agent [Reported]</span></p><p><b>reference</b>: <a href='RelatedPerson-Example-Smith-Johnson-HealthcareAgent2.html'><span title='Codes: {http://loinc.org 75784-9}'>First alternate healthcare agent [Reported]</span>, <span title='Codes: {http://terminology.hl7.org/CodeSystem/v3-RoleCode DAU}'>natural daughter</span>; Debra Johnson ; DebraSJ@example.com</a></p></blockquote><p><b>action</b>: <span title='Codes: {http://loinc.org 75787-2}'>Advance directive - request for intubation</span>, <span title='Codes: {http://loinc.org 75788-0}'>Advance directive - request for tube feeding</span>, <span title='Codes: {http://loinc.org 75789-8}'>Advance directive - request for life support</span>, <span title='Codes: {http://loinc.org 75790-6}'>Advance directive - request for IV fluid and support</span>, <span title='Codes: {http://loinc.org 75791-4}'>Advance directive - request for antibiotics</span>, <span title='Codes: {http://loinc.org 75792-2}'>Advance directive - request for resuscitation that differs from cardiopulmonary resuscitation</span></p><p><b>purpose</b>: <span title='{http://terminology.hl7.org/CodeSystem/v3-ActReason PWATRNY}'>power of attorney</span></p></blockquote></div>"

* status = #active
* scope = $LOINC#75786-4 "Powers granted to healthcare agent [Reported]"
* patient = Reference(Example-Smith-Johnson-Patient1) "Smith-Johnson, Betsy"
* dateTime = "2020-08-03"

* policy.authority = "https://www.michigan.gov/"
* policy.uri = "http://www.legislature.mi.gov/(S(tpnclc1ofteerx2x2dppcmdz))/mileg.aspx?page=GetObject&objectname=mcl-386-1998-V-5"

* provision.type = #permit

//[TODO] do we need to support and require provision.actor for all HCA's?
* provision.actor[+].role = $LOINC#75783-1 "Primary healthcare agent [Reported]"
* provision.actor[=].reference = Reference(Example-Smith-Johnson-HealthcareAgent1)
* provision.actor[+].role = $LOINC#75784-9 "First alternate healthcare agent [Reported]"
* provision.actor[=].reference = Reference(Example-Smith-Johnson-HealthcareAgent2)

* provision.action[+] = PADIHCADecisionsCS#intubation "Intubation"
* provision.action[+] = PADIHCADecisionsCS#tube-feeding "Tube feeding"
* provision.action[+] = PADIHCADecisionsCS#life-support "Life support"
* provision.action[+] = PADIHCADecisionsCS#iv-fluid-and-support "IV fluid and support"
* provision.action[+] = PADIHCADecisionsCS#antibiotics "Antibiotics"
* provision.action[+] = PADIHCADecisionsCS#resuscitation-non-cpr "Non-CPR Resuscitation"

* provision.purpose = http://terminology.hl7.org/CodeSystem/v3-ActReason#PWATRNY




// CarePlan
// Preference Care Plan
Instance: Example-Smith-Johnson-PreferenceCarePlan1
InstanceOf: PADIPreferenceCarePlan
Description: "Example Patient Smith-Johnson Preference Care Plan 1"
Usage: #example

// TODO update text
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p><b>status</b>: active</p><p><b>intent</b>: proposal</p><p><b>category</b>: <span title='Codes: {http://snomed.info/sct 736366004}'>Advance care plan</span></p><p><b>subject</b>: <a href='Patient-Example-Smith-Johnson-Patient1.html'>Betsy Smith-Johnson</a> ; BetsySJ@example.com; gender: female; birthDate: 1950-11-15</p><p><b>addresses</b>: </p><ul><li><span>Unconscious, in a coma, or in a persistent vegetative state with little or no chance of recovery</span></li><li><span>Persistent vegetative state (SNOMED CT 24473007)</span></li><li><span>Irreversible coma (SNOMED CT 73453007)</span></li></ul><p><b>goal</b>: </p><ul><li><a href='Goal-Example-Smith-Johnson-PersonalGoal1.html'><span title='Codes: {http://loinc.org 81378-2}'>Goals, preferences, and priorities under certain health conditions [Reported]</span></a>; <span title='Codes: '>If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me: Avoiding prolonged dependence on machines, Not being a physical burden to my family, Dying at home</span></li><li><a href='Goal-Example-Smith-Johnson-PersonalInterventionPreference3.html'><span title='Codes: {http://loinc.org 75778-1}'>Information to tell doctors if I have a severe, irreversible brain injury or illness and can't dress, feed, or bathe myself, or communicate my medical wishes, but can be kept alive [Reported]</span></a>; <span title='Codes: '>If my health ever deteriorates due to a terminal illness, and my doctors believe I will not be able to interact meaningfully with my family, friends, or surroundings, I would like for them to keep trying life-sustaining treatments until my healthcare agent decides it is time to stop and such treatments and let me die gently.</span></li><li><a href='Goal-Example-Smith-Johnson-CareExperiencePreference6.html'><span title='Codes: {http://loinc.org 81365-9}'>Religious or cultural affiliation contact to notify [Reported]</span></a>; <span title='Codes: '>Please attempt to notify someone from my religion at the following phone number: If I have included one: Catholic</span></li><li><a href='Goal-Example-Smith-Johnson-CareExperiencePreference5.html'><span title='Codes: {http://loinc.org 81364-2}'>Religious or cultural beliefs [Reported]</span></a>; <span title='Codes: '>If I appear to be approaching the end of my life, here are some things that I would like for my caregivers to know about my faith and my religion. Please call Father Mark if my condition warrants the services of a priest.</span></li><li><a href='Goal-Example-Smith-Johnson-CareExperiencePreference1.html'><span title='Codes: {http://loinc.org 75775-7}'>Decision to inform doctors and nurses about the role religion, faith, culture, or spirituality play in my life [Reported]</span></a>; <span title='Codes: '>Here are some thoughts that I would like for my medical care team and my healthcare agent(s) to know about the role that religion, faith or spirituality play in my life: I am Catholic, please call Father Mark at Saint Catherine's on Main Street.</span></li></ul></div>
"

* extension[padi-goal-order-by-descending-priority-extension].valueCodeableConcept = $HL7YesNoCS#Y

* status = #active
* intent = #proposal

* category[advance_care_planning] = $SNOMEDCT#736366004 "Advance care plan"

* subject = Reference(Example-Smith-Johnson-Patient1) "Smith-Johnson, Betsy"

* addresses[+].display = "Unconscious, in a coma, or in a persistent vegetative state with little or no chance of recovery"
* addresses[+].display = "Persistent vegetative state (SNOMED CT 24473007)"
* addresses[+].display = "Irreversible coma (SNOMED CT 73453007)"
* goal[+] = Reference(Example-Smith-Johnson-PersonalGoal1)
* goal[+] = Reference(Example-Smith-Johnson-PersonalInterventionPreference3)
* goal[+] = Reference(Example-Smith-Johnson-CareExperiencePreference6)
* goal[+] = Reference(Example-Smith-Johnson-CareExperiencePreference5)
* goal[+] = Reference(Example-Smith-Johnson-CareExperiencePreference1)



Instance: Example-Smith-Johnson-PreferenceCarePlan2
InstanceOf: PADIPreferenceCarePlan
Description: "Example Patient Smith-Johnson Preference Care Plan 2"
Usage: #example

// TODO update text
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p><b>status</b>: active</p><p><b>intent</b>: proposal</p><p><b>category</b>: <span title='Codes: {http://snomed.info/sct 736366004}'>Advance care plan</span></p><p><b>subject</b>: <a href='Patient-Example-Smith-Johnson-Patient1.html'>Betsy Smith-Johnson</a> ; BetsySJ@example.com; gender: female; birthDate: 1950-11-15</p><p><b>addresses</b>: <span>Permanent, sever brain damage and I am unable to recognize my family and friends</span></p><p><b>goal</b>: </p><ul><li><a href='Goal-Example-Smith-Johnson-PersonalGoal1.html'><span title='Codes: {http://loinc.org 81378-2}'>Goals, preferences, and priorities under certain health conditions [Reported]</span></a>; <span title='Codes: '>If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me: Avoiding prolonged dependence on machines, Not being a physical burden to my family, Dying at home</span></li><li><a href='Goal-Example-Smith-Johnson-PersonalInterventionPreference3.html'><span title='Codes: {http://loinc.org 75778-1}'>Information to tell doctors if I have a severe, irreversible brain injury or illness and can't dress, feed, or bathe myself, or communicate my medical wishes, but can be kept alive [Reported]</span></a>; <span title='Codes: '>If my health ever deteriorates due to a terminal illness, and my doctors believe I will not be able to interact meaningfully with my family, friends, or surroundings, I would like for them to keep trying life-sustaining treatments until my healthcare agent decides it is time to stop and such treatments and let me die gently.</span></li><li><a href='Goal-Example-Smith-Johnson-CareExperiencePreference5.html'><span title='Codes: {http://loinc.org 81364-2}'>Religious or cultural beliefs [Reported]</span></a>; <span title='Codes: '>If I appear to be approaching the end of my life, here are some things that I would like for my caregivers to know about my faith and my religion. Please call Father Mark if my condition warrants the services of a priest.</span></li></ul></div>"

* status = #active
* intent = #proposal

* category[advance_care_planning] = $SNOMEDCT#736366004 "Advance care plan"

* subject = Reference(Example-Smith-Johnson-Patient1) "Smith-Johnson, Betsy"

* addresses[+].display = "Permanent, sever brain damage and I am unable to recognize my family and friends"

* goal[+] = Reference(Example-Smith-Johnson-PersonalGoal1)
* goal[+] = Reference(Example-Smith-Johnson-PersonalInterventionPreference3)
* goal[+] = Reference(Example-Smith-Johnson-CareExperiencePreference5)


Instance: Example-Smith-Johnson-PreferenceCarePlan3
InstanceOf: PADIPreferenceCarePlan
Description: "Example Patient Smith-Johnson Preference Care Plan 3"
Usage: #example

// TODO update text

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p><b>status</b>: active</p><p><b>intent</b>: proposal</p><p><b>category</b>: <span title='Codes: {http://snomed.info/sct 736366004}'>Advance care plan</span></p><p><b>subject</b>: <a href='Patient-Example-Smith-Johnson-Patient1.html'>Betsy Smith-Johnson</a> ; BetsySJ@example.com; gender: female; birthDate: 1950-11-15</p><p><b>addresses</b>: <span>Terminal illness, lack of meaningful interaction</span></p><p><b>goal</b>: </p><ul><li><a href='Goal-Example-Smith-Johnson-PersonalGoal1.html'><span title='Codes: {http://loinc.org 81378-2}'>Goals, preferences, and priorities under certain health conditions [Reported]</span></a>; <span title='Codes: '>If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me: Avoiding prolonged dependence on machines, Not being a physical burden to my family, Dying at home</span></li><li><a href='Goal-Example-Smith-Johnson-CareExperiencePreference1.html'><span title='Codes: {http://loinc.org 75775-7}'>Decision to inform doctors and nurses about the role religion, faith, culture, or spirituality play in my life [Reported]</span></a>; <span title='Codes: '>Here are some thoughts that I would like for my medical care team and my healthcare agent(s) to know about the role that religion, faith or spirituality play in my life: I am Catholic, please call Father Mark at Saint Catherine's on Main Street.</span></li><li><a href='Goal-Example-Smith-Johnson-CareExperiencePreference2.html'><span title='Codes: {http://loinc.org 81360-0}'>My likes and joys [Reported]</span></a>; <span title='Codes: '>Here are some examples of the things that I would like to have near me, music that I’d like to hear, and other details of my care that would help to keep me happy and relaxed: I love the smell of lavender and the feeling of sunshine on my face.</span></li><li><a href='Goal-Example-Smith-Johnson-CareExperiencePreference3.html'><span title='Codes: {http://loinc.org 81362-6}'>My dislikes and fears [Reported]</span></a>; <span title='Codes: '>Here is a list of things that I would like to avoid if at all possible, people that I don’t wish to see, and concerns I have about particular family members, pets, and so on: I do not like my feet to be cold.</span></li><li><a href='Goal-Example-Smith-Johnson-CareExperiencePreference4.html'><span title='Codes: {http://loinc.org 81380-8}'>Goals, preferences, and priorities for care experience [Reported]</span></a>; <span title='Codes: '>How to care for me: If I become incapacitated and cannot express myself, here is what I would like to tell my healthcare agent, family and friends about how I would like for them to care for me: I want photos of my family where I can see them.</span></li><li><a href='Goal-Example-Smith-Johnson-CareExperiencePreference5.html'><span title='Codes: {http://loinc.org 81364-2}'>Religious or cultural beliefs [Reported]</span></a>; <span title='Codes: '>If I appear to be approaching the end of my life, here are some things that I would like for my caregivers to know about my faith and my religion. Please call Father Mark if my condition warrants the services of a priest.</span></li><li><a href='Goal-Example-Smith-Johnson-CareExperiencePreference7.html'><span title='Codes: {http://loinc.org 81366-7}'>Unfinished business [Reported]</span></a>; <span title='Codes: '>If it appears that I am approaching the end of my life, and I cannot communicate with persons around me, I would want my doctors and nurses, my family, and my friends to know about some unfinished business that I need to address: I want my sister and I to talk again, and miss her.  I wish we hadn't disagreed all those years ago and regret the time it has cost us.  I'd like to see her face if I were very ill and needed the comfort of family at my side.</span></li><li><a href='Goal-Example-Smith-Johnson-PersonalInterventionPreference1.html'><span title='Codes: {http://loinc.org 75776-5}'>Preference on consulting a supportive and palliative care team to help treat physical, emotional, and spiritual discomfort and support family [Reported]</span></a>; <span title='Codes: '>If I am having significant pain or suffering, I would like my doctors to consult a Supportive and Palliative Care Team to help treat my physical, emotional and spiritual discomfort, and to support my family.</span></li><li><a href='Goal-Example-Smith-Johnson-PersonalInterventionPreference3.html'><span title='Codes: {http://loinc.org 75778-1}'>Information to tell doctors if I have a severe, irreversible brain injury or illness and can't dress, feed, or bathe myself, or communicate my medical wishes, but can be kept alive [Reported]</span></a>; <span title='Codes: '>If my health ever deteriorates due to a terminal illness, and my doctors believe I will not be able to interact meaningfully with my family, friends, or surroundings, I would like for them to keep trying life-sustaining treatments until my healthcare agent decides it is time to stop and such treatments and let me die gently.</span></li><li><a href='Goal-Example-Smith-Johnson-PersonalInterventionPreference5.html'><span title='Codes: {http://loinc.org 75780-7}'>Preferred location to spend final days if possible to choose [Reported]</span></a>; <span title='Codes: '>If it were possible to choose, here is where I would like to spend my final days: At home.I would like to receive hospice care at home if possible.</span></li></ul></div>"

* status = #active
* intent = #proposal

* category[advance_care_planning] = $SNOMEDCT#736366004 "Advance care plan"

* subject = Reference(Example-Smith-Johnson-Patient1) "Smith-Johnson, Betsy"

* addresses[+].display = "Terminal illness, lack of meaningful interaction"

* goal[+] = Reference(Example-Smith-Johnson-PersonalGoal1)
* goal[+] = Reference(Example-Smith-Johnson-CareExperiencePreference1)
* goal[+] = Reference(Example-Smith-Johnson-CareExperiencePreference2)
* goal[+] = Reference(Example-Smith-Johnson-CareExperiencePreference3)
* goal[+] = Reference(Example-Smith-Johnson-CareExperiencePreference4)
* goal[+] = Reference(Example-Smith-Johnson-CareExperiencePreference5)
* goal[+] = Reference(Example-Smith-Johnson-CareExperiencePreference7)
* goal[+] = Reference(Example-Smith-Johnson-PersonalInterventionPreference1)
* goal[+] = Reference(Example-Smith-Johnson-PersonalInterventionPreference3)
* goal[+] = Reference(Example-Smith-Johnson-PersonalInterventionPreference5)


*/

