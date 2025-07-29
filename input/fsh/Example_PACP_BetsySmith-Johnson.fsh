// Bundle Examples
Instance: Example-Smith-Johnson-PACP-Bundle1
InstanceOf: ADIBundle
Description: "Example Patient Smith-Johnson ADI Document Bundle Smith-Johnson 1"
Usage: #example

* identifier.system = "http://example.org/GoodHealthClinic/id"
* identifier.value = "20130607100315-CCDA-CCD"
* type = #document
* timestamp = "2021-03-29T14:25:34.001-05:00"

* entry[+].fullUrl = "http://www.example.org/fhir/Composition/Example-Smith-Johnson-PACPComposition1"
* entry[=].resource = Example-Smith-Johnson-PACPComposition1
* entry[+].fullUrl = "http://www.example.org/fhir/Patient/Example-Smith-Johnson-Patient1"
* entry[=].resource = Example-Smith-Johnson-Patient1
* entry[+].fullUrl = "http://www.example.org/fhir/RelatedPerson/Example-Smith-Johnson-Notary1"
* entry[=].resource = Example-Smith-Johnson-Notary1
* entry[+].fullUrl = "http://www.example.org/fhir/RelatedPerson/Example-Smith-Johnson-HealthcareAgent1"
* entry[=].resource = Example-Smith-Johnson-HealthcareAgent1
* entry[+].fullUrl = "http://www.example.org/fhir/RelatedPerson/Example-Smith-Johnson-HealthcareAgent2"
* entry[=].resource = Example-Smith-Johnson-HealthcareAgent2
* entry[+].fullUrl = "http://www.example.org/fhir/RelatedPerson/Example-Smith-Johnson-HealthcareAgent3"
* entry[=].resource = Example-Smith-Johnson-HealthcareAgent3
* entry[+].fullUrl = "http://www.example.org/fhir/Consent/Example-Smith-Johnson-HealthcareAgentConsent"
* entry[=].resource = Example-Smith-Johnson-HealthcareAgentConsent
* entry[+].fullUrl = "http://www.example.org/fhir/CarePlan/Example-Smith-Johnson-PreferenceCarePlan1"
* entry[=].resource = Example-Smith-Johnson-PreferenceCarePlan1
* entry[+].fullUrl = "http://www.example.org/fhir/CarePlan/Example-Smith-Johnson-PreferenceCarePlan2"
* entry[=].resource = Example-Smith-Johnson-PreferenceCarePlan2
* entry[+].fullUrl = "http://www.example.org/fhir/CarePlan/Example-Smith-Johnson-PreferenceCarePlan3"
* entry[=].resource = Example-Smith-Johnson-PreferenceCarePlan3
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-Smith-Johnson-CareExperiencePreference1"
* entry[=].resource = Example-Smith-Johnson-CareExperiencePreference1
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-Smith-Johnson-CareExperiencePreference2"
* entry[=].resource = Example-Smith-Johnson-CareExperiencePreference2
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-Smith-Johnson-CareExperiencePreference3"
* entry[=].resource = Example-Smith-Johnson-CareExperiencePreference3
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-Smith-Johnson-CareExperiencePreference4"
* entry[=].resource = Example-Smith-Johnson-CareExperiencePreference4
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-Smith-Johnson-CareExperiencePreference5"
* entry[=].resource = Example-Smith-Johnson-CareExperiencePreference5
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-Smith-Johnson-CareExperiencePreference6"
* entry[=].resource = Example-Smith-Johnson-CareExperiencePreference6
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-Smith-Johnson-CareExperiencePreference7"
* entry[=].resource = Example-Smith-Johnson-CareExperiencePreference7
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-Smith-Johnson-CareExperiencePreference8"
* entry[=].resource = Example-Smith-Johnson-CareExperiencePreference8
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-Smith-Johnson-PersonalInterventionPreference1"
* entry[=].resource = Example-Smith-Johnson-PersonalInterventionPreference1
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-Smith-Johnson-PersonalInterventionPreference3"
* entry[=].resource = Example-Smith-Johnson-PersonalInterventionPreference3
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-Smith-Johnson-PersonalInterventionPreference5"
* entry[=].resource = Example-Smith-Johnson-PersonalInterventionPreference5
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-Smith-Johnson-PersonalInterventionPreference6"
* entry[=].resource = Example-Smith-Johnson-PersonalInterventionPreference6
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-Smith-Johnson-OrganDonationObservation1"
* entry[=].resource = Example-Smith-Johnson-OrganDonationObservation1
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-Smith-Johnson-AutopsyObservation1"
* entry[=].resource = Example-Smith-Johnson-AutopsyObservation1
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-Smith-Johnson-UponDeathPreference1"
* entry[=].resource = Example-Smith-Johnson-UponDeathPreference1
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-Smith-Johnson-DocumentationObservation1"
* entry[=].resource = Example-Smith-Johnson-DocumentationObservation1
* entry[+].fullUrl = "http://www.example.org/fhir/Organization/Example-Smith-Johnson-OrganizationCustodian1"
* entry[=].resource = Example-Smith-Johnson-OrganizationCustodian1
* entry[+].fullUrl = "http://www.example.org/fhir/DocumentReference/Example-Smith-Johnson-DocRef-DocumentReference"
* entry[=].resource = Example-Smith-Johnson-DocRef-DocumentReference
* entry[+].fullUrl = "http://www.example.org/fhir/Organization/Example-Smith-Johnson-OrganizationAssembler1"
* entry[=].resource = Example-Smith-Johnson-OrganizationAssembler1
// * entry[+].fullUrl = "http://www.example.org/fhir/Binary/Example-Smith-Johnson-DocRef-Binary1"
// * entry[=].resource = Example-Smith-Johnson-DocRef-Binary1

// * entry[+].fullUrl= "http://www.example.org/fhir/Goal/Example-Smith-Johnson-PersonalInterventionPreference4"
// * entry[=].resource = Example-Smith-Johnson-PersonalInterventionPreference4
// * entry[+].fullUrl = "http://www.example.org/fhir/Goal/Example-Smith-Johnson-PersonalGoal1"
// * entry[=].resource = Example-Smith-Johnson-PersonalGoal1
// * entry[+].fullUrl = "http://www.example.org/fhir/Goal/Example-Smith-Johnson-PersonalGoal2"
// * entry[=].resource = Example-Smith-Johnson-PersonalGoal2
// * entry[+].fullUrl = "http://www.example.org/fhir/Goal/Example-Smith-Johnson-PersonalGoal3"
// * entry[=].resource = Example-Smith-Johnson-PersonalGoal3



// Patient Examples

Instance: Example-Smith-Johnson-Patient1
InstanceOf: $USCorePatient
Description: "Example Patient Smith-Johnson Patient Example 1"
Usage: #example

* meta.lastUpdated = "2021-03-29T14:25:34.001-05:00"
* language = #en-US
* identifier[0].use = #usual
* identifier[=].type = $HL7IdentifierType#MR "Medical Record Number"
* identifier[=].type.text = "Medical Record Number"
* identifier[=].system = "http://example.org/GoodHealthHospital"
* identifier[=].value = "1032702"
* identifier[+].system = "http://hl7.org/fhir/sid/us-medicare"
* identifier[=].value = "1PA3D58WH16"

* active = true
* name[0].use = #usual
* name[0].family = "Smith-Johnson"
* name[0].given[0] = "Betsy"
* name[0].text = "Smith-Johnson, Betsy"

* gender = #female
* birthDate = "1950-11-15"

* extension[race].extension[ombCategory].valueCoding = $OmbRaceCat#2106-3 "White"
* extension[race].extension[text].valueString = "White"

* telecom[0].system = #email
* telecom[0].value = "BetsySJ@example.com"
* telecom[0].use = #home

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

* contact[0].name.text = "Charles Johnson"
* contact[=].relationship = $HL7RoleCode#SONC
* contact[=].address.text = "111 Maple Ct, Grand Rapids, MI 49503"
* contact[=].telecom.system = #phone
* contact[=].telecom.value = "(210) 222-3333"
* contact[+].name.text = "Debra Johnson"
* contact[=].relationship = $HL7RoleCode#DAUC
* contact[=].address.text = "333 W. Camden St., Baltimore, MD 21201"
* contact[=].telecom.system = #phone
* contact[=].telecom.value = "(410) 444-5555"

//Composition Examples

Instance: Example-Smith-Johnson-PACPComposition1
InstanceOf: ADIPACPComposition
Description: "Example Patient Smith-Johnson Personal Advance Care Plan Composition Example 1"
Usage: #example

* language = #en-US

// Need to add extensions (mostly participants)
* extension[composition-clinicaldocument-versionNumber].valueString = "2022-03-29T14:25:34-05:00"
* extension[adi-dataEnterer-extension].valueReference = Reference(Example-Smith-Johnson-Patient1)
* extension[adi-expiration-date-extension].valueDateTime = "2028-03-29T14:25:34-05:00"

// witness Sally Bobbins

* identifier.system = "http://example.org/GoodHealthClinic/id"
* identifier.value = "0-87f37989294a408897aacd1fc5d8fd16"


* status = #final
* type = $LOINC#81334-5 "Patient Personal advance care plan"
* category = $LOINC#42348-3 "Advance healthcare directives"
* subject = Reference(Example-Smith-Johnson-Patient1)
* date = "2021-03-29T14:25:34-05:00"
* author = Reference(Example-Smith-Johnson-Patient1)
* attester.mode = #personal
* attester.party = Reference(Example-Smith-Johnson-Patient1)
* title = "Personal Advance Care Plan"

* custodian = Reference(Example-Smith-Johnson-OrganizationCustodian1)

// * relatesTo.code = #appends
// * relatesTo.targetIdentifier.assigner = Reference(Organization/Example-Smith-Johnson-OrganizationCustodian1)
// * relatesTo.extension[adi-document-reference-extension].valueReference = Reference(Example-Smith-Johnson-DocRef-DocumentReference)

* section[healthcare_agent].title = "Appointment of a Primary Healthcare Agent and Alternate Healthcare Agents"
* section[healthcare_agent].code = $LOINC#81335-2 "Healthcare Agent"
* section[healthcare_agent].text.status = #additional
* section[healthcare_agent].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">

<p>IF THIS PART OF THE uADD™ IS LEFT BLANK, I DO NOT WANT TO DESIGNATE A HEALTHCARE AGENT AT THIS TIME, AND I DO NOT WANT A DEFAULT HEALTHCARE AGENT DESIGNATED FOR ME UNDER APPLICABLE LAW. I TRUST THE DOCTORS AND NURSES TREATING ME TO MAKE MEDICAL TREATMENT DECISIONS REGARDING MY TREATMENT AND CARE.</p>

<p>I am appointing the person or persons below as my healthcare agent and, if applicable, as my alternate healthcare agent(s), and I am granting to each of them the legal authority to make medical treatment decisions on my behalf and to consult with my physician and others.  The power to make medical treatment decisions that I am granting to my healthcare agent(s) is expressly subject to, and limited by, the choices that I have expressed elsewhere in my uADD.  If my medical treatment choices are not clear, I am authorizing and directing my healthcare agent to make decisions in my best interests and based on what is known of my wishes.</p>

