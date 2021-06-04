// Bundle Examples
Instance: Example-McBee-Bundle1
InstanceOf: Bundle
Description: "Example Patient McBee ADI Document Bundle McBee 1"
Usage: #example

* identifier.system = "urn:oid:2.16.840.1.113883.3.3208.101.1"
* identifier.value = "20130607100315-CCDA-CCD"
* type = #document
* timestamp = "2019-12-06T10:11:30.001-04:00"

* entry[+].fullUrl = "http://www.example.org/fhir/Composition/Example-McBee-PACPComposition1"
* entry[=].resource = Example-McBee-PACPComposition1
* entry[+].fullUrl = "http://www.example.org/fhir/Patient/Example-McBee-Patient1"
* entry[=].resource = Example-McBee-Patient1
* entry[+].fullUrl = "http://www.example.org/fhir/RelatedPerson/Example-McBee-HealthcareAgent1"
* entry[=].resource = Example-McBee-HealthcareAgent1
* entry[+].fullUrl = "http://www.example.org/fhir/RelatedPerson/Example-McBee-HealthcareAgent2"
* entry[=].resource = Example-McBee-HealthcareAgent2
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-McBee-CareExperiencePreference1"
* entry[=].resource = Example-McBee-CareExperiencePreference1
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-McBee-CareExperiencePreference2"
* entry[=].resource = Example-McBee-CareExperiencePreference2
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-McBee-CareExperiencePreference3"
* entry[=].resource = Example-McBee-CareExperiencePreference3
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-McBee-CareExperiencePreference4"
* entry[=].resource = Example-McBee-CareExperiencePreference4
* entry[+].fullUrl = "http://www.example.org/fhir/List/Example-McBee-PersonalPrioritiesOrganizer1"
* entry[=].resource = Example-McBee-PersonalPrioritiesOrganizer1
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-McBee-PersonalInterventionPreference1"
* entry[=].resource = Example-McBee-PersonalInterventionPreference1
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-McBee-PersonalInterventionPreference2"
* entry[=].resource = Example-McBee-PersonalInterventionPreference2
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-McBee-PersonalInterventionPreference3"
* entry[=].resource = Example-McBee-PersonalInterventionPreference3
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-McBee-PersonalInterventionPreference4"
* entry[=].resource = Example-McBee-PersonalInterventionPreference4
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-McBee-PersonalInterventionPreference5"
* entry[=].resource = Example-McBee-PersonalInterventionPreference5
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-McBee-PersonalInterventionPreference6"
* entry[=].resource = Example-McBee-PersonalInterventionPreference6
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-McBee-PersonalInterventionPreference7"
* entry[=].resource = Example-McBee-PersonalInterventionPreference7
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-McBee-PersonalInterventionPreference8"
* entry[=].resource = Example-McBee-PersonalInterventionPreference8
* entry[+].fullUrl = "http://www.example.org/fhir/Goal/Example-McBee-PersonalHealthGoal1"
* entry[=].resource = Example-McBee-PersonalHealthGoal1
* entry[+].fullUrl = "http://www.example.org/fhir/Goal/Example-McBee-PersonalHealthGoal2"
* entry[=].resource = Example-McBee-PersonalHealthGoal2
* entry[+].fullUrl = "http://www.example.org/fhir/Goal/Example-McBee-PersonalHealthGoal3"
* entry[=].resource = Example-McBee-PersonalHealthGoal3
* entry[+].fullUrl = "http://www.example.org/fhir/Goal/Example-McBee-PersonalHealthGoal4"
* entry[=].resource = Example-McBee-PersonalHealthGoal4
* entry[+].fullUrl = "http://www.example.org/fhir/Goal/Example-McBee-PersonalHealthGoal5"
* entry[=].resource = Example-McBee-PersonalHealthGoal5
* entry[+].fullUrl = "http://www.example.org/fhir/Goal/Example-McBee-PersonalHealthGoal6"
* entry[=].resource = Example-McBee-PersonalHealthGoal6
* entry[+].fullUrl = "http://www.example.org/fhir/Goal/Example-McBee-PersonalHealthGoal7"
* entry[=].resource = Example-McBee-PersonalHealthGoal7


* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-McBee-OrganDonationObservation1"
* entry[=].resource = Example-McBee-OrganDonationObservation1
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/Example-McBee-AutopsyObservation1"
* entry[=].resource = Example-McBee-AutopsyObservation1
* entry[+].fullUrl = "http://www.example.org/fhir/Organization/Example-McBee-OrganizationCustodian1"
* entry[=].resource = Example-McBee-OrganizationCustodian1
* entry[+].fullUrl = "http://www.example.org/fhir/Organization/Example-McBee-OrganizationAssembler1"
* entry[=].resource = Example-McBee-OrganizationAssembler1
* entry[+].fullUrl = "http://www.example.org/fhir/Provenance/Example-McBee-PACPProvenance1"
* entry[=].resource = Example-McBee-PACPProvenance1




// Patient Examples

Instance: Example-McBee-Patient1
InstanceOf: $USCorePatient
Description: "Example Patient McBee Patient Example 1"
Usage: #example
//* id = "1234-234-1243-12345678901"
//* meta.profile = Canonical(C4BBPatient)
* meta.lastUpdated = "2021-04-07T19:55:22+00:00"
* language = #en-US
* id = "Example-McBee-Patient1"
* active = true
* name[0].family = "McBee"
* name[0].given[0] = "Roger"
* name[0].given[1] = "Rienman"

