ValueSet: ADIConsentTypeVS
Title: "Consent Type"
Description: "Codes indicating type of advance directive consents."
* ^experimental = false
* include $LOINC#81335-2 "Patient Healthcare agent" // "Healthcare agents identified with no powers or limitations specified"
* include $LOINC#75786-4 "Powers granted to healthcare agent [Reported]" // "Healthcare agents identified with powers granted specified"
* include $LOINC#81346-9 "Limitations placed on healthcare agent [Reported]" // "Healthcare agents identified with limitations placed specified"
* include $LOINC#81343-6 "Healthcare agent advisor [Reported]"
* insert LOINCCopyrightNotice

ValueSet: ADIPersonalAndLegalRelationshipRoleTypeVS
Title: "Personal And Legal Relationship Role Type"
Description: "Clinical Focus: A personal or legal relationship records the role of a person in relation to another person, or a person to himself or herself. This value set is to be used when recording relationships based on personal or family ties or through legal assignment of responsibility."
* ^experimental = false
* codes from system $HL7RoleCode

/* 
ValueSet: ADIInterventionPreferencesVS
Title: "Intervention Preferences"
Description: "Clinical Focus: This value set includes concepts representing an individual's intervention preferences which can be expressed by the individual in his or her advance care plan.),(Data Element Scope: The intent of this value set is to identify personal intervention preferences that may be relevant and could be considered by clinicians or any person or organization that is providing care, treatment, or performing any other type of act to or on behalf of the individual.)"
* ^experimental = false
// * codes from valueset ADIInterventionPreferencesOrdinalVS
* codes from valueset $VSACADIInterventionPreferencesEndOfLifeGrouping
* include ADIPreferenceCategoryCS#intervention-preference "Intervention preference"
* insert LOINCCopyrightNotice
*/

ValueSet: ADIInterventionPreferencesOrdinalVS
Title: "Intervention Preferences - Ordinal"
Description: "Clinical Focus: This value set includes concepts representing an individual's intervention preferences which can be expressed by the individual in his or her advance care plan.),(Data Element Scope: The intent of this value set is to identify personal intervention preferences that may be relevant and could be considered by clinicians or any person or organization that is providing care, treatment, or performing any other type of act to or on behalf of the individual.)"
* ^experimental = false
* include $LOINC#75787-2 "Advance directive - request for intubation"
* include $LOINC#75788-0 "Advance directive - request for tube feeding"
* include $LOINC#75789-8 "Advance directive - request for life support"
* include $LOINC#75790-6 "Advance directive - request for IV fluid and support"
* include $LOINC#75791-4 "Advance directive - request for antibiotics"
* include $LOINC#75792-2 "Advance directive - request for resuscitation that differs from cardiopulmonary resuscitation"
* insert LOINCCopyrightNotice


ValueSet: ADIHCADecisionsVS
Title: "Healthcare Agent Decisions"
Description: "Codes indicating decisions a healthcare agent may or may not make on behalf of an individual."
* ^experimental = false
* codes from system ADIHCADecisionsCS
* include $LOINC#81347-7 "Consent for healthcare agent to deviate from stated goals, preferences and priorities [Reported]"
* include $LOINC#81344-4 "Healthcare agent authority to inspect and disclose mental and physical health information [Reported]"
* include $LOINC#81345-1 "Healthcare agent authority to inspect and disclose specially protected health information [Reported]"
* insert LOINCCopyrightNotice


ValueSet: ADINoHealthcareAgentIncludedReasonVS
Title: "No Healthcare Agent Included Reason"
Description: "Includes data absent reason concepts to express why a Healthcare Agent is not included."
* ^experimental = false
* include $HL7AdataAbsentReason#unknown
* include $HL7AdataAbsentReason#asked-unknown
* include $HL7AdataAbsentReason#temp-unknown
* include $HL7AdataAbsentReason#not-asked
* include $HL7AdataAbsentReason#asked-declined
* include $HL7AdataAbsentReason#not-applicable
* include $HL7AdataAbsentReason#unsupported



ValueSet: ADIAttesterRoleTypeVS
Title: "Attester Role"
Description: "Codes indicating a role of an attester."
* ^experimental = false
* include $LOINC#81372-5 "Notary"
* include $LOINC#81369-1 "First witness"
* include $LOINC#81370-9 "Second witness"
* include $LOINC#81371-7 "Third witness"
* insert LOINCCopyrightNotice