<p><b>Primary Healthcare Agent</b></p>
<p>The person I choose as my Primary Healthcare Agent is:</p>
<p><i>Charles Johnson</i></p>
<p><i>(Son)</i></p>
<p><i>CharlesSJ@example.com</i></p>
<p>[SELECTED to act as a healthcare agent on 3/29/2021, at 2:25 PM CDT]</p>
<p>[ACCEPTED to act as a healthcare agent on 4/1/2021, at 3:39 PM CDT]</p>
<p> </p>
<p><b>First Alternate Healthcare Agent</b></p>
<p>If this healthcare agent is unable or unwilling to make medical treatment decisions for me, or if my spouse is designated as my primary healthcare agent and our marriage is annulled, or we are divorced or legally separated, then my next choice for a healthcare agent is:</p>
<p><i>Debra Johnson</i></p>
<p><i>(Daughter)</i></p>
<p><i>DebraSJ@example.com</i></p>
<p>[SELECTED to act as a healthcare agent on 3/29/2021, at 2:25 PM CDT]</p>
<p>[As of 4/1/2021, at 3:40 PM CDT, a response is still PENDING]</p>
<p> </p>
<p><b>My Healthcare Agent’s General Authority</b></p>
<p>Subject to my medical treatment choices expressed elsewhere in this uADD™ and applicable law that requires otherwise, I grant to my healthcare agent the power to make all choices and medical treatment decisions for me.</p>
<p>If I cannot express my own wishes for medical treatment,</p>
<p>I would like the doctors treating me, as well as my healthcare agent if I have chosen one, to make decisions based as much as possible and appropriate on my instructions below.</p>
<p><i>If at some point in the future I am declared incompetent,</i></p>
<p><i>I DO NOT want to be allowed to override these preferences. I want my doctors to follow the preferences I express in this document.</i></p>
<p>Unless I have stated otherwise somewhere else in this uADD™, I understand that my healthcare agent may reconsider my medical treatment choices expressed above in light of my other instructions contained elsewhere in this uADD™ or new medical information.</p>

<p><b>Primary Healthcare Agent Consent</b></p>

<p><b>status</b>: active</p><p><b>scope</b>: <span title='Codes: {http://loinc.org 75786-4}'>Powers granted to healthcare agent - Reported</span></p><p><b>category</b>: <span title='Codes: {http://terminology.hl7.org/CodeSystem/consentcategorycodes acd}'>Advance Directive</span></p><p><b>patient</b>: <a href='Patient-Example-Smith-Johnson-Patient1.html'>Betsy Smith-Johnson</a> ; BetsySJ@example.com; gender: female; birthDate: 1950-11-15</p><p><b>dateTime</b>: 2020-08-03</p><h3>Policies</h3><table class='grid'><tr><td>-</td><td><b>Authority</b></td><td><b>Uri</b></td></tr><tr><td>*</td><td><a href='https://www.michigan.gov/'>https://www.michigan.gov/</a></td><td><a href='http://www.legislature.mi.gov/(S(tpnclc1ofteerx2x2dppcmdz))/mileg.aspx?page=GetObject&amp;objectname=mcl-386-1998-V-5'>http://www.legislature.mi.gov/(S(tpnclc1ofteerx2x2dppcmdz))/mileg.aspx?page=GetObject&amp;objectname=mcl-386-1998-V-5</a></td></tr></table><blockquote><p><b>provision</b></p><p><b>type</b>: permit</p><blockquote><p><b>actor</b></p><p><b>role</b>: <span title='Codes: {http://loinc.org 75783-1}'>Primary healthcare agent - Reported</span></p><p><b>reference</b>: <a href='RelatedPerson-Example-Smith-Johnson-HealthcareAgent1.html'><span title='Codes: {http://terminology.hl7.org/CodeSystem/v3-RoleCode SON}'>natural son</span>; Charles Johnson ; CharlesSJ@example.com</a></p></blockquote><blockquote><p><b>actor</b></p><p><b>role</b>: <span title='Codes: {http://loinc.org 75784-9}'>First alternate healthcare agent - Reported</span></p><p><b>reference</b>: <a href='RelatedPerson-Example-Smith-Johnson-HealthcareAgent2.html'><span title='Codes: {http://loinc.org 75784-9}'>First alternate healthcare agent - Reported</span>, <span title='Codes: {http://terminology.hl7.org/CodeSystem/v3-RoleCode DAU}'>natural daughter</span>; Debra Johnson ; DebraSJ@example.com</a></p></blockquote><p><b>action</b>: <span title='Codes: {http://loinc.org 75787-2}'>Advance directive - request for intubation</span>, <span title='Codes: {http://loinc.org 75788-0}'>Advance directive - request for tube feeding</span>, <span title='Codes: {http://loinc.org 75789-8}'>Advance directive - request for life support</span>, <span title='Codes: {http://loinc.org 75790-6}'>Advance directive - request for IV fluid and support</span>, <span title='Codes: {http://loinc.org 75791-4}'>Advance directive - request for antibiotics</span>, <span title='Codes: {http://loinc.org 75792-2}'>Advance directive - request for resuscitation that differs from cardiopulmonary resuscitation</span></p><p><b>purpose</b>: <span title='{http://terminology.hl7.org/CodeSystem/v3-ActReason PWATRNY}'>power of attorney</span></p></blockquote>

</div>"

* section[healthcare_agent].entry[+] = Reference(Example-Smith-Johnson-Notary1)
* section[healthcare_agent].entry[+] = Reference(Example-Smith-Johnson-HealthcareAgent1)
* section[healthcare_agent].entry[+] = Reference(Example-Smith-Johnson-HealthcareAgent2)
* section[healthcare_agent].entry[+] = Reference(Example-Smith-Johnson-HealthcareAgentConsent)
// will need to add HCA authority when the profile is created


* section[gpp_personal_care_experience].title = "Patient Goals, Preferences, and Priorities for Care Experience"
* section[gpp_personal_care_experience].code = $LOINC#81338-6 "Patient Goals, Preferences, and Priorities for Care Experience"
* section[gpp_personal_care_experience].text.status = #additional
* section[gpp_personal_care_experience].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><i>MyDirectives® offers people a list of optional questions that can be answered by typing text in a text box or by uploading a video or audio file for each question. Only those questions answered by Betsy Smith-Johnson appear here. For a complete list of questions in My Thoughts, please visit www.example.org.</i></p>
<p> </p>
<p><b>In case I’m being cared for by a person(s) who doesn't know me very well, I’d like my following thoughts to be known.</b></p>
<p> </p>
<p> </p>
<p><b>My likes / joys:</b></p>
<p>Here are some examples of the things that I would like to have near me, music that I’d like to hear, and other details of my care that would help to keep me happy and relaxed:</p>
<p><i>I love the smell of lavender and the feeling of sunshine on my face.</i></p>
<p> </p>
<p> </p>
<p><b>My dislikes / fears:</b></p>
<p>Here is a list of things that I would like to avoid if at all possible, people that I don’t wish to see, and concerns I have about particular family members, pets, and so on:</p>
<p><i>I do not like my feet to be cold.</i></p>
<p> </p>
<p> </p>
<p><b>How to care for me:</b></p>
<p>If I become incapacitated and cannot express myself, here is what I would like to tell my healthcare agent, family and friends about how I would like for them to care for me:</p>
<p><i>I want photos of my family where I can see them.</i></p>
<p> </p>
<p> </p>
<p><b>My religion:</b></p>
<p>If I appear to be approaching the end of my life, here are some things that I would like for my caregivers to know about my faith and my religion.</p>
<p><i>Please call Father Mark if my condition warrants the services of a priest.</i></p>
<p> </p>
<p> </p>
<p><b>Please attempt to notify someone from my religion at the following phone number:</b></p>
<p>If I have included one</p>
<p><i>Catholic</i></p>
<p> </p>
<p> </p>
<p><b>My unfinished business:</b></p>
<p>If it appears that I am approaching the end of my life, and I cannot communicate with persons around me, I would want my doctors and nurses, my family, and my friends to know about some unfinished business that I need to address:</p>
<p><i>I want my sister and I to talk again, and miss her.  I wish we hadn't disagreed all those years ago and regret the time it has cost us.  I'd like to see her face if I were very ill and needed the comfort of family at my side.</i></p>
<p> </p>
<p> </p>
<p><b>Laughter:</b></p>
<p>These are some of my fondest memories from life that have always brought a smile to my face or made me laugh:</p>
<p><i>My dogs make me laugh when they play together, and my grandchildren make me laugh when they put on plays for me.  They bring me great joy.</i></p>
</div>"
* section[gpp_personal_care_experience].entry[+] = Reference(Example-Smith-Johnson-CareExperiencePreference1)
* section[gpp_personal_care_experience].entry[+] = Reference(Example-Smith-Johnson-CareExperiencePreference2)
* section[gpp_personal_care_experience].entry[+] = Reference(Example-Smith-Johnson-CareExperiencePreference3)
* section[gpp_personal_care_experience].entry[+] = Reference(Example-Smith-Johnson-CareExperiencePreference4)
* section[gpp_personal_care_experience].entry[+] = Reference(Example-Smith-Johnson-CareExperiencePreference5)
* section[gpp_personal_care_experience].entry[+] = Reference(Example-Smith-Johnson-CareExperiencePreference6)
* section[gpp_personal_care_experience].entry[+] = Reference(Example-Smith-Johnson-CareExperiencePreference7)
* section[gpp_personal_care_experience].entry[+] = Reference(Example-Smith-Johnson-CareExperiencePreference8)