* telecom[0].system = #phone
* telecom[0].value = "+1(469)238-2858"
* telecom[0].use = #home
* telecom[0].rank = 1

* telecom[1].system = #phone
* telecom[1].value = "+1(214)497-9529"
* telecom[1].use = #mobile
* telecom[1].rank = 2

* telecom[2].system = #email
* telecom[2].value = "rogerb@example.com"
* telecom[2].use = #mobile
* telecom[2].rank = 3



* gender = #male
* birthDate = "1945-04-01"
* address[0].type = http://hl7.org/fhir/address-type#physical
* address[0].line[0] = "12345 Main Street"
* address[0].city = "Orlando"
* address[0].state = "FL"
* address[0].postalCode = "75219"
* address[0].country = "US"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#NI
* identifier[0].type = 	http://terminology.hl7.org/CodeSystem/v2-0203#SB "Social Beneficiary Identifier"
* identifier[0].value = "555-12-1246"
* identifier[0].system = "http://hl7.org/fhir/sid/us-ssn"
* identifier[1].type = http://terminology.hl7.org/CodeSystem/v2-0203#DL "Driver's License Number"
* identifier[1].value = "33487"
* identifier[1].system = "urn:oid:2.16.840.1.113883.4.3.12"


//Composition Examples

Instance: Example-McBee-PACPComposition1
InstanceOf: PADIPACPComposition
Description: "Example Patient McBee Personal Advance Care Plan Composition Example 1"
Usage: #example

* language = #en-US

// Need to add extensions (mostly participants)
* extension[padi-versionNumber-extension].valueInteger = 1
* extension[padi-dataEnterer-extension].valueReference = Reference(Example-McBee-Patient1)
// witness Sally Bobbins

* identifier.system = "urn:oid:"
* identifier.value = "20130607100315-CCDA-CCD"


* status = #final
* type = $LOINC#81334-5 "Patient Personal Advance Care Plan"
* category = $LOINC#75320-2 "Advance Directive"
* subject = Reference(Example-McBee-Patient1)
* date = "2018-08-28T08:49:58.313-04:00"
* author = Reference(Example-McBee-Patient1)
* title = "Personal Advance Care Plan Document for Roger McBee"

* custodian = Reference(Example-McBee-OrganizationCustodian1)

// Need to include attesters

// Line 202
* section[healthcare_agent_appointment].title = "Appointment of a Primary Healthcare Agent and Alternate Healthcare Agents"
* section[healthcare_agent_appointment].code = $LOINC#81335-2 "Healthcare Agent"
* section[healthcare_agent_appointment].text.status = #additional
* section[healthcare_agent_appointment].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>It is very important for you to discuss your medical treatment goals and wishes with your healthcare agent, your family, and your medical care providers.</b> Keep in mind that advance medical directives are simply expressions of your medical treatment goals and preferences. There is no guarantee that your medical care providers will follow all of your wishes, but one thing is certain: <b>If your advance medical directives cannot be quickly located and retrieved in a time of need, then medical care providers, your family and friends will not be able to take your wishes into consideration when they make critical decisions regarding your treatment.</b></p>

<p><i>IF THIS PART OF THE uADD™ IS LEFT BLANK, I DO NOT WANT TO DESIGNATE A HEALTHCARE AGENT AT THIS TIME, AND I DO NOT WANT A DEFAULT HEALTHCARE AGENT DESIGNATED FOR ME UNDER APPLICABLE LAW. I TRUST THE DOCTORS AND NURSES TREATING ME TO MAKE MEDICAL TREATMENT DECISIONS REGARDING MY TREATMENT AND CARE.</i></p>

<p>I am appointing the person or persons below as my healthcare agent and, if applicable, as my alternate healthcare agent(s), and I am granting to each of them the legal authority to make medical treatment decisions on my behalf and to consult with my physician and others.  The power to make medical treatment decisions that I am granting to my healthcare agent(s) is expressly subject to, and limited by, the choices that I have expressed elsewhere in my uADD.  If my medical treatment choices are not clear, I am authorizing and directing my healthcare agent to make decisions in my best interests and based on what is known of my wishes.</p>

<p><b>Primary Healthcare Agent</b></p>
<p>The person I choose as my Primary Healthcare Agent is:</p>
<p><i>Sally Bobbins</i></p>
<p><i>SallyBobbins@example.com</i></p>
<p><i>[SELECTED to act as a healthcare agent on 3/23/2018, at 9:13 AM CST]</i></p>
<p><i>[As of 12/6/2019, at 1:11 AM CDT, a response is still PENDING]</i></p>


<p><b>First Alternate Healthcare Agent</b></p>
<p>If this healthcare agent is unable or unwilling to make medical treatment decisions for me, or if my spouse is designated as my primary healthcare agent and our marriage is annulled, or we are divorced or legally separated, then my next choice for a healthcare agent is:</p>
<p><i>S. Leonard Susskind (Friend)</i></p>
<p><i>ssuskind@example.com</i></p>
<p><i>[SELECTED to act as a healthcare agent on 3/23/2018, at 9:13 AM CST]</i></p>
<p><i>[ACCEPTED to act as a healthcare agent on 3/23/2018, at 9:14 AM CST]</i></p>