ValueSet: ADIDocumentationTypeVS
Title: "Documentation Types"
Description: "Types of Documents"
* ^experimental = false
* include $LOINC#81352-7 "Medical Order for Life-Sustaining Treatment, Physician Order for Life-Sustaining Treatment, or a similar medical order is in place [Reported]"
* include $LOINC#81351-9 "Do Not Resuscitate, Do Not Attempt Resuscitation, or Allow Natural Death order is in place [Reported]"
* include $LOINC#42348-3 "Advance directives"
//* include $LOINC#81375-8 "Self assessment of health status [Reported]"
//* include $LOINC#81354-3 "Prescribed anticipatory medication [Reported]"
* include $SNOMEDCT#304253006 "Not for resuscitation"
* include $SNOMEDCT#714748000 "Has advance care plan"
* include codes from system $SNOMEDCT where concept is-a #425392003 "Active advance directive"
* include codes from system $SNOMEDCT where concept is-a #423876004 "Clinical document"
* insert LOINCCopyrightNotice
* insert SNOMEDCopyrightNotice

// LOINC PMO ValueSet lists

ValueSet: LOINCPOLSTCPRAnswerList
Title: "LOINC POLST CPR Answer List"
Description: "LOINC POLST CPR Answer List (LL6263-9)"

* ^experimental = false
* include $LOINC#LA33470-8  "Yes CPR"
* include $LOINC#LA33471-6  "No CPR: Do Not Attempt Resuscitation"
* insert LOINCCopyrightNotice


ValueSet: LOINCPOLSTInitialTxAnswerList
Title: "LOINC POLST Initial Tx Answer List"
Description: "LOINC POLST Initial Tx Answer List (LL6264-7)"

* ^experimental = false
* include $LOINC#LA33473-2 "Full Treatments"
* include $LOINC#LA33474-0 "Selective Treatments"
* include $LOINC#LA33475-7 "Comfort-focused Treatments"
* insert LOINCCopyrightNotice


ValueSet: LOINCPOLSTMedAssistNutrAnswerList
Title: "LOINC POLST Med assist nutr Answer List"
Description: "LOINC POLST Med assist nutr Answer List (LL6267-0)"

* ^experimental = false
* include $LOINC#LA33489-8 "Provide feeding through new or existing surgically-placed tubes"
* include $LOINC#LA33490-6 "Trial period for artificial nutrition but no surgically-placed tubes"
* include $LOINC#LA33491-4 "No artificial means of nutrition desired"
* include $LOINC#LA33492-2 "Not discussed or no decision made (provide standard of care)"
* insert LOINCCopyrightNotice

ValueSet: LOINCPOLSTReviewAnswerList
Title: "LOINC POLST review Answer List"
Description: "LOINC POLST review Answer List (LL6265-4)"

* ^experimental = false
* include $LOINC#LA33476-5 "Yes the document was reviewed"
* include $LOINC#LA33478-1 "Conflict exists, notified patient"
* include $LOINC#LA33479-9 "Advance directive not available"
* include $LOINC#LA33481-5 "No advance directive exists"
* insert LOINCCopyrightNotice

ValueSet: LOINCPOLSTDiscussPartAnswerList
Title: "LOINC POLST discuss part List"
Description: "LOINC POLST discuss part Answer List (LL6266-2)"

* ^experimental = false
* include $LOINC#LA33482-3 "Patient with decision-making capacity"
* include $LOINC#LA33483-1 "Court appointed guardian"
* include $LOINC#LA33485-6 "Parent of minor"
* include $LOINC#LA33487-2 "Legal surrogate/health care agent"
* include $LOINC#LA46-8 "Other"
* insert LOINCCopyrightNotice


ValueSet: ADIPMOConsentCategoriesVS
Title: "Portable Medical Order Categories"
Description: "Codes indicating Categories of Portable Medical Orders."
* ^experimental = false
* include $HL7ConsentCategoryCodes#dnr "Do Not Resuscitate"
* include $HL7ConsentCategoryCodes#polst "POLST"


/* ********** RuleSets *********/

RuleSet: LOINCCopyrightNotice
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"

RuleSet: SNOMEDCopyrightNotice
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"

/*
ValueSet: ADIConsentActorRoleVS
Title: "ADI Consent Actor Role"
Description: "This value set identifies the role the advance directive participant has, which could include: healthcare agent, proxy, or advisor roles that individuals commonly designate to empower surrogates to make medical treatment and care decisions when the individual is unable to effectively communicate with medical personnel or requires assistance with decision making.

This ValueSet is managed at the US National Library of Medicine (NLM) Value Set Authority Center (VSAC): https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1046.35/expansion"
* ^experimental = false
* include $LOINC#75783-1 "Primary healthcare agent [Reported]"
* include $LOINC#75784-9 "First alternate healthcare agent [Reported]"
* include $LOINC#75785-6 "Second alternate healthcare agent [Reported]"
* include $LOINC#81343-6 "Healthcare agent advisor [Reported]"
* insert LOINCCopyrightNotice
*/