* section[gpp_for_certain_health_condition].title = "Patient Goals, preferences, and priorities under certain conditions"
* section[gpp_for_certain_health_condition].code = $LOINC#81336-0 "Patient Goals, preferences, and priorities under certain health conditions" 
* section[gpp_for_certain_health_condition].text.status = #additional
* section[gpp_for_certain_health_condition].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>Care Plan 1</b></p>
<p><b>status</b>: active</p><p><b>intent</b>: proposal</p><p><b>category</b>: <span title='Codes: {http://snomed.info/sct 736366004}'>Advance care plan</span></p><p><b>subject</b>: <a href='Patient-Example-Smith-Johnson-Patient1.html'>Betsy Smith-Johnson</a> ; BetsySJ@example.com; gender: female; birthDate: 1950-11-15</p><p><b>addresses</b>: </p><ul><li><span>Unconscious, in a coma, or in a persistent vegetative state with little or no chance of recovery</span></li><li><span>Persistent vegetative state (SNOMED CT 24473007)</span></li><li><span>Irreversible coma (SNOMED CT 73453007)</span></li></ul><p><b>goal</b>: </p><ul><li><a href='Goal-Example-Smith-Johnson-PersonalGoal1.html'><span title='Codes: {http://loinc.org 81378-2}'>Goals, preferences, and priorities under certain health conditions - Reported</span></a>; <span title='Codes: '>If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me: Avoiding prolonged dependence on machines, Not being a physical burden to my family, Dying at home</span></li><li><a href='Observation-Example-Smith-Johnson-PersonalInterventionPreference3.html'><span title='Codes: {http://loinc.org 75778-1}'>Information to tell doctors if I have a severe, irreversible brain injury or illness and can't dress, feed, or bathe myself, or communicate my medical wishes, but can be kept alive - Reported</span></a>; <span title='Codes: '>If my health ever deteriorates due to a terminal illness, and my doctors believe I will not be able to interact meaningfully with my family, friends, or surroundings, I would like for them to keep trying life-sustaining treatments until my healthcare agent decides it is time to stop and such treatments and let me die gently.</span></li><li><a href='Observation-Example-Smith-Johnson-CareExperiencePreference6.html'><span title='Codes: {http://loinc.org 81365-9}'>Religious or cultural affiliation contact to notify - Reported</span></a>; <span title='Codes: '>Please attempt to notify someone from my religion at the following phone number: If I have included one: Catholic</span></li><li><a href='Observation-Example-Smith-Johnson-CareExperiencePreference5.html'><span title='Codes: {http://loinc.org 81364-2}'>Religious or cultural beliefs - Reported</span></a>; <span title='Codes: '>If I appear to be approaching the end of my life, here are some things that I would like for my caregivers to know about my faith and my religion. Please call Father Mark if my condition warrants the services of a priest.</span></li><li><a href='Observation-Example-Smith-Johnson-CareExperiencePreference1.html'><span title='Codes: {http://loinc.org 75775-7}'>Decision to inform doctors and nurses about the role religion, faith, culture, or spirituality play in my life - Reported</span></a>; <span title='Codes: '>Here are some thoughts that I would like for my medical care team and my healthcare agent(s) to know about the role that religion, faith or spirituality play in my life: I am Catholic, please call Father Mark at Saint Catherine's on Main Street.</span></li></ul>

<p><b>Care Plan 2</b></p>

<p><b>status</b>: active</p><p><b>intent</b>: proposal</p><p><b>category</b>: <span title='Codes: {http://snomed.info/sct 736366004}'>Advance care plan</span></p><p><b>subject</b>: <a href='Patient-Example-Smith-Johnson-Patient1.html'>Betsy Smith-Johnson</a> ; BetsySJ@example.com; gender: female; birthDate: 1950-11-15</p><p><b>addresses</b>: <span>Permanent, severe brain damage and I am unable to recognize my family and friends</span></p><p><b>goal</b>: </p><ul><li><a href='Goal-Example-Smith-Johnson-PersonalGoal1.html'><span title='Codes: {http://loinc.org 81378-2}'>Goals, preferences, and priorities under certain health conditions - Reported</span></a>; <span title='Codes: '>If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me: Avoiding prolonged dependence on machines, Not being a physical burden to my family, Dying at home</span></li><li><a href='Observation-Example-Smith-Johnson-PersonalInterventionPreference3.html'><span title='Codes: {http://loinc.org 75778-1}'>Information to tell doctors if I have a severe, irreversible brain injury or illness and can't dress, feed, or bathe myself, or communicate my medical wishes, but can be kept alive - Reported</span></a>; <span title='Codes: '>If my health ever deteriorates due to a terminal illness, and my doctors believe I will not be able to interact meaningfully with my family, friends, or surroundings, I would like for them to keep trying life-sustaining treatments until my healthcare agent decides it is time to stop and such treatments and let me die gently.</span></li><li><a href='Observation-Example-Smith-Johnson-CareExperiencePreference5.html'><span title='Codes: {http://loinc.org 81364-2}'>Religious or cultural beliefs - Reported</span></a>; <span title='Codes: '>If I appear to be approaching the end of my life, here are some things that I would like for my caregivers to know about my faith and my religion. Please call Father Mark if my condition warrants the services of a priest.</span></li></ul>

<p><b>Care Plan 3</b></p>

<p><b>status</b>: active</p><p><b>intent</b>: proposal</p><p><b>category</b>: <span title='Codes: {http://snomed.info/sct 736366004}'>Advance care plan</span></p><p><b>subject</b>: <a href='Patient-Example-Smith-Johnson-Patient1.html'>Betsy Smith-Johnson</a> ; BetsySJ@example.com; gender: female; birthDate: 1950-11-15</p><p><b>addresses</b>: <span>Terminal illness, lack of meaningful interaction</span></p><p><b>goal</b>: </p><ul><li><a href='Goal-Example-Smith-Johnson-PersonalGoal1.html'><span title='Codes: {http://loinc.org 81378-2}'>Goals, preferences, and priorities under certain health conditions - Reported</span></a>; <span title='Codes: '>If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me: Avoiding prolonged dependence on machines, Not being a physical burden to my family, Dying at home</span></li><li><a href='Observation-Example-Smith-Johnson-CareExperiencePreference1.html'><span title='Codes: {http://loinc.org 75775-7}'>Decision to inform doctors and nurses about the role religion, faith, culture, or spirituality play in my life - Reported</span></a>; <span title='Codes: '>Here are some thoughts that I would like for my medical care team and my healthcare agent(s) to know about the role that religion, faith or spirituality play in my life: I am Catholic, please call Father Mark at Saint Catherine's on Main Street.</span></li><li><a href='Observation-Example-Smith-Johnson-CareExperiencePreference2.html'><span title='Codes: {http://loinc.org 81360-0}'>My likes and joys - Reported</span></a>; <span title='Codes: '>Here are some examples of the things that I would like to have near me, music that I’d like to hear, and other details of my care that would help to keep me happy and relaxed: I love the smell of lavender and the feeling of sunshine on my face.</span></li><li><a href='Observation-Example-Smith-Johnson-CareExperiencePreference3.html'><span title='Codes: {http://loinc.org 81362-6}'>My dislikes and fears - Reported</span></a>; <span title='Codes: '>Here is a list of things that I would like to avoid if at all possible, people that I don’t wish to see, and concerns I have about particular family members, pets, and so on: I do not like my feet to be cold.</span></li><li><a href='Observation-Example-Smith-Johnson-CareExperiencePreference4.html'><span title='Codes: {http://loinc.org 81380-8}'>Goals, preferences, and priorities for care experience - Reported</span></a>; <span title='Codes: '>How to care for me: If I become incapacitated and cannot express myself, here is what I would like to tell my healthcare agent, family and friends about how I would like for them to care for me: I want photos of my family where I can see them.</span></li><li><a href='Observation-Example-Smith-Johnson-CareExperiencePreference5.html'><span title='Codes: {http://loinc.org 81364-2}'>Religious or cultural beliefs - Reported</span></a>; <span title='Codes: '>If I appear to be approaching the end of my life, here are some things that I would like for my caregivers to know about my faith and my religion. Please call Father Mark if my condition warrants the services of a priest.</span></li><li><a href='Observation-Example-Smith-Johnson-CareExperiencePreference7.html'><span title='Codes: {http://loinc.org 81366-7}'>Unfinished business - Reported</span></a>; <span title='Codes: '>If it appears that I am approaching the end of my life, and I cannot communicate with persons around me, I would want my doctors and nurses, my family, and my friends to know about some unfinished business that I need to address: I want my sister and I to talk again, and miss her.  I wish we hadn't disagreed all those years ago and regret the time it has cost us.  I'd like to see her face if I were very ill and needed the comfort of family at my side.</span></li><li><a href='Observation-Example-Smith-Johnson-PersonalInterventionPreference1.html'><span title='Codes: {http://loinc.org 75776-5}'>Preference on consulting a supportive and palliative care team to help treat physical, emotional, and spiritual discomfort and support family - Reported</span></a>; <span title='Codes: '>If I am having significant pain or suffering, I would like my doctors to consult a Supportive and Palliative Care Team to help treat my physical, emotional and spiritual discomfort, and to support my family.</span></li><li><a href='Observation-Example-Smith-Johnson-PersonalInterventionPreference3.html'><span title='Codes: {http://loinc.org 75778-1}'>Information to tell doctors if I have a severe, irreversible brain injury or illness and can't dress, feed, or bathe myself, or communicate my medical wishes, but can be kept alive - Reported</span></a>; <span title='Codes: '>If my health ever deteriorates due to a terminal illness, and my doctors believe I will not be able to interact meaningfully with my family, friends, or surroundings, I would like for them to keep trying life-sustaining treatments until my healthcare agent decides it is time to stop and such treatments and let me die gently.</span></li><li><a href='Observation-Example-Smith-Johnson-PersonalInterventionPreference5.html'><span title='Codes: {http://loinc.org 75780-7}'>Preferred location to spend final days if possible to choose - Reported</span></a>; <span title='Codes: '>If it were possible to choose, here is where I would like to spend my final days: At home.I would like to receive hospice care at home if possible.</span></li></ul>
</div>"

* section[gpp_for_certain_health_condition].entry[0] = Reference(Example-Smith-Johnson-PreferenceCarePlan1)
* section[gpp_for_certain_health_condition].entry[+] = Reference(Example-Smith-Johnson-PreferenceCarePlan2)
* section[gpp_for_certain_health_condition].entry[+] = Reference(Example-Smith-Johnson-PreferenceCarePlan3)

* section[gpp_upon_death].title = "Goals, Preferences and Priorities Upon Death"
* section[gpp_upon_death].code = $LOINC#81337-8 "Patient Goals, Preferences, and Priorities Upon Death"
* section[gpp_upon_death].text.status = #additional
* section[gpp_upon_death].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>Consent to Donate</b></p>
<p><i>I consent to donate all organs and tissues.</i></p>
<p> </p>
<p><b>Autopsy</b></p>
<p><i>I want an autopsy</i></p>
<p><i>only if there are questions about my death.</i></p>
<p> </p>
<p><b>Here are my thoughts on funeral or burial plans:</b></p>
<p><i>If I were to pass away:</i></p>
<p><i>Please call Jim Houston, my lawyer, for arrangements I have already made.</i></p>
</div>"

* section[gpp_upon_death].entry[+] = Reference(Example-Smith-Johnson-OrganDonationObservation1)
* section[gpp_upon_death].entry[+] = Reference(Example-Smith-Johnson-AutopsyObservation1)
* section[gpp_upon_death].entry[+] = Reference(Example-Smith-Johnson-PersonalInterventionPreference1)
* section[gpp_upon_death].entry[+] = Reference(Example-Smith-Johnson-PersonalInterventionPreference3)
* section[gpp_upon_death].entry[+] = Reference(Example-Smith-Johnson-PersonalInterventionPreference5)
* section[gpp_upon_death].entry[+] = Reference(Example-Smith-Johnson-PersonalInterventionPreference6)
* section[gpp_upon_death].entry[+] = Reference(Example-Smith-Johnson-UponDeathPreference1)

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
            <td>3/29/2021</td>
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


// Participant examples
// Healthcare Agent examples

Instance: Example-Smith-Johnson-HealthcareAgent1
InstanceOf: ADIHealthcareAgentParticipant
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

* patient = Reference(Example-Smith-Johnson-Patient1)
* relationship = $HL7RoleCode#SON "natural son"

* name[0].family = "Johnson"
* name[0].given[0] = "Charles"
* name[0].text = "Johnson, Charles"
* telecom[0].system = #email
* telecom[0].value = "CharlesSJ@example.com"
* telecom[0].use = #home



Instance: Example-Smith-Johnson-HealthcareAgent2
InstanceOf: ADIHealthcareAgentParticipant
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

* patient = Reference(Example-Smith-Johnson-Patient1)
//* relationship[0] = $LOINC#75784-9 "First alternate healthcare agent - Reported"
* relationship[0] = $HL7RoleCode#DAU "natural daughter"

* name[0].family = "Johnson"
* name[0].given[0] = "Debra"
* name[0].text = "Johnson, Debra"
* telecom[0].system = #email
* telecom[0].value = "DebraSJ@example.com"
* telecom[0].use = #home



Instance: Example-Smith-Johnson-Notary1
InstanceOf: ADIHealthcareAgentParticipant
Description: "Example Patient Smith-Johnson Notary"
Usage: #example
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>Notary</b></p>
<p>Charles Xavier</p>
</div>"

* patient = Reference(Example-Smith-Johnson-Patient1)

* name[0].family = "Xavier"
* name[0].given[0] = "Charles"
* name[0].text = "Xavier, Charles"
* telecom[0].system = #email
* telecom[0].value = "Chales@example.com"
* telecom[0].use = #work



// TODO update text
Instance: Example-Smith-Johnson-HealthcareAgentConsent
InstanceOf: ADIConsentPermit
Description: "Example Patient Smith-Johnson Healthcare Agent Consent"
Usage: #example
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p><b>status</b>: active</p><p><b>scope</b>: <span title='Codes: {http://loinc.org 75786-4}'>Powers granted to healthcare agent - Reported</span></p><p><b>category</b>: <span title='Codes: {http://terminology.hl7.org/CodeSystem/consentcategorycodes acd}'>Advance Directive</span></p><p><b>patient</b>: <a href='Patient-Example-Smith-Johnson-Patient1.html'>Betsy Smith-Johnson</a> ; BetsySJ@example.com; gender: female; birthDate: 1950-11-15</p><p><b>dateTime</b>: 2020-08-03</p><h3>Policies</h3><table class='grid'><tr><td>-</td><td><b>Authority</b></td><td><b>Uri</b></td></tr><tr><td>*</td><td><a href='https://www.michigan.gov/'>https://www.michigan.gov/</a></td><td><a href='http://www.legislature.mi.gov/(S(tpnclc1ofteerx2x2dppcmdz))/mileg.aspx?page=GetObject&amp;objectname=mcl-386-1998-V-5'>http://www.legislature.mi.gov/(S(tpnclc1ofteerx2x2dppcmdz))/mileg.aspx?page=GetObject&amp;objectname=mcl-386-1998-V-5</a></td></tr></table><blockquote><p><b>provision</b></p><p><b>type</b>: permit</p><blockquote><p><b>actor</b></p><p><b>role</b>: <span title='Codes: {http://loinc.org 75783-1}'>Primary healthcare agent - Reported</span></p><p><b>reference</b>: <a href='RelatedPerson-Example-Smith-Johnson-HealthcareAgent1.html'><span title='Codes: {http://terminology.hl7.org/CodeSystem/v3-RoleCode SON}'>natural son</span>; Charles Johnson ; CharlesSJ@example.com</a></p></blockquote><blockquote><p><b>actor</b></p><p><b>role</b>: <span title='Codes: {http://loinc.org 75784-9}'>First alternate healthcare agent - Reported</span></p><p><b>reference</b>: <a href='RelatedPerson-Example-Smith-Johnson-HealthcareAgent2.html'><span title='Codes: {http://loinc.org 75784-9}'>First alternate healthcare agent - Reported</span>, <span title='Codes: {http://terminology.hl7.org/CodeSystem/v3-RoleCode DAU}'>natural daughter</span>; Debra Johnson ; DebraSJ@example.com</a></p></blockquote><p><b>action</b>: <span title='Codes: {http://loinc.org 75787-2}'>Advance directive - request for intubation</span>, <span title='Codes: {http://loinc.org 75788-0}'>Advance directive - request for tube feeding</span>, <span title='Codes: {http://loinc.org 75789-8}'>Advance directive - request for life support</span>, <span title='Codes: {http://loinc.org 75790-6}'>Advance directive - request for IV fluid and support</span>, <span title='Codes: {http://loinc.org 75791-4}'>Advance directive - request for antibiotics</span>, <span title='Codes: {http://loinc.org 75792-2}'>Advance directive - request for resuscitation that differs from cardiopulmonary resuscitation</span></p><p><b>purpose</b>: <span title='{http://terminology.hl7.org/CodeSystem/v3-ActReason PWATRNY}'>power of attorney</span></p></blockquote></div>"

* status = #active
* category = $HL7ConsentCategoryCodes#acd "Advance Directive"
//* category[AdvanceDirective] = $HL7ConsentCategoryCodes#acd "Advance Directive"
* patient = Reference(Example-Smith-Johnson-Patient1)
* dateTime = "2020-08-03"

// * policy.authority = "https://www.michigan.gov"
* policy.uri = "http://example.org/healthcare-agent-policy"  // fictitious policy URL for example

* provision.actor[+].role = $LOINC#75783-1 "Primary healthcare agent [Reported]"
* provision.actor[=].reference = Reference(Example-Smith-Johnson-HealthcareAgent1)
* provision.actor[+].role = $LOINC#75784-9 "First alternate healthcare agent [Reported]"
* provision.actor[=].reference = Reference(Example-Smith-Johnson-HealthcareAgent3)

* provision.action[+] = ADIHCADecisionsCS#intubation "Intubation"
* provision.action[+] = ADIHCADecisionsCS#tube-feeding "Tube feeding"
* provision.action[+] = ADIHCADecisionsCS#life-support "Life support"
* provision.action[+] = ADIHCADecisionsCS#iv-fluid-and-support "IV fluid and support"
* provision.action[+] = ADIHCADecisionsCS#antibiotics "Antibiotics"
* provision.action[+] = ADIHCADecisionsCS#resuscitation-non-cpr "Non-CPR Resuscitation"

* provision.purpose = http://terminology.hl7.org/CodeSystem/v3-ActReason#PWATRNY


// CarePlan
// Preference Care Plan

Instance: Example-Smith-Johnson-PreferenceCarePlan1
InstanceOf: ADIPreferenceCarePlan
Description: "Example Patient Smith-Johnson Preference Care Plan 1"
Usage: #example

* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p><b>status</b>: active</p><p><b>intent</b>: proposal</p><p><b>category</b>: <span title='Codes: {http://snomed.info/sct 736366004}'>Advance care plan</span></p><p><b>subject</b>: <a href='Patient-Example-Smith-Johnson-Patient1.html'>Betsy Smith-Johnson</a> ; BetsySJ@example.com; gender: female; birthDate: 1950-11-15</p><p><b>addresses</b>: </p><ul><li><span>Unconscious, in a coma, or in a persistent vegetative state with little or no chance of recovery</span></li><li><span>Persistent vegetative state (SNOMED CT 24473007)</span></li><li><span>Irreversible coma (SNOMED CT 73453007)</span></li></ul><p><b>goal</b>: </p><ul><li><a href='Goal-Example-Smith-Johnson-PersonalGoal1.html'><span title='Codes: {http://loinc.org 81378-2}'>Goals, preferences, and priorities under certain health conditions - Reported</span></a>; <span title='Codes: '>If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me: Avoiding prolonged dependence on machines, Not being a physical burden to my family, Dying at home</span></li><li><a href='Observation-Example-Smith-Johnson-PersonalInterventionPreference3.html'><span title='Codes: {http://loinc.org 75778-1}'>Information to tell doctors if I have a severe, irreversible brain injury or illness and can't dress, feed, or bathe myself, or communicate my medical wishes, but can be kept alive - Reported</span></a>; <span title='Codes: '>If my health ever deteriorates due to a terminal illness, and my doctors believe I will not be able to interact meaningfully with my family, friends, or surroundings, I would like for them to keep trying life-sustaining treatments until my healthcare agent decides it is time to stop and such treatments and let me die gently.</span></li><li><a href='Observation-Example-Smith-Johnson-CareExperiencePreference6.html'><span title='Codes: {http://loinc.org 81365-9}'>Religious or cultural affiliation contact to notify - Reported</span></a>; <span title='Codes: '>Please attempt to notify someone from my religion at the following phone number: If I have included one: Catholic</span></li><li><a href='Observation-Example-Smith-Johnson-CareExperiencePreference5.html'><span title='Codes: {http://loinc.org 81364-2}'>Religious or cultural beliefs - Reported</span></a>; <span title='Codes: '>If I appear to be approaching the end of my life, here are some things that I would like for my caregivers to know about my faith and my religion. Please call Father Mark if my condition warrants the services of a priest.</span></li><li><a href='Observation-Example-Smith-Johnson-CareExperiencePreference1.html'><span title='Codes: {http://loinc.org 75775-7}'>Decision to inform doctors and nurses about the role religion, faith, culture, or spirituality play in my life - Reported</span></a>; <span title='Codes: '>Here are some thoughts that I would like for my medical care team and my healthcare agent(s) to know about the role that religion, faith or spirituality play in my life: I am Catholic, please call Father Mark at Saint Catherine's on Main Street.</span></li></ul></div>"

* extension[adi-goal-order-by-descending-priority-extension].valueCodeableConcept = $HL7YesNoCS#Y

* status = #active
* intent = #proposal

// * category[advance_care_planning] = $LOINC#81378-2 "Goals, preferences, and priorities under certain health conditions - Reported"
* title = "Care Plan for Unconscious, vegetative state, coma for Smith-Johnson"

* subject = Reference(Example-Smith-Johnson-Patient1)

* addresses[+].display = "Unconscious, in a coma, or in a persistent vegetative state with little or no chance of recovery"
* addresses[+].display = "Persistent vegetative state (SNOMED CT 24473007)"
* addresses[+].display = "Irreversible coma (SNOMED CT 73453007)"
// * goal = Reference(Example-Smith-Johnson-PersonalGoal1)
// * supportingInfo[+] = Reference(Example-Smith-Johnson-PersonalInterventionPreference3)
* supportingInfo[0] = Reference(Example-Smith-Johnson-CareExperiencePreference1)
* supportingInfo[+] = Reference(Example-Smith-Johnson-CareExperiencePreference5)
* supportingInfo[+] = Reference(Example-Smith-Johnson-CareExperiencePreference6)




Instance: Example-Smith-Johnson-PreferenceCarePlan2
InstanceOf: ADIPreferenceCarePlan
Description: "Example Patient Smith-Johnson Preference Care Plan 2"
Usage: #example

// TODO update text
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p><b>status</b>: active</p><p><b>intent</b>: proposal</p><p><b>category</b>: <span title='Codes: {http://snomed.info/sct 736366004}'>Advance care plan</span></p><p><b>subject</b>: <a href='Patient-Example-Smith-Johnson-Patient1.html'>Betsy Smith-Johnson</a> ; BetsySJ@example.com; gender: female; birthDate: 1950-11-15</p><p><b>addresses</b>: <span>Permanent, severe brain damage and I am unable to recognize my family and friends</span></p><p><b>goal</b>: </p><ul><li><a href='Goal-Example-Smith-Johnson-PersonalGoal1.html'><span title='Codes: {http://loinc.org 81378-2}'>Goals, preferences, and priorities under certain health conditions - Reported</span></a>; <span title='Codes: '>If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me: Avoiding prolonged dependence on machines, Not being a physical burden to my family, Dying at home</span></li><li><a href='Observation-Example-Smith-Johnson-PersonalInterventionPreference3.html'><span title='Codes: {http://loinc.org 75778-1}'>Information to tell doctors if I have a severe, irreversible brain injury or illness and can't dress, feed, or bathe myself, or communicate my medical wishes, but can be kept alive - Reported</span></a>; <span title='Codes: '>If my health ever deteriorates due to a terminal illness, and my doctors believe I will not be able to interact meaningfully with my family, friends, or surroundings, I would like for them to keep trying life-sustaining treatments until my healthcare agent decides it is time to stop and such treatments and let me die gently.</span></li><li><a href='Observation-Example-Smith-Johnson-CareExperiencePreference5.html'><span title='Codes: {http://loinc.org 81364-2}'>Religious or cultural beliefs - Reported</span></a>; <span title='Codes: '>If I appear to be approaching the end of my life, here are some things that I would like for my caregivers to know about my faith and my religion. Please call Father Mark if my condition warrants the services of a priest.</span></li></ul></div>"

* status = #active
* intent = #proposal

// * category[advance_care_planning] = $LOINC#81378-2 "Goals, preferences, and priorities under certain health conditions - Reported"

* title = "Care Plan for Permanent, severe brain damage"

* subject = Reference(Example-Smith-Johnson-Patient1)

* addresses[+].display = "Permanent, severe brain damage and I am unable to recognize my family and friends"

// * goal = Reference(Goal/Example-Smith-Johnson-PersonalGoal2)
// * supportingInfo[+] = Reference(Example-Smith-Johnson-PersonalInterventionPreference3)
* supportingInfo = Reference(Example-Smith-Johnson-CareExperiencePreference5)


Instance: Example-Smith-Johnson-PreferenceCarePlan3
InstanceOf: ADIPreferenceCarePlan
Description: "Example Patient Smith-Johnson Preference Care Plan 3"
Usage: #example

// TODO update text

* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p><b>status</b>: active</p><p><b>intent</b>: proposal</p><p><b>category</b>: <span title='Codes: {http://snomed.info/sct 736366004}'>Advance care plan</span></p><p><b>subject</b>: <a href='Patient-Example-Smith-Johnson-Patient1.html'>Betsy Smith-Johnson</a> ; BetsySJ@example.com; gender: female; birthDate: 1950-11-15</p><p><b>addresses</b>: <span>Terminal illness, lack of meaningful interaction</span></p><p><b>goal</b>: </p><ul><li><a href='Goal-Example-Smith-Johnson-PersonalGoal1.html'><span title='Codes: {http://loinc.org 81378-2}'>Goals, preferences, and priorities under certain health conditions - Reported</span></a>; <span title='Codes: '>If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me: Avoiding prolonged dependence on machines, Not being a physical burden to my family, Dying at home</span></li><li><a href='Observation-Example-Smith-Johnson-CareExperiencePreference1.html'><span title='Codes: {http://loinc.org 75775-7}'>Decision to inform doctors and nurses about the role religion, faith, culture, or spirituality play in my life - Reported</span></a>; <span title='Codes: '>Here are some thoughts that I would like for my medical care team and my healthcare agent(s) to know about the role that religion, faith or spirituality play in my life: I am Catholic, please call Father Mark at Saint Catherine's on Main Street.</span></li><li><a href='Observation-Example-Smith-Johnson-CareExperiencePreference2.html'><span title='Codes: {http://loinc.org 81360-0}'>My likes and joys - Reported</span></a>; <span title='Codes: '>Here are some examples of the things that I would like to have near me, music that I’d like to hear, and other details of my care that would help to keep me happy and relaxed: I love the smell of lavender and the feeling of sunshine on my face.</span></li><li><a href='Observation-Example-Smith-Johnson-CareExperiencePreference3.html'><span title='Codes: {http://loinc.org 81362-6}'>My dislikes and fears - Reported</span></a>; <span title='Codes: '>Here is a list of things that I would like to avoid if at all possible, people that I don’t wish to see, and concerns I have about particular family members, pets, and so on: I do not like my feet to be cold.</span></li><li><a href='Observation-Example-Smith-Johnson-CareExperiencePreference4.html'><span title='Codes: {http://loinc.org 81380-8}'>Goals, preferences, and priorities for care experience - Reported</span></a>; <span title='Codes: '>How to care for me: If I become incapacitated and cannot express myself, here is what I would like to tell my healthcare agent, family and friends about how I would like for them to care for me: I want photos of my family where I can see them.</span></li><li><a href='Observation-Example-Smith-Johnson-CareExperiencePreference5.html'><span title='Codes: {http://loinc.org 81364-2}'>Religious or cultural beliefs - Reported</span></a>; <span title='Codes: '>If I appear to be approaching the end of my life, here are some things that I would like for my caregivers to know about my faith and my religion. Please call Father Mark if my condition warrants the services of a priest.</span></li><li><a href='Observation-Example-Smith-Johnson-CareExperiencePreference7.html'><span title='Codes: {http://loinc.org 81366-7}'>Unfinished business - Reported</span></a>; <span title='Codes: '>If it appears that I am approaching the end of my life, and I cannot communicate with persons around me, I would want my doctors and nurses, my family, and my friends to know about some unfinished business that I need to address: I want my sister and I to talk again, and miss her. I wish we hadn't disagreed all those years ago and regret the time it has cost us. I'd like to see her face if I were very ill and needed the comfort of family at my side.</span></li><li><a href='Observation-Example-Smith-Johnson-PersonalInterventionPreference1.html'><span title='Codes: {http://loinc.org 75776-5}'>Preference on consulting a supportive and palliative care team to help treat physical, emotional, and spiritual discomfort and support family - Reported</span></a>; <span title='Codes: '>If I am having significant pain or suffering, I would like my doctors to consult a Supportive and Palliative Care Team to help treat my physical, emotional and spiritual discomfort, and to support my family.</span></li><li><a href='Observation-Example-Smith-Johnson-PersonalInterventionPreference3.html'><span title='Codes: {http://loinc.org 75778-1}'>Information to tell doctors if I have a severe, irreversible brain injury or illness and can't dress, feed, or bathe myself, or communicate my medical wishes, but can be kept alive - Reported</span></a>; <span title='Codes: '>If my health ever deteriorates due to a terminal illness, and my doctors believe I will not be able to interact meaningfully with my family, friends, or surroundings, I would like for them to keep trying life-sustaining treatments until my healthcare agent decides it is time to stop and such treatments and let me die gently.</span></li><li><a href='Observation-Example-Smith-Johnson-PersonalInterventionPreference5.html'><span title='Codes: {http://loinc.org 75780-7}'>Preferred location to spend final days if possible to choose - Reported</span></a>; <span title='Codes: '>If it were possible to choose, here is where I would like to spend my final days: At home.I would like to receive hospice care at home if possible.</span></li></ul></div>"

* status = #active
* intent = #proposal

// * category[advance_care_planning] = $LOINC#81378-2 "Goals, preferences, and priorities under certain health conditions - Reported"
* title = "Care Plan for Terminal illness, lack of meaningful interaction"

* subject = Reference(Example-Smith-Johnson-Patient1)

* addresses[+].display = "Terminal illness, lack of meaningful interaction"

// * goal = Reference(Goal/Example-Smith-Johnson-PersonalGoal3)
* supportingInfo[0] = Reference(Example-Smith-Johnson-CareExperiencePreference1)
* supportingInfo[+] = Reference(Example-Smith-Johnson-CareExperiencePreference2)
* supportingInfo[+] = Reference(Example-Smith-Johnson-CareExperiencePreference3)
* supportingInfo[+] = Reference(Example-Smith-Johnson-CareExperiencePreference4)
* supportingInfo[+] = Reference(Example-Smith-Johnson-CareExperiencePreference5)
* supportingInfo[+] = Reference(Example-Smith-Johnson-CareExperiencePreference7)
// * supportingInfo[+] = Reference(Example-Smith-Johnson-PersonalInterventionPreference1)
// * supportingInfo[+] = Reference(Example-Smith-Johnson-PersonalInterventionPreference3)
// * supportingInfo[+] = Reference(Example-Smith-Johnson-PersonalInterventionPreference5)


// Observations
// Care Experience Preferences
Instance: Example-Smith-Johnson-CareExperiencePreference1
InstanceOf: ADICareExperiencePreference
Description: "Example Patient Smith-Johnson Care Experience Preference (Role of Religion)"
Usage: #example

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p>Here are some thoughts that I would like for my medical care team and my healthcare agent(s) to know about the role that religion, faith or spirituality play in my life:</p>
<p><i>I am Catholic, please call Father Mark at Saint Catherine's on Main Street.</i></p>
</div>"
* category[type] = ADIPreferenceCategoryCS#care-experience-preference "Care experience preference"
* code = $LOINC#75775-7 "Decision to inform doctors and nurses about the role religion, faith, culture, or spirituality play in my life Narrative - Reported"
* extension[adi-enclosedPrecondition-extension].valueCodeableConcept.text = "Here are some thoughts that I would like for my medical care team and my healthcare agent(s) to know about the role that religion, faith or spirituality play in my life"
* valueString = "I am Catholic, please call Father Mark at Saint Catherine's on Main Street."
* subject = Reference(Example-Smith-Johnson-Patient1)
* performer = Reference(Example-Smith-Johnson-Patient1)
* effectiveDateTime = "2016-05-18T22:33:22Z"


Instance: Example-Smith-Johnson-CareExperiencePreference2
InstanceOf: ADICareExperiencePreference
Description: "Example Patient Smith-Johnson Care Experience Preference (My Likes and Joys)"
Usage: #example

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>My likes / joys:</b></p>
<p>Here are some examples of the things that I would like to have near me, music that I’d like to hear, and other details of my care that would help to keep me happy and relaxed:</p>
<p><i>I love the smell of lavender and the feeling of sunshine on my face.</i></p>
</div>"
* category[type] = ADIPreferenceCategoryCS#care-experience-preference "Care experience preference"
* code = $LOINC#81360-0 "My likes and joys Narrative - Reported"
* extension[adi-enclosedPrecondition-extension].valueCodeableConcept.text = "Here are some examples of the things that I would like to have near me, music that I’d like to hear, and other details of my care that would help to keep me happy and relaxed"
* valueString = "I love the smell of lavender and the feeling of sunshine on my face."
* subject = Reference(Example-Smith-Johnson-Patient1)
* performer = Reference(Example-Smith-Johnson-Patient1)
* effectiveDateTime = "2016-05-18T22:33:22Z"


Instance: Example-Smith-Johnson-CareExperiencePreference3
InstanceOf: ADICareExperiencePreference
Description: "Example Patient Smith-Johnson Care Experience Preference (My Dislikes and Fears)"
Usage: #example

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>My dislikes / fears:</b></p>
<p>Here is a list of things that I would like to avoid if at all possible, people that I don’t wish to see, and concerns I have about particular family members, pets, and so on:</p>
<p><i>I do not like my feet to be cold.</i></p>
</div>"
* category[type] = ADIPreferenceCategoryCS#care-experience-preference "Care experience preference"
* code = $LOINC#81362-6 "My dislikes and fears Narrative - Reported"
* extension[adi-enclosedPrecondition-extension].valueCodeableConcept.text = "Here is a list of things that I would like to avoid if at all possible, people that I don’t wish to see, and concerns I have about particular family members, pets, and so on"
* valueString = "I do not like my feet to be cold."
* subject = Reference(Example-Smith-Johnson-Patient1)
* performer = Reference(Example-Smith-Johnson-Patient1)
* effectiveDateTime = "2016-05-18T22:33:22Z"


Instance: Example-Smith-Johnson-CareExperiencePreference4
InstanceOf: ADICareExperiencePreference
Description: "Example Patient Smith-Johnson Care Experience Preference (How to Care for Me)"
Usage: #example

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>How to care for me:</b></p>
<p>If I become incapacitated and cannot express myself, here is what I would like to tell my healthcare agent, family and friends about how I would like for them to care for me:</p>
<p><i>I want photos of my family where I can see them.</i></p>
</div>"
* category[type] = ADIPreferenceCategoryCS#care-experience-preference "Care experience preference"
* code = $LOINC#81380-8 "Goals, preferences, and priorities for care experience Narrative - Reported"
* extension[adi-enclosedPrecondition-extension].valueCodeableConcept.text = "How to care for me: If I become incapacitated and cannot express myself, here is what I would like to tell my healthcare agent, family and friends about how I would like for them to care for me"
* valueString = "I want photos of my family where I can see them."
* subject = Reference(Example-Smith-Johnson-Patient1)
* performer = Reference(Example-Smith-Johnson-Patient1)
* effectiveDateTime = "2016-05-18T22:33:22Z"


Instance: Example-Smith-Johnson-CareExperiencePreference5
InstanceOf: ADICareExperiencePreference
Description: "Example Patient Smith-Johnson Care Experience Preference (My Religion)"
Usage: #example

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>My religion:</b></p>
<p>If I appear to be approaching the end of my life, here are some things that I would like for my caregivers to know about my faith and my religion.</p>
<p><i>Please call Father Mark if my condition warrants the services of a priest.</i></p>
</div>"
* category[type] = ADIPreferenceCategoryCS#care-experience-preference "Care experience preference"
* code = $LOINC#81364-2 "Religious or cultural beliefs Narrative - Reported"
* extension[adi-enclosedPrecondition-extension].valueCodeableConcept.text = "If I appear to be approaching the end of my life, here are some things that I would like for my caregivers to know about my faith and my religion."
* valueString = "Please call Father Mark if my condition warrants the services of a priest."
* subject = Reference(Example-Smith-Johnson-Patient1)
* performer = Reference(Example-Smith-Johnson-Patient1)
* effectiveDateTime = "2016-05-18T22:33:22Z"



Instance: Example-Smith-Johnson-CareExperiencePreference6
InstanceOf: ADICareExperiencePreference
Description: "Example Patient Smith-Johnson Care Experience Preference (Religious Contact)"
Usage: #example

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>Please attempt to notify someone from my religion at the following phone number:</b></p>
<p>If I have included one</p>
<p><i>Catholic</i></p>
</div>"
* category[type] = ADIPreferenceCategoryCS#care-experience-preference "Care experience preference"
* code = $LOINC#81365-9 "Religious or cultural affiliation contact to notify - Reported"
* extension[adi-enclosedPrecondition-extension].valueCodeableConcept.text = "Please attempt to notify someone from my religion at the following phone number If I have included one"
* valueString = "Catholic"
* subject = Reference(Example-Smith-Johnson-Patient1)
* performer = Reference(Example-Smith-Johnson-Patient1)
* effectiveDateTime = "2016-05-18T22:33:22Z"



Instance: Example-Smith-Johnson-CareExperiencePreference7
InstanceOf: ADICareExperiencePreference
Description: "Example Patient Smith-Johnson Care Experience Preference (Religious Contact)"
Usage: #example

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>My unfinished business:</b></p>
<p>If it appears that I am approaching the end of my life, and I cannot communicate with persons around me, I would want my doctors and nurses, my family, and my friends to know about some unfinished business that I need to address:</p>
<p><i>I want my sister and I to talk again, and miss her.  I wish we hadn't disagreed all those years ago and regret the time it has cost us.  I'd like to see her face if I were very ill and needed the comfort of family at my side.</i></p>
</div>"
* category[type] = ADIPreferenceCategoryCS#care-experience-preference "Care experience preference"
* code = $LOINC#81366-7 "Unfinished business Narrative - Reported"
* extension[adi-enclosedPrecondition-extension].valueCodeableConcept.text = "If it appears that I am approaching the end of my life, and I cannot communicate with persons around me, I would want my doctors and nurses, my family, and my friends to know about some unfinished business that I need to address"
* valueString = "I want my sister and I to talk again, and miss her.  I wish we hadn't disagreed all those years ago and regret the time it has cost us.  I'd like to see her face if I were very ill and needed the comfort of family at my side."
* subject = Reference(Example-Smith-Johnson-Patient1)
* performer = Reference(Example-Smith-Johnson-Patient1)
* effectiveDateTime = "2016-05-18T22:33:22Z"



Instance: Example-Smith-Johnson-CareExperiencePreference8
InstanceOf: ADICareExperiencePreference
Description: "Example Patient Smith-Johnson Care Experience Preference (Religious Contact)"
Usage: #example

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>Laughter:</b></p>
<p>These are some of my fondest memories from life that have always brought a smile to my face or made me laugh:</p>
<p><i>My dogs make me laugh when they play together, and my grandchildren make me laugh when they put on plays for me.  They bring me great joy.</i></p>
</div>"
* category[type] = ADIPreferenceCategoryCS#care-experience-preference "Care experience preference"
* code = $LOINC#81361-8 "Things that make me laugh Narrative - Reported"
* extension[adi-enclosedPrecondition-extension].valueCodeableConcept.text = "These are some of my fondest memories from life that have always brought a smile to my face or made me laugh"
* valueString = "My dogs make me laugh when they play together, and my grandchildren make me laugh when they put on plays for me.  They bring me great joy."
* subject = Reference(Example-Smith-Johnson-Patient1)
* performer = Reference(Example-Smith-Johnson-Patient1)
* effectiveDateTime = "2016-05-18T22:33:22Z"



// Personal Priorities Organizer
Instance: Example-Smith-Johnson-PersonalPrioritiesOrganizer1
InstanceOf: ADIPersonalPrioritiesOrganizer
Description: "Example Patient Smith-Johnson Personal Priorities Organizer"
Usage: #example

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p>If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me:</p>
<ol>
	<li><i>Avoiding prolonged dependence on machines</i></li>
	<li><i>Not being a physical burden to my family</i></li>
	<li><i>Dying at home</i></li>
</ol>
</div>"

* status = #current
* mode = #working
* title = "Priorities for Goals and Preferences"
* code = $LOINC#81340-2 "Goals AndOr preferences in order of priority - Reported"
* subject = Reference(Example-Smith-Johnson-Patient1)
* orderedBy = http://terminology.hl7.org/CodeSystem/list-order#priority
* entry[+].item = Reference(Example-Smith-Johnson-PersonalGoal1)
* entry[+].item = Reference(Example-Smith-Johnson-PersonalGoal2)
* entry[+].item = Reference(Example-Smith-Johnson-PersonalGoal3)


// Health Goal Examples
Instance: Example-Smith-Johnson-PersonalGoal1
InstanceOf: ADIPersonalGoal
Description: "Example Patient Smith-Johnson Personal Goal 1"
Usage: #example

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me:</b></p>
<ul>
	<li><i>Avoiding prolonged dependence on machines</i></li>
	<li><i>Not being a physical burden to my family</i></li>
	<li><i>Dying at home</i></li>
</ul>	
</div>"
* lifecycleStatus = #proposed
* category[type].coding[0] = $LOINC#87528-6 "Personal health goal"

* description.extension[adi-enclosedPrecondition-extension].valueCodeableConcept.text = "If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me"
* description.text = "Avoiding prolonged dependence on machines, Not being a physical burden to my family, Dying at home"
* subject = Reference(Example-Smith-Johnson-Patient1)
* expressedBy = Reference(Example-Smith-Johnson-Patient1)


Instance: Example-Smith-Johnson-PersonalGoal2
InstanceOf: ADIPersonalGoal
Description: "Example Patient Smith-Johnson Personal Goal 2"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me:</b></p>
<p><i>Not being a physical burden to my family</i></p>
</div>"
* lifecycleStatus = #proposed
* category[type] = $LOINC#87528-6 "Personal health goal"
* description.extension[adi-enclosedPrecondition-extension].valueCodeableConcept.text = "If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me"
* description.text = "Not being a physical burden to my family"
* subject = Reference(Example-Smith-Johnson-Patient1)
* expressedBy = Reference(Example-Smith-Johnson-Patient1)


Instance: Example-Smith-Johnson-PersonalGoal3
InstanceOf: ADIPersonalGoal
Description: "Example Patient Smith-Johnson Personal Goal 3"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me:</b></p>
<p><i>Dying at home</i></p>
</div>"
* lifecycleStatus = #proposed
* category[type] = $LOINC#87528-6 "Personal health goal"
* description.extension[adi-enclosedPrecondition-extension].valueCodeableConcept.text = "If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me"
* description.text = "Dying at home"
* subject = Reference(Example-Smith-Johnson-Patient1)
* expressedBy = Reference(Example-Smith-Johnson-Patient1)


// // Personal Intervention Preferences

Instance: Example-Smith-Johnson-PersonalInterventionPreference1
InstanceOf: ADIPersonalInterventionPreference
Description: "Example Patient Smith-Johnson ADI PtAuthored Personal Intervention Preference (Significant Pain or Suffering)"
Usage: #example

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p>If I am having significant pain or suffering,</p>
<p><i>I would like my doctors to consult a Supportive and Palliative Care Team to help treat my physical, emotional and spiritual discomfort, and to support my family.</i></p>
</div>"
* category[type] = ADIPreferenceCategoryCS#intervention-preference "Intervention preference"
* code = $LOINC#75780-7 "Preferred location to spend final days if possible to choose Narrative - Reported"
* extension[adi-enclosedPrecondition-extension].valueCodeableConcept.text = "If I am having significant pain or suffering"
* valueString = "I would like my doctors to consult a Supportive and Palliative Care Team to help treat my physical, emotional and spiritual discomfort, and to support my family."
* subject = Reference(Example-Smith-Johnson-Patient1)
* performer = Reference(Example-Smith-Johnson-Patient1)
* effectiveDateTime = "2016-05-18T22:33:22Z"


Instance: Example-Smith-Johnson-PersonalInterventionPreference2
InstanceOf: ADIPersonalInterventionPreference
Description: "Example Patient Smith-Johnson ADI PtAuthored Personal Intervention Preference (Specific Circumstance)"
Usage: #example

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>My Preferences in Specific Circumstances</b></p>
<p>In addition to the general advance care goals provided above, below are specific treatment preferences with respect to certain specific circumstances or situations.</p>
</div>"
* category[type] = ADIPreferenceCategoryCS#intervention-preference "Intervention preference"
* code = $LOINC#75777-3 "Information to tell doctors if my health deteriorates due to a terminal illness and I am unable to interact meaningfully with family, friends, or surroundings Narrative - Reported"
* extension[adi-enclosedPrecondition-extension].valueCodeableConcept.text = "My Preferences in Specific Circumstances"
* valueString = "In addition to the general advance care goals provided above, below are specific treatment preferences with respect to certain specific circumstances or situations."
* subject = Reference(Example-Smith-Johnson-Patient1)
* performer = Reference(Example-Smith-Johnson-Patient1)
* effectiveDateTime = "2016-05-18T22:33:22Z"



Instance: Example-Smith-Johnson-PersonalInterventionPreference3
InstanceOf: ADIPersonalInterventionPreference
Description: "Example Patient Smith-Johnson ADI PtAuthored Personal Intervention Preference (Mental Illness Deterioration)"
Usage: #example

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p>If my health ever deteriorates due to a terminal illness, and my doctors believe I will not be able to interact meaningfully with my family, friends, or surroundings,</p>
<p><i>I would like for them to keep trying life-sustaining treatments until my healthcare agent decides it is time to stop and such treatments and let me die gently.</i></p>
</div>"
* category[type] = ADIPreferenceCategoryCS#intervention-preference "Intervention preference"
* code = $LOINC#75778-1 "Information to tell doctors if I have a severe, irreversible brain injury or illness and can't dress, feed, or bathe myself, or communicate my medical wishes, but can be kept alive Narrative - Reported"
* extension[adi-enclosedPrecondition-extension].valueCodeableConcept.text = "If my health ever deteriorates due to a terminal illness, and my doctors believe I will not be able to interact meaningfully with my family, friends, or surroundings"
* valueString = "I would like for them to keep trying life-sustaining treatments until my healthcare agent decides it is time to stop and such treatments and let me die gently."
* subject = Reference(Example-Smith-Johnson-Patient1)
* performer = Reference(Example-Smith-Johnson-Patient1)
* effectiveDateTime = "2016-05-18T22:33:22Z"



Instance: Example-Smith-Johnson-PersonalInterventionPreference4
InstanceOf: ADIPersonalInterventionPreference
Description: "Example Patient Smith-Johnson ADI PtAuthored Personal Intervention Preference (Severe Irreversible Brain Injury or Illness)"
Usage: #example

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p>Although I understand that, depending on the situation and circumstances, medical personnel may not be able to follow my wishes, here are my general thoughts on cardiopulmonary resuscitation (CPR):</p>
<p><i>I want my healthcare agent to decide for me.</i></p>
</div>"
* category[type] = ADIPreferenceCategoryCS#intervention-preference "Intervention preference"
* code = $LOINC#75779-9 "Thoughts on cardiopulmonary resuscitation (CPR) Narrative - Reported"
* extension[adi-enclosedPrecondition-extension].valueCodeableConcept.text = "Although I understand that, depending on the situation and circumstances, medical personnel may not be able to follow my wishes, here are my general thoughts on cardiopulmonary resuscitation (CPR)"
* valueString = "I want my healthcare agent to decide for me."
* subject = Reference(Example-Smith-Johnson-Patient1)
* performer = Reference(Example-Smith-Johnson-Patient1)
* effectiveDateTime = "2016-05-18T22:33:22Z"



Instance: Example-Smith-Johnson-PersonalInterventionPreference5
InstanceOf: ADIPersonalInterventionPreference
Description: "Example Patient Smith-Johnson ADI PtAuthored Personal Intervention Preference (Final Days Location)"
Usage: #example

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p>If it were possible to choose, here is where I would like to spend my final days:</p>
<p><i>At home.I would like to receive hospice care at home if possible.</i></p>
</div>"

* category[type] = ADIPreferenceCategoryCS#intervention-preference "Intervention preference"
* code = $LOINC#75780-7 "Preferred location to spend final days if possible to choose Narrative - Reported"
* extension[adi-enclosedPrecondition-extension].valueCodeableConcept.text = "If it were possible to choose, here is where I would like to spend my final days"
* valueString = "At home.I would like to receive hospice care at home if possible."
* subject = Reference(Example-Smith-Johnson-Patient1)
* performer = Reference(Example-Smith-Johnson-Patient1)
* effectiveDateTime = "2016-05-18T22:33:22Z"



Instance: Example-Smith-Johnson-PersonalInterventionPreference6
InstanceOf: ADIPersonalInterventionPreference
Description: "Example Patient Smith-Johnson ADI PtAuthored Personal Intervention Preference (Death Arrangements)"
Usage: #example

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>Here are my thoughts on funeral or burial plans:</b></p>
<p><i>If I were to pass away:</i></p>
<p><i>Please call Jim Houston, my lawyer, for arrangements I have already made.</i></p>
</div>"

* category[type] = ADIPreferenceCategoryCS#intervention-preference "Intervention preference"
* code = $LOINC#81356-8 "Death arrangements Narrative - Reported"
* extension[adi-enclosedPrecondition-extension].valueCodeableConcept.text = "If I were to pass away"
* valueString = "Please call Jim Houston, my lawyer, for arrangements I have already made."
* subject = Reference(Example-Smith-Johnson-Patient1)
* performer = Reference(Example-Smith-Johnson-Patient1)
* effectiveDateTime = "2016-05-18T22:33:22Z"


/*
// Personal Intervention Request Preferences
Instance: Example-Smith-Johnson-PersonalInterventionPreference1
InstanceOf: ADIPersonalInterventionRequestPreference
Description: "Example Patient Smith-Johnson ADI PtAuthored Personal Intervention Preference (Significant Pain or Suffering)"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p>If I am having significant pain or suffering,</p>
<p><i>I would like my doctors to consult a Supportive and Palliative Care Team to help treat my physical, emotional and spiritual discomfort, and to support my family.</i></p>
</div>"
* status = #final
* code = $LOINC#75776-5 "Preference on consulting a supportive and palliative care team to help treat physical, emotional, and spiritual discomfort and support family - Reported"
* valueString = "If I am having significant pain or suffering, I would like my doctors to consult a Supportive and Palliative Care Team to help treat my physical, emotional and spiritual discomfort, and to support my family."


Instance: Example-Smith-Johnson-PersonalInterventionPreference2
InstanceOf: ADIPersonalInterventionPreference
Description: "Example Patient Smith-Johnson ADI PtAuthored Personal Intervention Preference (Specific Circumstance)"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>My Preferences in Specific Circumstances</b></p>
<p>In addition to the general advance care goals provided above, below are specific treatment preferences with respect to certain specific circumstances or situations.</p>
</div>"
* status = #final
* code = $LOINC#75777-3 "Information to tell doctors if my health deteriorates due to a terminal illness and I am unable to interact meaningfully with family, friends, or surroundings Narrative - Reported"
* valueString = "My Preferences in Specific Circumstances: In addition to the general advance care goals provided above, below are specific treatment preferences with respect to certain specific circumstances or situations."


Instance: Example-Smith-Johnson-PersonalInterventionPreference3
InstanceOf: ADIPersonalInterventionPreference
Description: "Example Patient Smith-Johnson ADI PtAuthored Personal Intervention Preference (Mental Illness Deterioration)"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p>If my health ever deteriorates due to a terminal illness, and my doctors believe I will not be able to interact meaningfully with my family, friends, or surroundings,</p>
<p><i>I would like for them to keep trying life-sustaining treatments until my healthcare agent decides it is time to stop and such treatments and let me die gently.</i></p>
</div>"
* status = #final
* code = $LOINC#75778-1 "Information to tell doctors if I have a severe, irreversible brain injury or illness and can't dress, feed, or bathe myself, or communicate my medical wishes, but can be kept alive Narrative - Reported"
* valueString = "If my health ever deteriorates due to a terminal illness, and my doctors believe I will not be able to interact meaningfully with my family, friends, or surroundings, I would like for them to keep trying life-sustaining treatments until my healthcare agent decides it is time to stop and such treatments and let me die gently."


Instance: Example-Smith-Johnson-PersonalInterventionPreference4
InstanceOf: ADIPersonalInterventionPreference
Description: "Example Patient Smith-Johnson ADI PtAuthored Personal Intervention Preference (Severe Irreversible Brain Injury or Illness)"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p>Although I understand that, depending on the situation and circumstances, medical personnel may not be able to follow my wishes, here are my general thoughts on cardiopulmonary resuscitation (CPR):</p>
<p><i>I want my healthcare agent to decide for me.</i></p>
</div>"
* status = #final
* code = $LOINC#75779-9 "Thoughts on cardiopulmonary resuscitation (CPR) Narrative - Reported"
* valueString = "Although I understand that, depending on the situation and circumstances, medical personnel may not be able to follow my wishes, here are my general thoughts on cardiopulmonary resuscitation (CPR): I want my healthcare agent to decide for me."


Instance: Example-Smith-Johnson-PersonalInterventionPreference5
InstanceOf: ADIPersonalInterventionPreference
Description: "Example Patient Smith-Johnson ADI PtAuthored Personal Intervention Preference (Final Days Location)"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p>If it were possible to choose, here is where I would like to spend my final days:</p>
<p><i>At home.I would like to receive hospice care at home if possible.</i></p>
</div>"
* status = #final
* code = $LOINC#75780-7 "Preferred location to spend final days if possible to choose Narrative - Reported"
* valueString = "If it were possible to choose, here is where I would like to spend my final days: At home.I would like to receive hospice care at home if possible."


Instance: Example-Smith-Johnson-PersonalInterventionPreference6
InstanceOf: ADIPersonalInterventionPreference
Description: "Example Patient Smith-Johnson ADI PtAuthored Personal Intervention Preference (Death Arrangements)"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>Here are my thoughts on funeral or burial plans:</b></p>
<p><i>If I were to pass away:</i></p>
<p><i>Please call Jim Houston, my lawyer, for arrangements I have already made.</i></p>
</div>"
* status = #final
* code = $LOINC#81356-8 "Death arrangements - Reported"
* valueString = "If I were to pass away: Please call Jim Houston, my lawyer, for arrangements I have already made."
/*


Instance: Example-Smith-Johnson-PersonalInterventionPreference1
InstanceOf: ADIPersonalInterventionPreference
Description: "Example Patient Smith-Johnson ADI PtAuthored Personal Intervention Preference (Palliative Care)"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p>If I am having significant pain or suffering, <i>I would like my doctors to consult a Supportive and Palliative Care Team to help treat my physical, emotional and spiritual discomfort, and to support my family.</i></p>
</div>"
* status = #final
* code = $LOINC#75776-5 "Preference on consulting a supportive and palliative care team to help treat physical, emotional, and spiritual discomfort and support family - Reported"
* valueString = "If I am having significant pain or suffering, I would like my doctors to consult a Supportive and Palliative Care Team to help treat my physical, emotional and spiritual discomfort, and to support my family."



Instance: Example-Smith-Johnson-PersonalInterventionPreference2
InstanceOf: ADIPersonalInterventionPreference
Description: "Example Patient Smith-Johnson ADI PtAuthored Personal Intervention Preference (Terminal Illness Health Deterioration)"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p>If my health ever deteriorates due to a terminal illness, and my doctors believe I will not be able to interact meaningfully with my family, friends, or surroundings, <i>I prefer that they stop all life-sustaining treatments and let me die as gently as possible.  I realize that I will not receive life-sustaining treatments including but not limited to breathing machines, blood transfusions, dialysis, heart machines, and IV drugs to keep my heart working.  I also realize that medical personnel will not attempt cardiopulmonary resuscitation (CPR), and they will allow me to die naturally.</i></p>
</div>"
* status = #final
* code = $LOINC#75777-3 "Information to tell doctors if my health deteriorates due to a terminal illness and I am unable to interact meaningfully with family, friends, or surroundings Narrative - Reported"
* valueString = "If my health ever deteriorates due to a terminal illness, and my doctors believe I will not be able to interact meaningfully with my family, friends, or surroundings, I prefer that they stop all life-sustaining treatments and let me die as gently as possible.  I realize that I will not receive life-sustaining treatments including but not limited to breathing machines, blood transfusions, dialysis, heart machines, and IV drugs to keep my heart working.  I also realize that medical personnel will not attempt cardiopulmonary resuscitation (CPR), and they will allow me to die naturally."


Instance: Example-Smith-Johnson-PersonalInterventionPreference3
InstanceOf: ADIPersonalInterventionPreference
Description: "Example Patient Smith-Johnson ADI PtAuthored Personal Intervention Preference (Artificial Nutrition and Hydration)"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p>If my response above indicates that I do not want life-sustaining treatments,</p>
<p>I expressly authorize my attending physician to withhold or withdraw artificial nutrition and hydration and instruct my healthcare agent (or, if I have not designated a healthcare agent, my default surrogate), my family and the doctors and nurses who are taking care of me to respect this request.</p>
</div>"
* status = #final
* code = $LOINC#77352-3 "Thoughts on artificial nutrition and hydration - Reported"
* valueString = "If my response above indicates that I do not want life-sustaining treatments, I expressly authorize my attending physician to withhold or withdraw artificial nutrition and hydration and instruct my healthcare agent (or, if I have not designated a healthcare agent, my default surrogate), my family and the doctors and nurses who are taking care of me to respect this request."


Instance: Example-Smith-Johnson-PersonalInterventionPreference4
InstanceOf: ADIPersonalInterventionPreference
Description: "Example Patient Smith-Johnson ADI PtAuthored Personal Intervention Preference (Severe Illness or Injury)"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p>If I have a severe, irreversible brain injury or illness and can’t dress, feed, or bathe myself, or communicate my medical wishes, but doctors can keep me alive in this condition for a long period of time, <i>I would like for them to keep trying life-sustaining treatments for 2 months.</i></p>
</div>"
* status = #final
* code = $LOINC#75778-1 "Information to tell doctors if I have a severe, irreversible brain injury or illness and can't dress, feed, or bathe myself, or communicate my medical wishes, but can be kept alive Narrative - Reported"
* valueString = "If I have a severe, irreversible brain injury or illness and can’t dress, feed, or bathe myself, or communicate my medical wishes, but doctors can keep me alive in this condition for a long period of time, I would like for them to keep trying life-sustaining treatments for 2 months."


Instance: Example-Smith-Johnson-PersonalInterventionPreference5
InstanceOf: ADIPersonalInterventionPreference
Description: "Example Patient Smith-Johnson ADI PtAuthored Personal Intervention Preference (Thoughts on CPR 1)"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p>Although I understand that, depending on the situation and circumstances, medical personnel may not be able to follow my wishes, here are my general thoughts on cardiopulmonary resuscitation (CPR):</p>
<p><i>I want my healthcare agent to make the decision, but if my chances are slim to none that I'll leave the hospital, even if they resuscitate me, then I absolutely do not want CPR.</i></p>
</div>"
* status = #final
* code = $LOINC#75779-9 "Thoughts on cardiopulmonary resuscitation (CPR) Narrative - Reported"
* valueString = "Although I understand that, depending on the situation and circumstances, medical personnel may not be able to follow my wishes, here are my general thoughts on cardiopulmonary resuscitation (CPR): I do not want CPR attempted."


Instance: Example-Smith-Johnson-PersonalInterventionPreference6
InstanceOf: ADIPersonalInterventionPreference
Description: "Example Patient Smith-Johnson ADI PtAuthored Personal Intervention Preference (THoughts on CPR 2)"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p>Although I understand that, depending on the situation and circumstances, medical personnel may not be able to follow my wishes, here are my general thoughts on cardiopulmonary resuscitation (CPR):</p>
<p><i>I want my healthcare agent to make the decision, but if my chances are slim to none that I'll leave the hospital, even if they resuscitate me, then I absolutely do not want CPR.</i></p>
</div>"
* status = #final
* code = $LOINC#75779-9 "Thoughts on cardiopulmonary resuscitation (CPR) Narrative - Reported"
* valueString = "Although I understand that, depending on the situation and circumstances, medical personnel may not be able to follow my wishes, here are my general thoughts on cardiopulmonary resuscitation (CPR): I want my healthcare agent to make the decision, but if my chances are slim to none that I'll leave the hospital, even if they resuscitate me, then I absolutely do not want CPR."


Instance: Example-Smith-Johnson-PersonalInterventionPreference7
InstanceOf: ADIPersonalInterventionPreference
Description: "Example Patient Smith-Johnson ADI PtAuthored Personal Intervention Preference (Preferred Location for Last Days)"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p>If it were possible to choose, here is where I would like to spend my final days:</p>
<p><i>At home.I would like to receive hospice care at home if possible.</i></p>
</div>"
* status = #final
* code = $LOINC#75780-7 "Preferred location to spend final days if possible to choose Narrative - Reported"
* valueString = "If it were possible to choose, here is where I would like to spend my final days: At home.I would like to receive hospice care at home if possible."
*/

//Organ Donation Observation examples


Instance: Example-Smith-Johnson-OrganDonationObservation1
InstanceOf: ADIOrganDonationObservation
Description: "Example Patient Smith-Johnson Organ Donation Observation 1"
Usage: #example

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>Consent to Donate</b></p>
<p><i>I consent to donate all organs and tissues.</i></p>
</div>"
* status = #final
* subject = Reference(Example-Smith-Johnson-Patient1)
* valueString = "Consent to Donate: I consent to donate all organs and tissues."
* performer = Reference(Example-Smith-Johnson-Patient1)
* effectiveDateTime = "2016-05-18T22:33:22Z"


// Autopsy Observation examples

Instance: Example-Smith-Johnson-AutopsyObservation1
InstanceOf: ADIAutopsyObservation
Description: "Example Patient Smith-Johnson Autopsy Observation (Thoughts Regarding Autopsy)"
Usage: #example

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>Autopsy preferences</b></p>
<p><i>I want an autopsy only if there are questions about my death.</i></p>
</div>"
* status = #final
// * code = $LOINC#75782-3 "Thoughts regarding autopsy Narrative - Reported" 
* subject = Reference(Example-Smith-Johnson-Patient1)
* valueString = "Autopsy: I want an autopsy: only if there are questions about my death."
* performer = Reference(Example-Smith-Johnson-Patient1)
* effectiveDateTime = "2016-05-18T22:33:22Z"


Instance: Example-Smith-Johnson-UponDeathPreference1
InstanceOf: ADIUponDeathPreference
Description: "Example Patient Smith-Johnson Upon Death Preference"
Usage: #example

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>Upon Death Preferences</b></p>
<p><i>I want a military style funderal at the local Veterans Hall.</i></p>
</div>"
* status = #final
* code = $LOINC#81356-8 // "Death arrangements Narrative - Reported"
* subject = Reference(Example-Smith-Johnson-Patient1)
* valueString = "Upon death preference: I want a military style funderal at the local Veterans Hall."
* performer = Reference(Example-Smith-Johnson-Patient1)
* effectiveDateTime = "2022-05-18T22:33:22Z"


Instance: Example-Smith-Johnson-DocumentationObservation1
InstanceOf: ADIDocumentationObservation
Description: "Example Patient Smith-Johnson PMOLST Documentation Observation"
Usage: #example

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>PMOLST Order Observation</b></p>
<p><i>Order Exists: <a href='http://www.example.com'>available here</a></i></p>
</div>"
* status = #final
* subject = Reference(Example-Smith-Johnson-Patient1)
* performer = Reference(Example-Smith-Johnson-Patient1)
//* focus = "DocumentReference/Example-Smith-Johnson-Patient1-DocumentReference_PMOLST"
* effectiveDateTime = "2021-03-29T14:25:34.001-05:00"
* valueCodeableConcept = $SNOMEDCT#697978002 "Provider orders for life-sustaining treatment"
* performer = Reference(Example-Smith-Johnson-Patient1)
* effectiveDateTime = "2016-05-18T22:33:22Z"


// Organization Examples

Instance: Example-Smith-Johnson-OrganizationCustodian1
InstanceOf: $USCoreOrganization
Description: "Example Patient Smith-Johnson Custodian Organization"
Usage: #example

* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "1234567893"
* active = true
* name = "example.org"

* telecom[0].system = #phone
* telecom[0].value = "+1(202)776-7700"
* telecom[0].use = #work

* address[0].type = http://hl7.org/fhir/address-type#physical
* address[0].line[0] = "740 E. Campbell Rd. Suite 825"
* address[0].city = "Richardson"
* address[0].state = "TX"
* address[0].postalCode = "75081"
* address[0].country = "US"


// TODO where does assembler or provenance get referenced to by the Composition (or doesn't it)?
// Instance: Example-Smith-Johnson-OrganizationAssembler1
// InstanceOf: $USCoreOrganization
// Description: "Example Patient Smith-Johnson Assembler Organization"
// Usage: #example

// * identifier.system = "urn:oid:1.3.6.1.4.1.42424242.4.99930.4"
// * identifier.value = "12c5dcee5089494ca1ca0cb428ed3fff"
// * active = true
// * name = "GoodHealth Clinic"

// * telecom[0].system = #phone
// * telecom[0].value = "+1(202)776-7700"
// * telecom[0].use = #work

// * address[0].type = http://hl7.org/fhir/address-type#physical
// * address[0].line[0] = "740 E. Campbell Rd. Suite 825"
// * address[0].city = "Richardson"
// * address[0].state = "TX"
// * address[0].postalCode = "75081"
// * address[0].country = "US"



//////////////////////////////////////////////////////////////////////////////////////
//
//    DocumentReference Example instances
//
//////////////////////////////////////////////////////////////////////////////////////

Instance: Example-Smith-Johnson-DocRef-DocumentReference
InstanceOf: ADI-DocumentReference
Description: "Example Patient Smith-Johnson DocumentReference"
Usage: #example

* masterIdentifier.system = "http://example.org/GoodHealthClinic/id"
* masterIdentifier.value = "5367-047e62ccf09d4b39a8add708a69b7f38-1"

* identifier[+].system = "http://example.org/GoodHealthClinic/id"
* identifier[=].value = "5367-047e62ccf09d4b39a8add708a69b7f38-1"

* identifier[+].system = "http://example.org/GoodHealthClinic/id"
* identifier[=].value = "0e37bb3e-1e36-46c6-b0f5-396d636a483b"

* identifier[+].system = "http://example.org/GoodHealthClinic/id"
* identifier[=].value = "5367-047e62ccf09d4b39a8add708a69b7f38"

* extension[adi-jurisdiction-extension].valueCodeableConcept = urn:iso:std:iso:3166:-2#US-MI
* extension[adi-docVersionNumber-extension].valueString = "2015-11-05T15:52:20.000+00:00"
* extension[adi-document-location].valueString = "http://example.org/DocumentLocation/document12345.txt"

* status = #current
* docStatus = #final


* type.coding[0] = $LOINC#86533-7 "Patient Living will"


* category.coding[0] = http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category#clinical-note "Clinical Note"
* category.text = "Clinical Note"

* subject = Reference(Example-Smith-Johnson-Patient1)

* date = "2015-11-05T15:52:20.000+00:00"

//* author = Reference(Example-Smith-Johnson-DocRef-Device1)
* author = Reference(Example-Smith-Johnson-Patient1)


* authenticator = Reference(Example-Smith-Johnson-OrganizationCustodian1)

* custodian = Reference(Example-Smith-Johnson-OrganizationAssembler1)

* description = "Living Will"

* securityLabel.coding[0] = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N "normal"

* content[0].attachment.contentType = #text/xml
* content[0].attachment.url = "http://example.org/Binary/Example-Smith-Johnson-DocRef-Binary1"
* content[0].attachment.creation = "2015-11-05T15:52:20.000+00:00"


Instance: Example-Smith-Johnson-DocRef-Bundle
InstanceOf: ADI-DocumentReference
Description: "Example Patient Smith-Johnson DocumentReference Bundle"
Usage: #example

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p>PACP DocumentReference</p></div>"
* masterIdentifier.system = "http://example.org/GoodHealthClinic/id"
* masterIdentifier.value = "0-87f37989294a408897aacd1fc5d8fd16"
* identifier[+].system = "http://example.org/GoodHealthClinic/id"
* identifier[=].value = "0-87f37989294a408897aacd1fc5d8fd16"
* extension[adi-jurisdiction-extension].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166:-2"
* extension[adi-jurisdiction-extension].valueCodeableConcept.coding.code = #US-MI
* extension[adi-jurisdiction-extension].valueCodeableConcept.coding.display = "Michigan"
* status = #current
* docStatus = #final
* type.coding[0] = $LOINC#81334-5 "Patient Personal advance care plan"
* category.coding[0] = $LOINC#42348-3 "Advance healthcare directives"
* subject = Reference(Example-Smith-Johnson-Patient1)
* date = "2021-03-29T14:25:34.001-05:00"
* author = Reference(Example-Smith-Johnson-Patient1)
* authenticator = Reference(Example-Smith-Johnson-OrganizationCustodian1)
* custodian = Reference(Organization/Example-Smith-Johnson-OrganizationCustodian1)
* description = "Personal Advance Care Plan"
* securityLabel.coding[0] = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N "normal"

* content[0].attachment.contentType = #application/fhir+json
* content[0].attachment.url = "http://hl7.org/fhir/us/pacio-adi/Bundle/Example-Smith-Johnson-PACP-Bundle1"
* content[0].attachment.creation = "2021-03-29T14:25:34.001-05:00"


Instance: Example-Smith-Johnson-DocRef-Device1
InstanceOf: Device
Description: "Example Patient Smith-Johnson DocumentReference Device"
Usage: #example

* identifier.system = "http://example.org/GoodHealthClinic/id"
* identifier.value = "ed6f4f50c6cb47dd89cb5d8f3007ecb0"

* modelNumber = "GoodHealth RR Portal"
* version.value = "1.0"

* owner = Reference(Example-Smith-Johnson-OrganizationCustodian1)
* owner.display = "GoodHealth Clinic"
