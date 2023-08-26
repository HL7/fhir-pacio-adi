
CodeSystem: ADIHCADecisionsCS
Title: "Healthcare Agent Decision Codes"
Description: "Codes indicating decisions a healthcare agent may or may not make on behalf of an individual."
* #intubation "Intubation" "Request or reject intubation on behalf of the patient"
* #tube-feeding "Tube feeding" "Request or reject tube feeding on behalf of the patient"
* #life-support "Life support" "Request or reject life support on behalf of the patient"
* #iv-fluid-and-support "IV fluid and support" "Request or reject IV fluid and support on behalf of the patient"
* #antibiotics "Antibiotics" "Request or reject intubation on behalf of the patient"
* #cpr "Cardiopulmonary Resuscitation (CPR)" "Request or reject cardiopulmonary Resuscitation (CPR) on behalf of the patient"
* #resuscitation-non-cpr "Non-CPR Resuscitation" "Request or reject resuscitation that differs from cardiopulmonary resuscitation on behalf of the patient"
* ^caseSensitive = true
* ^experimental = false
* ^copyright = "This CodeSystem is not copyrighted."

CodeSystem: ADIPreferenceCategoryCS
Title: "ADI Goal Category Code System"
Description: "Advance Directive Preference Category"
* #intervention-preference "Intervention preference" "A personal preference for a type of medical intervention (treatment) request under certain conditions."
* #care-experience-preference "Care experience preference" "Personal thoughts about something a person feels is relevant to their care experience and may be pertinent when planning their care."
* ^caseSensitive = true
* ^experimental = false
* ^copyright = "This CodeSystem is not copyrighted."

CodeSystem: ADIConsentCategoryCS
Title: "ADI Consent Category Code System"
Description: "This value set includes sample Consent Directive Type codes, including several consent directive related LOINC codes; HL7 VALUE SET: ActConsentType(2.16.840.1.113883.1.11.19897); examples of US realm consent directive legal descriptions and references to online and/or downloadable forms such as the SSA-827 Authorization to Disclose Information to the Social Security Administration; and other anticipated consent directives related to participation in a clinical trial, medical procedures, reproductive procedures; health care directive (Living Will); advance directive, do not resuscitate (DNR); Physician Orders for Life-Sustaining Treatment (POLST)."
* ^caseSensitive = true
* ^experimental = false
* ^copyright = "This CodeSystem is not copyrighted."
* #acd "Advance Directive" "Any instructions, written or given verbally by a patient in anticipation of potential need for medical treatment."
* #dnr "Do Not Resuscitate" "A legal document, signed by both the patient and their provider, stating a desire not to have CPR initiated in case of a cardiac event. Note: This form was replaced in 2003 with the Physician Orders for Life-Sustaining Treatment [POLST]."
* #emrgonly "Emergency Only" "Opt-in to disclosure of health information for emergency only consent directive. Comment: This general consent directive specifically limits disclosure of health information for purpose of emergency treatment. Additional parameters may further limit the disclosure to specific users, roles, duration, types of information, and impose uses obligations. [ActConsentDirective (2.16.840.1.113883.1.11.20425)]"
* #hcd "Health Care Directive" "Patient's document telling patient's health care provider what the patient wants or does not want if the patient is diagnosed as being terminally ill and in a persistent vegetative state or in a permanently unconscious condition.[2005 Honor My Wishes]"
* #npp "Notice of Privacy Practices" "Acknowledgement of custodian notice of privacy practices. Usage Notes: This type of consent directive acknowledges a custodian's notice of privacy practices including its permitted collection, access, use and disclosure of health information to users and for purposes of use specified. [ActConsentDirective (2.16.840.1.113883.1.11.20425)]"
* #pmo "Portable Medical Order" "A portable medical record (PMO) form records a person's health care wishes for end of life emergency treatment and translates them into an order by the physician. It must be reviewed and signed by both the patient and the physician, Advanced Registered Nurse Practitioner or Physician Assistant."
* #research "Research Information Access" "Consent to have healthcare information in an electronic health record accessed for research purposes. [VALUE SET: ActConsentType (2.16.840.1.113883.1.11.19897)]"
* #rsdid "De-identified Information Access" "Consent to have de-identified healthcare information in an electronic health record that is accessed for research purposes, but without consent to re-identify the information under any circumstance. [VALUE SET: ActConsentType (2.16.840.1.113883.1.11.19897)"
* #rseid "Re-identifiable Information Access" "Consent to have de-identified healthcare information in an electronic health record that is accessed for research purposes re-identified under specific circumstances outlined in the consent. [VALUE SET: ActConsentType (2.16.840.1.113883.1.11.19897)]"