/*
ValueSet: ADICareExperiencePreferencesVS
Title: "Care Experience Preferences"
Description: "This value set includes concepts representing an individual's care experience preferences at end of life which can be expressed by the individual in his or her advance care plan),(Data Element Scope: The intent of this value set is to identify personal care experience preferences that may be relevant and could be considered by clinicians when making a treatment/care plan for the person.

This ValueSet is managed at the US National Library of Medicine (NLM) Value Set Authority Center (VSAC): https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1115.11/expansion"
* ^experimental = false
* include $LOINC#75774-0 "Allowance to change advance directive preferences in the future regardless of mental state [Reported]"
* include $LOINC#75775-7 "Decision to inform doctors and nurses about the role religion, faith, culture, or spirituality play in my life [Reported]"
* include $LOINC#75793-0 "Other directives that have not otherwise been documented [Reported]"
* include $LOINC#81359-2 "Near death thoughts and feelings to be shared [Reported]"
* include $LOINC#81360-0 "My likes and joys [Reported]"
* include $LOINC#81361-8 "Things that make me laugh [Reported]"
* include $LOINC#81362-6 "My dislikes and fears [Reported]"
* include $LOINC#81363-4 "Things that matter to me [Reported]"
* include $LOINC#81364-2 "Religious or cultural beliefs [Reported]"
* include $LOINC#81365-9 "Religious or cultural affiliation contact to notify [Reported]'"
* include $LOINC#81366-7 "Unfinished business [Reported]"
* include ADIPreferenceCategoryCS#care-experience-preference "Care experience preference"
* insert LOINCCopyrightNotice
*/


/*
ValueSet: ADIInterventionPreferencesEndOfLifeGroupingVS
Title: "Intervention Preferences - Narrative"
Description: "Clinical Focus: This value set includes concepts representing an individual's intervention preferences which can be expressed by the individual in his or her advance care plan.),(Data Element Scope: The intent of this value set is to identify personal intervention preferences that may be relevant and could be considered by clinicians or any person or organization that is providing care, treatment, or performing any other type of act to or on behalf of the individual.)"
* ^experimental = false
* include $LOINC#75776-5 "Preference on consulting a supportive and palliative care team to help treat physical, emotional, and spiritual discomfort and support family [Reported]"
* include $LOINC#75777-3 "Information to tell doctors if my health deteriorates due to a terminal illness and I am unable to interact meaningfully with family, friends, or surroundings [Reported]"
* include $LOINC#75778-1 "Information to tell doctors if I have a severe, irreversible brain injury or illness and can't dress, feed, or bathe myself, or communicate my medical wishes, but can be kept alive [Reported]"
* include $LOINC#75780-7 "Preferred location to spend final days if possible to choose [Reported]"
* include $LOINC#75793-0 "Other directives that have not otherwise been documented [Reported]"
* include $LOINC#77352-3 "Thoughts on artificial nutrition and hydration [Reported]"
* include $LOINC#81329-5 "Thoughts on resuscitation [Reported]"
* include $LOINC#81330-3 "Thoughts on intubation [Reported]"
* include $LOINC#81331-1 "Thoughts on tube feeding [Reported]"
* include $LOINC#81332-9 "Thoughts on IV fluid and support [Reported]"
* include $LOINC#81333-7 "Thoughts on antibiotics [Reported]"
* include $LOINC#81349-3 "Thoughts on life-sustaining procedures if pregnant [Reported]"
* include $LOINC#81350-1 "Thoughts on pain management [Reported]"
* include $LOINC#81376-6 "Mental health treatment preferences [Reported]"
* include $LOINC#75779-9 "Thoughts on cardiopulmonary resuscitation (CPR) [Reported]"
* include $LOINC#81353-5 "Thoughts on hastening death [Reported]"
* codes from valueset $VSACUponDeathPreferences
* insert LOINCCopyrightNotice
*/

/*
ValueSet: ADIAutopsyVS
Title: "Autopsy Thoughts"
Description: "This value set includes the concept representing an individual's thoughts on autopsy after death."
* include $LOINC#75782-3 "Thoughts regarding autopsy [Reported]"
* insert LOINCCopyrightNotice


ValueSet: ADIOrganDonationVS
Title: "Organ Donation"
Description: "This value set includes the concept representing an individual's thoughts on organ and tissue donation after death."
* include $LOINC#75781-5 "Thoughts on organ and tissue donations [Reported]"
* insert LOINCCopyrightNotice
*/