<p><b>My Healthcare Agent’s General Authority</b></p>
<p>Subject to my medical treatment choices expressed elsewhere in this uADD™ and applicable law that requires otherwise, <i>I grant to my healthcare agent the power to make all choices and medical treatment decisions for me.</i></p>

<p>Here are some specific instructions that expand or limit the powers I have just granted to my healthcare agent(s):</p>
<ul>
	<li>If my healthcare agent's decisions conflict with my instructions, <i>I want my healthcare agent's decisions to take priority.</i></li>
	<li>If I cannot express my own wishes for medical treatment, <i>I would like the doctors treating me, as well as my healthcare agent if I have chosen one, to make decisions based as much as possible and appropriate on my instructions below.</i></li>
	<li>If at some point in the future I am declared incompetent, <i>I DO NOT want to be allowed to override these preferences. I want my doctors to follow the preferences I express in this document.</i></li>
</ul>

<p>Unless I have stated otherwise somewhere else in this uADD™, I understand that my healthcare agent may reconsider my medical treatment choices expressed above in light of my other instructions contained elsewhere in this uADD™ or new medical information.</p>

</div>"

* section[healthcare_agent_appointment].entry[+] = Reference(Example-McBee-HealthcareAgent1)
* section[healthcare_agent_appointment].entry[+] = Reference(Example-McBee-HealthcareAgent2)
// will need to add HCA authority when the profile is created


// Line 1011
* section[gpp_personal_care_experience].title = "Patient Goals, Preferences, and Priorities for Care Experience"
* section[gpp_personal_care_experience].code = $LOINC#81338-6 "Patient Goals, Preferences, and Priorities for Care Experience"
* section[gpp_personal_care_experience].text.status = #additional
* section[gpp_personal_care_experience].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">

<p><i>MyDirectives® offers people a list of optional questions that can be answered by typing text in a text box or by uploading a video or audio file for each question. Only those questions answered by Roger Rienman McBee appear here. For a complete list of questions in My Thoughts, please visit www.MyDirectives.com.</i></p>

<p><b>In case I’m being cared for by a person(s) who doesn't know me very well, I’d like my following thoughts to be known.</b></p>

<p><b>My likes / joys:</b> Here are some examples of the things that I would like to have near me, music that I’d like to hear, and other details of my care that would help to keep me happy and relaxed:</p>
<p><i>Like Bach, especially the cantatas.  St. Martin in the Fields</i></p>
<p> </p>
<p><b>How to care for me:</b> If I become incapacitated and cannot express myself, here is what I would like to tell my healthcare agent, family and friends about how I would like for them to care for me:</p>
<p><i>I don’t like being treated like an object. I would like to be greeted like a person before working on me.</i></p>
<p> </p>
<p><b>Please attempt to notify someone from my religion at the following phone number:</b> (If I have included one)</p>
<p><i>Not Religious</i></p>
<p> </p>
<p><b>My unfinished business:</b> If it appears that I am approaching the end of my life, and I cannot communicate with persons around me, I would want my doctors and nurses, my family, and my friends to know about some unfinished business that I need to address:</p>
<p><i>I am awaiting a message from the Noble Committee. Please keep me alive if I look promising this year.</i></p>
</div>"
* section[gpp_personal_care_experience].entry[+] = Reference(Example-McBee-CareExperiencePreference1)
* section[gpp_personal_care_experience].entry[+] = Reference(Example-McBee-CareExperiencePreference2)
* section[gpp_personal_care_experience].entry[+] = Reference(Example-McBee-CareExperiencePreference3)
* section[gpp_personal_care_experience].entry[+] = Reference(Example-McBee-CareExperiencePreference4)



// Line 477
* section[gpp_for_end_of_life_or_severely_dibilitating_condition].title = "Goals, Priorities, and Preferences for End of Life or a Severely Dibilitating Condition"
* section[gpp_for_end_of_life_or_severely_dibilitating_condition].code = $LOINC#81336-0 "Patient Goals, Preferences, and Priorities Under Certain Health Conditions"
* section[gpp_for_end_of_life_or_severely_dibilitating_condition].text.status = #additional
* section[gpp_for_end_of_life_or_severely_dibilitating_condition].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>My Advance Care Goals</b></p>

<p>If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me:</p>
<ol>
	<li><i>Being at peace with my God</i></li>
	<li><i>Dying at home</i></li>
	<li><i>Being able to feed, bathe, and take care of myself</i></li>
	<li><i>Being free from pain</i></li>
	<li><i>Resolving conflicts</i></li>
	<li><i>Being with my family</i></li>
	<li><i>Not being a financial burden to my family</i></li>
</ol>

<p>If I am having significant pain or suffering, <i>I would like my doctors to consult a Supportive and Palliative Care Team to help treat my physical, emotional and spiritual discomfort, and to support my family.</i></p>

<p><b>My Preferences in Specific Circumstances</b></p>
    
