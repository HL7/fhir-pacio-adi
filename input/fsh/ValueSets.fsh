
ValueSet: PADIAdvanceDirectiveCategoriesVS
Title: "Advance Directive Categories"
Description: "Kinds of Advance Directives

This ValueSet is managed at the US National Library of Medicine (NLM) Value Set Authority Center (VSAC): https://vsac.nlm.nih.gov/valueset/2.16.840.1.113883.11.20.9.69.4/expansion"
* include $LOINC#64298-3 "Power of attorney"
* include $LOINC#81334-5 "Patient Personal advance care plan"
* include $LOINC#86533-7 "Patient Living will"
* include $LOINC#92664-2 "Power of attorney and Living will"
* insert LOINCCopyrightNotice



ValueSet: PADIHealthcareAgentRelationshipVS
Title: "Healthcare Agent Relationships"
Description: "[TODO] This value set identifies the healthcare agent or proxy roles that individuals commonly designate to empower surrogates to make medical treatment and care decisions when the individual is unable to effectively communicate with medical personnel or requires assistance with decision making.

This ValueSet is managed at the US National Library of Medicine (NLM) Value Set Authority Center (VSAC): https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1046.35/expansion"
* codes from valueset PADIHealthcareAgentOrProxyChoicesVS
* codes from valueset PADIPersonalAndLegalRelationshipRoleTypeVS


ValueSet: PADIHealthcareAgentOrProxyChoicesVS
Title: "Healthcare Agent or Proxy Choices"
Description: "This value set identifies the healthcare agent or proxy roles that individuals commonly designate to empower surrogates to make medical treatment and care decisions when the individual is unable to effectively communicate with medical personnel or requires assistance with decision making.

This ValueSet is managed at the US National Library of Medicine (NLM) Value Set Authority Center (VSAC): https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1046.35/expansion"
* include $LOINC#75783-1 "Primary healthcare agent [Reported]"
* include $LOINC#75784-9 "First alternate healthcare agent [Reported]"
* include $LOINC#75785-6 "Second alternate healthcare agent [Reported]"
* include $LOINC#81335-2 "Patient Healthcare agent"
* insert LOINCCopyrightNotice


ValueSet: PADIPersonalAndLegalRelationshipRoleTypeVS
Title: "Personal And Legal Relationship Role Type"
Description: "Clinical Focus: A personal or legal relationship records the role of a person in relation to another person, or a person to himself or herself. This value set is to be used when recording relationships based on personal or family ties or through legal assignment of responsibility."
* codes from system $HL7RoleCode


ValueSet: PADIHealthGoalsVS
Title: "Health Goals"
Description: "Clinical Focus: This value set includes concepts representing an individual's goals at end of life which can be expressed by the individual in his or her advance care plan.),(Data Element Scope: The intent of this value set is to identify personal goals that may be relevant and could be considered by clinicians when making a treatment/care plan for the person.),(Inclusion Criteria: Include member value sets for Health Goals at end of life for LOINC and SNOMED CT.),(Exclusion Criteria: None.

This ValueSet is managed at the US National Library of Medicine (NLM) Value Set Authority Center (VSAC): https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1115.7/expansion"
* include $LOINC#81378-2 "Goals, preferences, and priorities under certain health conditions [Reported]"
* include $LOINC#87528-6 "Personal health goal"
* insert LOINCCopyrightNotice



ValueSet: PADICareExperiencePreferencesVS
Title: "Care Experience Preferences"
Description: "This value set includes concepts representing an individual's care experience preferences at end of life which can be expressed by the individual in his or her advance care plan),(Data Element Scope: The intent of this value set is to identify personal care experience preferences that may be relevant and could be considered by clinicians when making a treatment/care plan for the person.

This ValueSet is managed at the US National Library of Medicine (NLM) Value Set Authority Center (VSAC): https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1115.11/expansion"
* include $LOINC#75774-0 "Allowance to change advance directive preferences in the future regardless of mental state [Reported]"
* include $LOINC#75775-7 "Decision to inform doctors and nurses about the role religion, faith, or spirituality play in my life [Reported]"
* include $LOINC#75793-0 "Other directives that have not otherwise been documented [Reported]"
* include $LOINC#81359-2 "Near death thoughts and feelings to be shared [Reported]"
* include $LOINC#81360-0 "My likes and joys [Reported]"
* include $LOINC#81361-8 "Things that make me laugh [Reported]"
* include $LOINC#81362-6 "My dislikes and fears [Reported]"
* include $LOINC#81363-4 "Things that matter to me [Reported]"
* include $LOINC#81364-2 "Religious beliefs [Reported]"
* include $LOINC#81365-9 "Religious affiliation contact to notify [Reported]"
* include $LOINC#81366-7 "Unfinished business [Reported]"
* insert LOINCCopyrightNotice



ValueSet: PADIInterventionPreferencesVS
Title: "Intervention Preferences"
Description: "Clinical Focus: This value set includes concepts representing an individual's intervention preferences which can be expressed by the individual in his or her advance care plan.),(Data Element Scope: The intent of this value set is to identify personal intervention preferences that may be relevant and could be considered by clinicians or any person or organization that is providing care, treatment, or performing any other type of act to or on behalf of the individual.)"
* include $LOINC#75776-5 "Preference on consulting a supportive and palliative care team to help treat physical, emotional, and spiritual discomfort and support family [Reported]"
* include $LOINC#75777-3 "Information to tell doctors if my health deteriorates due to a terminal illness and I am unable to interact meaningfully with family, friends, or surroundings [Reported]"
* include $LOINC#75778-1 "Information to tell doctors if I have a severe, irreversible brain injury or illness and can't dress, feed, or bathe myself, or communicate my medical wishes, but can be kept alive [Reported]"
* include $LOINC#75780-7 "Preferred location to spend final days if possible to choose [Reported]"
* include $LOINC#75787-2 "Advance directive - request for intubation"
* include $LOINC#75788-0 "Advance directive - request for tube feeding"
* include $LOINC#75789-8 "Advance directive - request for life support"
* include $LOINC#75790-6 "Advance directive - request for IV fluid and support"
* include $LOINC#75791-4 "Advance directive - request for antibiotics"
* include $LOINC#75792-2 "Advance directive - request for resuscitation that differs from cardiopulmonary resuscitation"
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
* codes from valueset PADIUponDeathPreferencesVS
* insert LOINCCopyrightNotice



ValueSet: PADIUponDeathPreferencesVS
Title: "Upon Death Preferences"
Description: "This value set includes concepts representing an individual's preferences of treatment."
* include $LOINC#81356-8 "Death arrangements [Reported]"
* include $LOINC#81357-6 "Messages to be delivered after death [Reported]"
* include $LOINC#81358-4 "Person(s) to notify upon death [Reported]"
* include $LOINC#81366-7 "Unfinished business [Reported]"
* include $LOINC#81364-2 "Religious beliefs [Reported]"
* include $LOINC#81365-9 "Religious affiliation contact to notify [Reported]"
* insert LOINCCopyrightNotice

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




RuleSet: LOINCCopyrightNotice
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."


