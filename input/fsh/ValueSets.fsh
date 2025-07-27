/*
ValueSet: ADIConsentTypeVS
Title: "Consent Type"
Description: "Codes indicating type of advance directive consents."
* ^experimental = false
* include $LOINC#81335-2 "Patient Healthcare agent" // "Healthcare agents identified with no powers or limitations specified"
* include $LOINC#75786-4 "Powers granted to healthcare agent [Reported]" // "Healthcare agents identified with powers granted specified"
* include $LOINC#81346-9 "Limitations placed on healthcare agent [Reported]" // "Healthcare agents identified with limitations placed specified"
* include $LOINC#81343-6 "Healthcare agent advisor [Reported]"
* insert LOINCCopyrightNotice
*/

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
* include $LOINC#42348-3 "Advance healthcare directives"
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

ValueSet: ADICompositionStatusVS
Title: "ADI Composition Status"
Description: "a document status backported from the FHIR R5 Composition status."
* ^experimental = false
* codes from system $HL7CompositionStatusR5  // mlt: updated to the valueset for FHIR R5 composition status.
* include $HL7CompositionStatusR5#preliminary
* include $HL7CompositionStatusR5#final
* include $HL7CompositionStatusR5#amended

ValueSet: ADIDocumentReferenceStatusVS
Title: "ADI Document Reference Status"
Description: "a document status backported from the FHIR R5 Document Reference Status."
* ^experimental = false
* codes from system $HL7DocumentReferenceStatusR5  

ValueSet: ADIDocumentRevokeStatusVS
Title: "ADI Document Revoke Status"
Description: "a document status backported from the FHIR R5 Composition status version which supports the revoked document use case."
* ^experimental = false
// * codes from system $HL7CompositionStatusR5  // mlt: updated to the valueset for FHIR R5 composition status.
* codes from system ADIRevokeStatusCS

ValueSet: ADIDMedicallyAssistedHydrationNutritionOrderVS
Title: "Medically Assisted Hydration Order"
Description: "Medically Assisted Hydration Order."
* ^experimental = false

ValueSet: ADIDMedicallyAssistedHydrationNutritionOrderGroupingVS
Title: "Medically Assisted Hydration Order Grouping"
Description: "Medically Assisted Hydration Order Grouping."
* ^experimental = false

ValueSet: ADIInitialTreatmentPMOOptionsVS
Title: "Initial Treatment Portable Medical Order Options"
Description: "Initial Treatment Portable Medical Order Options."
* ^experimental = false
* include codes from valueset $VSACADIInitialTreatmentPMOOptions
* include codes from valueset $VSACADIInitialTreatmentPMOOptionsGrouping

/* ********** RuleSets *********/

RuleSet: LOINCCopyrightNotice
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"

RuleSet: SNOMEDCopyrightNotice
* ^copyright = "* This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement

* The SNOMED International IPS Terminology is distributed by International Health Terminology Standards Development Organisation, trading as SNOMED International, and is subject the terms of the Creative Commons Attribution 4.0 International Public License. For more information, see SNOMED IPS Terminology

* The HL7 International IPS implementation guides incorporate SNOMED CT®, used by permission of the International Health Terminology Standards Development Organisation, trading as SNOMED International. SNOMED CT was originally created by the College of American Pathologists. SNOMED CT is a registered trademark of the International Health Terminology Standards Development Organisation, all rights reserved. Implementers of SNOMED CT should review usage terms or directly contact SNOMED International: info@snomed.org"