<p>In addition to the general advance care goals provided above, below are specific treatment preferences with respect to certain specific circumstances or situations.</p>
<p> </p>
<p>If my health ever deteriorates due to a terminal illness, and my doctors believe I will not be able to interact meaningfully with my family, friends, or surroundings, <i>I prefer that they stop all life-sustaining treatments and let me die as gently as possible.  I realize that I will not receive life-sustaining treatments including but not limited to breathing machines, blood transfusions, dialysis, heart machines, and IV drugs to keep my heart working.  I also realize that medical personnel will not attempt cardiopulmonary resuscitation (CPR), and they will allow me to die naturally.</i></p>
<p> </p>
<p>If my response above indicates that I do not want life-sustaining treatments,</p>
<p>I expressly authorize my attending physician to withhold or withdraw artificial nutrition and hydration and instruct my healthcare agent (or, if I have not designated a healthcare agent, my default surrogate), my family and the doctors and nurses who are taking care of me to respect this request.</p>
<p> </p>

<p>If I have a severe, irreversible brain injury or illness and can’t dress, feed, or bathe myself, or communicate my medical wishes, but doctors can keep me alive in this condition for a long period of time, <i>I would like for them to keep trying life-sustaining treatments for 2 months.</i></p>
<p> </p>
<p>Although I understand that, depending on the situation and circumstances, medical personnel may not be able to follow my wishes, here are my general thoughts on cardiopulmonary resuscitation (CPR):</p>
<p><i>I do not want CPR attempted.</i></p>
<p><i>I want my healthcare agent to make the decision, but if my chances are slim to none that I'll leave the hospital, even if they resuscitate me, then I absolutely do not want CPR.</i></p>
<p> </p>

<p><b>Other Instructions</b></p>
<p>If it were possible to choose, here is where I would like to spend my final days:</p>
<p><i>At home.I would like to receive hospice care at home if possible.</i></p>
</div>"


// entries starting on 566
* section[gpp_for_end_of_life_or_severely_dibilitating_condition].entry[+] = Reference(Example-McBee-PersonalPrioritiesOrganizer1)
* section[gpp_for_end_of_life_or_severely_dibilitating_condition].entry[+] = Reference(Example-McBee-PersonalInterventionPreference1)
* section[gpp_for_end_of_life_or_severely_dibilitating_condition].entry[+] = Reference(Example-McBee-PersonalInterventionPreference2)
* section[gpp_for_end_of_life_or_severely_dibilitating_condition].entry[+] = Reference(Example-McBee-PersonalInterventionPreference3)
* section[gpp_for_end_of_life_or_severely_dibilitating_condition].entry[+] = Reference(Example-McBee-PersonalInterventionPreference4)
* section[gpp_for_end_of_life_or_severely_dibilitating_condition].entry[+] = Reference(Example-McBee-PersonalInterventionPreference5)
* section[gpp_for_end_of_life_or_severely_dibilitating_condition].entry[+] = Reference(Example-McBee-PersonalInterventionPreference6)
* section[gpp_for_end_of_life_or_severely_dibilitating_condition].entry[+] = Reference(Example-McBee-PersonalInterventionPreference7)




// Line 477
* section[gpp_upon_death].title = "Goals, Preferences and Priorities upon Death"
* section[gpp_upon_death].code = $LOINC#81337-8 "Patient Goals, Preferences, and Priorities Upon Death"
* section[gpp_upon_death].text.status = #additional
* section[gpp_upon_death].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">

<p><b>Consent to Donate</b></p>

<p><i>I don’t want to donate my organs.</i></p>
<p> </p>
<p><b>Autopsy</b></p>
<p><i>I want an autopsy if my doctor thinks it will help others.</i></p>

<p><b>Here are my thoughts on funeral or burial plans:</b></p>
<p>If I were to pass away: <i>I have a plot. My wife has the details, also my secretary, Ms. Williams, will know.</i></p>

</div>"

* section[gpp_upon_death].entry[+] = Reference(Example-McBee-OrganDonationObservation1)
* section[gpp_upon_death].entry[+] = Reference(Example-McBee-AutopsyObservation1)
* section[gpp_upon_death].entry[+] = Reference(Example-McBee-PersonalInterventionPreference8)



// Line 1205
* section[administrative_information].title = "Witnesses and Notary"
* section[administrative_information].code = $LOINC#81339-4 "Witness and Notary Document"
* section[administrative_information].text.status = #additional
* section[administrative_information].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">


<p><b>I am emotionally and mentally competent to make this uADD.  I understand the purpose and effect of this uADD, I agree with everything that is written in this uADD, and I have made this uADD knowingly, willingly and after careful deliberation.</b></p>


<table>
    <tbody>
        <tr>
            <td><b>Signature:</b></td>
            <td>Roger R. McBee</td>
        </tr>
        <tr>
            <td><b>Date:</b></td>
            <td>8/28/2018</td>
        </tr>
    </tbody>
</table>
<p> </p>
<p><b>Statement of Witnesses</b></p>
<p> </p>
<p>I declare that the person who signed this uADD, or who asked another to sign this uADD on his/her behalf, is the individual identified in the document, and he/she did so in my presence or otherwise provided satisfactory proof to me of his/her identity. I believe him/her to be of sound mind and at least 18 years of age. I personally witnessed him/her sign this document or ask the person indicated to do so, or I received proof of his/her identity that I believe is adequate, and I believe that he/she did so voluntarily.  By signing this document as a witness, I certify that I am:</p>

