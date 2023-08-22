
/*
ValueSet: PADIAdvanceDirectiveCategoriesVS
Title: "Advance Directive Categories"
Description: "Kinds of Advance Directives

This ValueSet is managed at the US National Library of Medicine (NLM) Value Set Authority Center (VSAC): https://vsac.nlm.nih.gov/valueset/2.16.840.1.113883.11.20.9.69.4/expansion"
* ^experimental = false
* include $LOINC#64298-3 "Power of attorney"
* include $LOINC#81334-5 "Patient Personal advance care plan"
* include $LOINC#86533-7 "Patient Living will"
* include $LOINC#92664-2 "Power of attorney and Living will"
* insert LOINCCopyrightNotice
*/

/*
ValueSet: PADIConsentActorRoleVS
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

ValueSet: PADIConsentTypeVS
Title: "Consent Type"
Description: "Codes indicating type of advance directive consents."
* ^experimental = false
* include $LOINC#81335-2 "Patient Healthcare agent" // "Healthcare agents identified with no powers or limitations specified"
* include $LOINC#75786-4 "Powers granted to healthcare agent [Reported]" // "Healthcare agents identified with powers granted specified"
* include $LOINC#81346-9 "Limitations placed on healthcare agent [Reported]" // "Healthcare agents identified with limitations placed specified"
* include $LOINC#81343-6 "Healthcare agent advisor [Reported]"
* insert LOINCCopyrightNotice


ValueSet: PADIPersonalAndLegalRelationshipRoleTypeVS
Title: "Personal And Legal Relationship Role Type"
Description: "Clinical Focus: A personal or legal relationship records the role of a person in relation to another person, or a person to himself or herself. This value set is to be used when recording relationships based on personal or family ties or through legal assignment of responsibility."
* ^experimental = false
* codes from system $HL7RoleCode


ValueSet: PADIHealthGoalsVS
Title: "Health Goals"
Description: "Clinical Focus: This value set includes concepts representing an individual's goals at end of life which can be expressed by the individual in his or her advance care plan.),(Data Element Scope: The intent of this value set is to identify personal goals that may be relevant and could be considered by clinicians when making a treatment/care plan for the person.),(Inclusion Criteria: Include member value sets for Health Goals at end of life for LOINC and SNOMED CT.),(Exclusion Criteria: None.

This ValueSet is managed at the US National Library of Medicine (NLM) Value Set Authority Center (VSAC): https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1115.7/expansion"
* ^experimental = false
* include $LOINC#81378-2 "Goals, preferences, and priorities under certain health conditions [Reported]"
* include $LOINC#87528-6 "Personal health goal"
* include PADIGoalCategoryCS#personal-goal "Personal goal"
* insert LOINCCopyrightNotice


/*
ValueSet: PADICareExperiencePreferencesVS
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
* include PADIGoalCategoryCS#care-experience-preference "Care experience preference"
* insert LOINCCopyrightNotice
*/



ValueSet: PADIInterventionPreferencesVS
Title: "Intervention Preferences"
Description: "Clinical Focus: This value set includes concepts representing an individual's intervention preferences which can be expressed by the individual in his or her advance care plan.),(Data Element Scope: The intent of this value set is to identify personal intervention preferences that may be relevant and could be considered by clinicians or any person or organization that is providing care, treatment, or performing any other type of act to or on behalf of the individual.)"
* ^experimental = false
// * codes from valueset PADIInterventionPreferencesOrdinalVS
* codes from valueset $PADIInterventionPreferencesEndOfLifeGrouping
* include PADIGoalCategoryCS#intervention-preference "Intervention preference"
* insert LOINCCopyrightNotice


ValueSet: PADIInterventionPreferencesOrdinalVS
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




/*
ValueSet: PADIInterventionPreferencesEndOfLifeGroupingVS
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

ValueSet: PADIHCADecisionsVS
Title: "Healthcare Agent Decisions"
Description: "Codes indicating decisions a healthcare agent may or may not make on behalf of an individual."
* ^experimental = false
* codes from system PADIHCADecisionsCS
* include $LOINC#81347-7 "Consent for healthcare agent to deviate from stated goals, preferences and priorities [Reported]"
* include $LOINC#81344-4 "Healthcare agent authority to inspect and disclose mental and physical health information [Reported]"
* include $LOINC#81345-1 "Healthcare agent authority to inspect and disclose specially protected health information [Reported]"

* insert LOINCCopyrightNotice



/*
ValueSet: PADIAutopsyVS
Title: "Autopsy Thoughts"
Description: "This value set includes the concept representing an individual's thoughts on autopsy after death."
* include $LOINC#75782-3 "Thoughts regarding autopsy [Reported]"
* insert LOINCCopyrightNotice


ValueSet: PADIOrganDonationVS
Title: "Organ Donation"
Description: "This value set includes the concept representing an individual's thoughts on organ and tissue donation after death."
* include $LOINC#75781-5 "Thoughts on organ and tissue donations [Reported]"
* insert LOINCCopyrightNotice
*/

ValueSet: PADINoHealthcareAgentIncludedReasonVS
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



ValueSet: PADIAttesterRoleTypeVS
Title: "Attester Role"
Description: "Codes indicating a role of an attester."
* ^experimental = false
* include $LOINC#81372-5 "Notary"
* include $LOINC#81369-1 "First witness"
* include $LOINC#81370-9 "Second witness"
* include $LOINC#81371-7 "Third witness"
* insert LOINCCopyrightNotice



// TODO Rename -  Advance Directive Documentation Types  

ValueSet: PADIDocumentationTypeVS
Title: "Documentation Types"
Description: "Types of Documents"
* ^experimental = false
* include $LOINC#81352-7 "Medical Order for Life-Sustaining Treatment, Physician Order for Life-Sustaining Treatment, or a similar medical order is in place [Reported]"
* include $LOINC#81351-9 "Do Not Resuscitate, Do Not Attempt Resuscitation, or Allow Natural Death order is in place [Reported]"
* include $LOINC#75320-2 "Advance directive"
//* include $LOINC#81375-8 "Self assessment of health status [Reported]"
//* include $LOINC#81354-3 "Prescribed anticipatory medication [Reported]"
* include $SNOMEDCT#304253006 "Not for resuscitation"
* include $SNOMEDCT#714748000 "Has advance care plan"
* include codes from system $SNOMEDCT where concept is-a #425392003 "Active advance directive"
* include codes from system $SNOMEDCT where concept is-a #423876004 "Clinical document"
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc

This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"

/*
CodeSystem: PADIGoalCategoryVS
Title: "ADI Goal Category Value Set"
Description: "Advance Directive Goal Categories"
* codes from codesystem PADIGoalCategoryCS
*/

RuleSet: LOINCCopyrightNotice
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"

RuleSet: SNOMEDCopyrightNotice
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"