<ol>
    <li>At least 18 years of age.</li>
    <li>Not related to the person signing this document by blood, marriage or adoption.</li>
    <li>Not a healthcare agent appointed by the person signing this document.</li>
    <li>Not directly financially responsible for that person’s healthcare.</li>
    <li>Not a healthcare provider directly serving the person at this time.</li>
    <li>Not an employee (other than a social worker or chaplain), officer, director, or partner of a healthcare provider (or any parent organization of such healthcare provider) directly serving the person at this time.</li>
    <li>Not aware that I am entitled to or have a claim against the person’s estate.</li>
</ol>
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
			<td>Date:</td>
			<td></td>
		</tr>
	</tbody>
</table>

</div>"


// Participant examples
// Healthcare Agent examples

Instance: Example-McBee-HealthcareAgent1
InstanceOf: PADIHealthcareAgent
Description: "Example Patient McBee Healthcare Agent (Sally Bobbins)"
Usage: #example
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>Primary Healthcare Agent</b></p>
<p>The person I choose as my Primary Healthcare Agent is:</p>
<p><i>Sally Bobbins</i></p>
<p><i>SallyBobbins@example.com</i></p>
<p><i>[SELECTED to act as a healthcare agent on 3/23/2018, at 9:13 AM CST]</i></p>
<p><i>[As of 12/6/2019, at 1:11 AM CDT, a response is still PENDING]</i></p>
</div>"

* patient = Reference(Example-McBee-Patient1)
* relationship[0] = $LOINC#75783-1 "Primary Healthcare Agent [Reported]"

* name[0].family = "Sally"
* name[0].given[0] = "Bobbins"
* telecom[0].system = #email
* telecom[0].value = "SallyBobbins@example.com"
* telecom[0].use = #home



Instance: Example-McBee-HealthcareAgent2
InstanceOf: PADIHealthcareAgent
Description: "Example Patient McBee Healthcare Agent (S. Leaonard Susskind)"
Usage: #example
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>First Alternate Healthcare Agent</b></p>
<p>If this healthcare agent is unable or unwilling to make medical treatment decisions for me, or if my spouse is designated as my primary healthcare agent and our marriage is annulled, or we are divorced or legally separated, then my next choice for a healthcare agent is:</p>
<p><i>S. Leonard Susskind (Friend)</i></p>
<p><i>ssuskind@example.com</i></p>
<p><i>[SELECTED to act as a healthcare agent on 3/23/2018, at 9:13 AM CST]</i></p>
<p><i>[ACCEPTED to act as a healthcare agent on 3/23/2018, at 9:14 AM CST]</i></p>
</div>"

* patient = Reference(Example-McBee-Patient1)
* relationship[0] = $LOINC#75784-9 "First Alternate Healthcare Agent [Reported]"
* relationship[1] = $HL7RoleCode#FRND "unrelated friend"

* name[0].family = "S. Leonard"
* name[0].given[0] = "Susskind"
* telecom[0].system = #email
* telecom[0].value = "ssuskind@example.com"
* telecom[0].use = #home



// Observations
// Care Experience Preferences
Instance: Example-McBee-CareExperiencePreference1
InstanceOf: PADICareExperiencePreference
Description: "Example Patient McBee Care Experience Preference (My Joys)"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>My likes / joys:</b> Here are some examples of the things that I would like to have near me, music that I’d like to hear, and other details of my care that would help to keep me happy and relaxed:</p>
<p><i>Like Bach, especially the cantatas.  St. Martin in the Fields</i></p>
</div>"
* status = #final
* code = $LOINC#81360-0 "My Likes and Joys [Reported]"
* valueString = "Here are some examples of the things that I would like to have near me, music that I’d like to hear, and other details of my care that would help to keep me happy and relaxed: Like Bach, especially the cantatas.  St. Martin in the Fields"



Instance: Example-McBee-CareExperiencePreference2
InstanceOf: PADICareExperiencePreference
Description: "Example Patient McBee Care Experience Preference (How to care for me)"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>How to care for me:</b> If I become incapacitated and cannot express myself, here is what I would like to tell my healthcare agent, family and friends about how I would like for them to care for me:</p>
<p><i>I don’t like being treated like an object. I would like to be greeted like a person before working on me.</i></p>
</div>"
* status = #final
* code = $LOINC#81380-8 "Goals, Preferences, and Priorities for Care Experience [Reported]"
* valueString = "How to care for me: If I become incapacitated and cannot express myself, here is what I would like to tell my healthcare agent, family and friends about how I would like for them to care for me: I don’t like being treated like an object. I would like to be greeted like a person before working on me."


Instance: Example-McBee-CareExperiencePreference3
InstanceOf: PADICareExperiencePreference
Description: "Example Patient McBee Care Experience Preference (Religious affiliation contact)"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p> </p>
<p><b>Please attempt to notify someone from my religion at the following phone number:</b> (If I have included one)</p>
<p><i>Not Religious</i></p>
</div>"
* status = #final
* code = $LOINC#81365-9 "Religious Affiliation Contact to Notify [Reported]"
* valueString = "Please attempt to notify someone from my religion at the following phone number: If I have included one - Not Religious"

Instance: Example-McBee-CareExperiencePreference4
InstanceOf: PADICareExperiencePreference
Description: "Example Patient McBee Care Experience Preference (My unfinished business)"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>My unfinished business:</b> If it appears that I am approaching the end of my life, and I cannot communicate with persons around me, I would want my doctors and nurses, my family, and my friends to know about some unfinished business that I need to address:</p>
<p><i>I am awaiting a message from the Noble Committee. Please keep me alive if I look promising this year.</i></p>
</div>"
* status = #final
* code = $LOINC#81366-7 "Unfinished business [Reported]"
* valueString = "If it appears that I am approaching the end of my life, and I cannot communicate with persons around me, I would want my doctors and nurses, my family, and my friends to know about some unfinished business that I need to address: I am awaiting a message from the Noble Committee. Please keep me alive if I look promising this year."






// Personal Priorities Organizer

Instance: Example-McBee-PersonalPrioritiesOrganizer1
InstanceOf: PADIPersonalPrioritiesOrganizer
Description: "Example Patient McBee Personal Priorities Organizer"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p>If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me:</p>
<ol>
	<li><i>Being at peace with my God</i></li>
	<li><i>Dying at home</i></li>
	<li><i>Being able to feed, bathe, and take care of myself</i></li>
	<li><i>Being free from pain</i></li>
	<li><i>Resolving conflicts</i></li>
	<li><i>Being with my family</i></li>
	<li><i>Not being a financial burden to my family</i></li>
</ol>
</div>"

* status = #current
* mode = #working
* title = "My Advance Care Goals"
* code = $LOINC#81340-2 "Goals AndOr Preferences in Order of Priority [Reported]"
* orderedBy = http://terminology.hl7.org/CodeSystem/list-order#priority
* entry[0].item = Reference(Example-McBee-PersonalHealthGoal1)
* entry[1].item = Reference(Example-McBee-PersonalHealthGoal2)
* entry[2].item = Reference(Example-McBee-PersonalHealthGoal3)
* entry[3].item = Reference(Example-McBee-PersonalHealthGoal4)
* entry[4].item = Reference(Example-McBee-PersonalHealthGoal5)
* entry[5].item = Reference(Example-McBee-PersonalHealthGoal6)
* entry[6].item = Reference(Example-McBee-PersonalHealthGoal7)


// Health Goal Examples
Instance: Example-McBee-PersonalHealthGoal1
InstanceOf: PADIPersonalHealthGoal
Description: "Example Patient McBee Personal Health Goal 1"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me:</b></p>
<p><i>Being at peace with my God</i></p>
</div>"
* lifecycleStatus = #proposed
* category = $LOINC#81378-2 "Goals, preferences, and priorities under certain health conditions [Reported]"
* description.text = "If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me: Being at peace with my God"
* subject = Reference(Example-McBee-Patient1)


Instance: Example-McBee-PersonalHealthGoal2
InstanceOf: PADIPersonalHealthGoal
Description: "Example Patient McBee Personal Health Goal 2"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me:</b></p>
<p><i>Dying at home</i></p>
</div>"
* lifecycleStatus = #proposed
* category = $LOINC#81378-2 "Goals, preferences, and priorities under certain health conditions [Reported]"
* description.text = "If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me: Dying at home"
* subject = Reference(Example-McBee-Patient1)


Instance: Example-McBee-PersonalHealthGoal3
InstanceOf: PADIPersonalHealthGoal
Description: "Example Patient McBee Personal Health Goal 3"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me:</b></p>
<p><i>Being able to feed, bathe, and take care of myself</i></p>
</div>"
* lifecycleStatus = #proposed
* category = $LOINC#81378-2 "Goals, preferences, and priorities under certain health conditions [Reported]"
* description.text = "If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me:  Being able to feed, bathe, and take care of myself"
* subject = Reference(Example-McBee-Patient1)


Instance: Example-McBee-PersonalHealthGoal4
InstanceOf: PADIPersonalHealthGoal
Description: "Example Patient McBee Personal Health Goal 4"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me:</b></p>
<p><i>Being free from pain</i></p>
</div>"
* lifecycleStatus = #proposed
* category = $LOINC#81378-2 "Goals, preferences, and priorities under certain health conditions [Reported]"
* description.text = "If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me: Being free from pain"
* subject = Reference(Example-McBee-Patient1)



Instance: Example-McBee-PersonalHealthGoal5
InstanceOf: PADIPersonalHealthGoal
Description: "Example Patient McBee Personal Health Goal 5"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me:</b></p>
<p><i>Resolving conflicts</i></p>
</div>"
* lifecycleStatus = #proposed
* category = $LOINC#81378-2 "Goals, preferences, and priorities under certain health conditions [Reported]"
* description.text = "If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me: Resolving conflicts"
* subject = Reference(Example-McBee-Patient1)



Instance: Example-McBee-PersonalHealthGoal6
InstanceOf: PADIPersonalHealthGoal
Description: "Example Patient McBee Personal Health Goal 6"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me:</b></p>
<p><i>Being with my family</i></p>
</div>"
* lifecycleStatus = #proposed
* category = $LOINC#81378-2 "Goals, preferences, and priorities under certain health conditions [Reported]"
* description.text = "If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me: Being with my family"
* subject = Reference(Example-McBee-Patient1)



Instance: Example-McBee-PersonalHealthGoal7
InstanceOf: PADIPersonalHealthGoal
Description: "Example Patient McBee Personal Health Goal 7"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me:</b></p>
<p><i>Not being a financial burden to my family</i></p>
</div>"
* lifecycleStatus = #proposed
* category = $LOINC#81378-2 "Goals, preferences, and priorities under certain health conditions [Reported]"
* description.text = "If I am so sick or seriously injured that I cannot express my own medical treatment preferences, and if I am not expected to live without additional treatment for my illness, disease, condition or injury, then I want my medical care team to know that these are the things that are most important to me: Not being a financial burden to my family"
* subject = Reference(Example-McBee-Patient1)


// Personal Intervention Preferences
Instance: Example-McBee-PersonalInterventionPreference1
InstanceOf: PADIPersonalInterventionPreference
Description: "Example Patient McBee Personal Intervention Preference (Palliative Care)"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p>If I am having significant pain or suffering, <i>I would like my doctors to consult a Supportive and Palliative Care Team to help treat my physical, emotional and spiritual discomfort, and to support my family.</i></p>
</div>"
* status = #final
* code = $LOINC#75776-5 "Preference on consulting a supportive and palliative care team to help treat physical, emotional, and spiritual discomfort and support family [Reported]"
* valueString = "If I am having significant pain or suffering, I would like my doctors to consult a Supportive and Palliative Care Team to help treat my physical, emotional and spiritual discomfort, and to support my family."



Instance: Example-McBee-PersonalInterventionPreference2
InstanceOf: PADIPersonalInterventionPreference
Description: "Example Patient McBee Personal Intervention Preference (Terminal Illness Health Deterioration)"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p>If my health ever deteriorates due to a terminal illness, and my doctors believe I will not be able to interact meaningfully with my family, friends, or surroundings, <i>I prefer that they stop all life-sustaining treatments and let me die as gently as possible.  I realize that I will not receive life-sustaining treatments including but not limited to breathing machines, blood transfusions, dialysis, heart machines, and IV drugs to keep my heart working.  I also realize that medical personnel will not attempt cardiopulmonary resuscitation (CPR), and they will allow me to die naturally.</i></p>
</div>"
* status = #final
* code = $LOINC#75777-3 "Information to tell doctors if my health deteriorates due to a terminal illness and I am unable to interact meaningfully with family, friends, or surroundings [Reported]"
* valueString = "If my health ever deteriorates due to a terminal illness, and my doctors believe I will not be able to interact meaningfully with my family, friends, or surroundings, I prefer that they stop all life-sustaining treatments and let me die as gently as possible.  I realize that I will not receive life-sustaining treatments including but not limited to breathing machines, blood transfusions, dialysis, heart machines, and IV drugs to keep my heart working.  I also realize that medical personnel will not attempt cardiopulmonary resuscitation (CPR), and they will allow me to die naturally."


Instance: Example-McBee-PersonalInterventionPreference3
InstanceOf: PADIPersonalInterventionPreference
Description: "Example Patient McBee Personal Intervention Preference (Artificial Nutrition and Hydration)"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p>If my response above indicates that I do not want life-sustaining treatments,</p>
<p>I expressly authorize my attending physician to withhold or withdraw artificial nutrition and hydration and instruct my healthcare agent (or, if I have not designated a healthcare agent, my default surrogate), my family and the doctors and nurses who are taking care of me to respect this request.</p>
</div>"
* status = #final
* code = $LOINC#77352-3 "Thoughts on artificial nutrition and hydration [Reported]"
* valueString = "If my response above indicates that I do not want life-sustaining treatments, I expressly authorize my attending physician to withhold or withdraw artificial nutrition and hydration and instruct my healthcare agent (or, if I have not designated a healthcare agent, my default surrogate), my family and the doctors and nurses who are taking care of me to respect this request."


Instance: Example-McBee-PersonalInterventionPreference4
InstanceOf: PADIPersonalInterventionPreference
Description: "Example Patient McBee Personal Intervention Preference (Severe Illness or Injury)"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p>If I have a severe, irreversible brain injury or illness and can’t dress, feed, or bathe myself, or communicate my medical wishes, but doctors can keep me alive in this condition for a long period of time, <i>I would like for them to keep trying life-sustaining treatments for 2 months.</i></p>
</div>"
* status = #final
* code = $LOINC#75778-1 "Information to tell doctors if I have a severe, irreversible brain injury or illness and can't dress, feed, or bathe myself, or communicate my medical wishes, but can be kept alive [Reported]"
* valueString = "If I have a severe, irreversible brain injury or illness and can’t dress, feed, or bathe myself, or communicate my medical wishes, but doctors can keep me alive in this condition for a long period of time, I would like for them to keep trying life-sustaining treatments for 2 months."


Instance: Example-McBee-PersonalInterventionPreference5
InstanceOf: PADIPersonalInterventionPreference
Description: "Example Patient McBee Personal Intervention Preference (Thoughts on CPR 1)"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p>Although I understand that, depending on the situation and circumstances, medical personnel may not be able to follow my wishes, here are my general thoughts on cardiopulmonary resuscitation (CPR):</p>
<p><i>I want my healthcare agent to make the decision, but if my chances are slim to none that I'll leave the hospital, even if they resuscitate me, then I absolutely do not want CPR.</i></p>
</div>"
* status = #final
* code = $LOINC#75779-9 "Thoughts on cardiopulmonary resuscitation (CPR) [Reported]"
* valueString = "Although I understand that, depending on the situation and circumstances, medical personnel may not be able to follow my wishes, here are my general thoughts on cardiopulmonary resuscitation (CPR): I do not want CPR attempted."


Instance: Example-McBee-PersonalInterventionPreference6
InstanceOf: PADIPersonalInterventionPreference
Description: "Example Patient McBee Personal Intervention Preference (THoughts on CPR 2)"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p>Although I understand that, depending on the situation and circumstances, medical personnel may not be able to follow my wishes, here are my general thoughts on cardiopulmonary resuscitation (CPR):</p>
<p><i>I want my healthcare agent to make the decision, but if my chances are slim to none that I'll leave the hospital, even if they resuscitate me, then I absolutely do not want CPR.</i></p>
</div>"
* status = #final
* code = $LOINC#75779-9 "Thoughts on cardiopulmonary resuscitation (CPR) [Reported]"
* valueString = "Although I understand that, depending on the situation and circumstances, medical personnel may not be able to follow my wishes, here are my general thoughts on cardiopulmonary resuscitation (CPR): I want my healthcare agent to make the decision, but if my chances are slim to none that I'll leave the hospital, even if they resuscitate me, then I absolutely do not want CPR."


Instance: Example-McBee-PersonalInterventionPreference7
InstanceOf: PADIPersonalInterventionPreference
Description: "Example Patient McBee Personal Intervention Preference (Preferred Location for Last Days)"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p>If it were possible to choose, here is where I would like to spend my final days:</p>
<p><i>At home.I would like to receive hospice care at home if possible.</i></p>
</div>"
* status = #final
* code = $LOINC#75780-7 "Preferred location to spend final days if possible to choose [Reported]"
* valueString = "If it were possible to choose, here is where I would like to spend my final days: At home.I would like to receive hospice care at home if possible."



Instance: Example-McBee-PersonalInterventionPreference8
InstanceOf: PADIPersonalInterventionPreference
Description: "Example Patient McBee Personal Intervention Preference (Death arrangements)"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>Here are my thoughts on funeral or burial plans:</b></p>
<p>If I were to pass away: <i>I have a plot. My wife has the details, also my secretary, Ms. Williams, will know.</i></p>
</div>"
* status = #final
* code = $LOINC#81356-8 "Death arrangements [Reported]"
* valueString = "Here are my thoughts on funeral or burial plans: If I were to pass away:</b> <i>I have a plot. My wife has the details, also my secretary, Ms. Williams, will know."


//Organ Donation Observation examples


Instance: Example-McBee-OrganDonationObservation1
InstanceOf: PADIOrganDonationObservation
Description: "Example Patient McBee Organ Donation Observation 1"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>Consent to Donate</b></p>
<p><i>I don’t want to donate my organs.</i></p>
</div>"
* status = #final
* code = $LOINC#75781-5 "Thoughts on organ and tissue donations [Reported]"
* valueString = "Consent to Donate: I don’t want to donate my organs."


// Autopsy Observation examples

Instance: Example-McBee-AutopsyObservation1
InstanceOf: PADIAutopsyObservation
Description: "Example Patient McBee Autopsy Observation (Thoughts Regarding Autopsy)"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
<p><b>Autopsy</b></p>
<p><i>I want an autopsy if my doctor thinks it will help others.</i></p>
</div>"
* status = #final
* code = $LOINC#75782-3 "Thoughts regarding autopsy [Reported]"
* valueString = "Autopsy: I want an autopsy if my doctor thinks it will help others."


// Organization Examples

Instance: Example-McBee-OrganizationCustodian1
InstanceOf: $USCoreOrganization
Description: "Example Patient McBee Custodian Organization"
Usage: #example

* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "44444"
* active = true
* name = "MyDirectives.com"

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
Instance: Example-McBee-OrganizationAssembler1
InstanceOf: $USCoreOrganization
Description: "Example Patient McBee Assembler Organization"
Usage: #example

* identifier.system = "urn:oid:1.3.6.1.4.1.42424242.4.99930.4"
* identifier.value = "4"
* active = true
* name = "ADVault, Inc."

* telecom[0].system = #phone
* telecom[0].value = "+1(202)776-7700"
* telecom[0].use = #work

* address[0].type = http://hl7.org/fhir/address-type#physical
* address[0].line[0] = "740 E. Campbell Rd. Suite 825"
* address[0].city = "Richardson"
* address[0].state = "TX"
* address[0].postalCode = "75081"
* address[0].country = "US"





// Provenance Examples

Instance: Example-McBee-PACPProvenance1
InstanceOf: PADIProvenance
Description: "Example Patient McBee Provenance"
Usage: #example

* target = Reference(Example-McBee-PACPComposition1)
* recorded = "2019-12-06T10:11:30.001-04:00"

* agent[assembler].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#assembler "Assembler"
* agent[assembler].who = Reference(Example-McBee-OrganizationAssembler1)

