ADI FHIR artifacts are clearer to understand when organized in the context of their document types, sections, and components. 


### Profiles

The table below summarizes the relevant profiles and elements by ADI Content Types:

<table border="1">
    <tr>
        <th colspan="3" style="background-color: #DEEBF7; text-align:center; padding: 10px; padding: 10px;"><b>CONTENT TYPE I: Patient-authored Advance Directive Information</b></th>
    </tr>
    <tr style="background-color: #D9D9D9;">
        <th style="padding: 10px;" colspan="1" rowspan="15"><b>PACP Document</b></th>
        <th style="padding: 10px;" colspan="1"><b>Section</b></th>
        <th style="padding: 10px;"><b>Elements or Profile References</b></th>
    </tr>
        <td style="padding: 7px;">header information</td>
        <td style="padding: 7px;">
            <ul>
                <li><i>date</i></li>
                <li><i>type</i></li>
                <li><i>category</i></li>
                <li><i>subject</i></li>
                <li><i>author</i></li>
                <li><i>title</i></li>
                <li><i>custodian</i></li>
                <li><i>text</i></li>
            </ul>
        </td>
    </tr>
    <tr>
        <td style="padding: 7px;">healthcare_agent (LNC 81335-2)</td>
        <td style="padding: 7px;">
            <ul>
                <li><a href="StructureDefinition-ADI-HealthcareAgentConsent.html">ADI Participant Consent</a></li>
                <li><a href="StructureDefinition-ADI-HealthcareAgentParticipant.html">ADI Participant</a></li>
            </ul>
        </td>
    </tr>
    <tr>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PACPComposition.html">ADI PtAuthored Composition</a></td>
        <td style="padding: 7px;"><p>This profile encompasses information that makes up the author’s advance care planning information.</p></td>
    </tr>
    <tr>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-HealthcareAgentParticipant.html">ADI Participant</a></td>
        <td style="padding: 7px;"><p>This profile represents a person participating in a person's advance directives in some designated capacity such as healthcare agent or healthcare agent advisor.</p></td>
    </tr>
    <tr>    
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-HealthcareAgentConsent.html">ADI Participant Consent</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent the author’s consent for an ADI participant such as a healthcare agent or advisor and can include powers granted to, or limitations imposed upon, such persons.</p></td>
    </tr>
    <tr>    
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-DocumentationObservation.html">ADI Documentation Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to indicate if additional advance directive documents, such as physician order for life sustaining treatment (MOLST or POLST) or Do Not Resuscitate Order (DNR) exist and a reference to the document.</p></td>
    </tr>
    <tr>    
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PersonalInterventionPreference.html">ADI ADI PtAuthored Personal Intervention Preference</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent personal medical intervention preferences under certain health conditions.</p></td>
    </tr>
    <tr>    
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-CareExperiencePreference.html">ADI PtAuthored Care Experience Preference</a></td>
        <td style="padding: 7px;"><p>This profile is used to express the author's personal thoughts about something he or she feels is relevant to his or her care experience which can be important to know when planning or delivering his or her care.</p></td>
    </tr>
    <tr>    
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PersonalGoal.html">ADI PtAuthored Personal Goal</a></td>
        <td style="padding: 7px;"><p>This profile is a statement that presents the author's personal health goals that are important to be mindful of when planning his or her care.</p></td>
    </tr>
    <tr>    
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PersonalPrioritiesOrganizer.html">ADI Personal Priorities Organizer</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent a set of personal goals, preferences or care experiences in a preferred ranked order.</p></td>
    </tr>
    <tr>    
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-OrganDonationObservation.html">ADI Organ Donation Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent the author's thoughts about organ donation.</p></td>
    </tr>
    <tr>    
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-AutopsyObservation.html">ADI Autopsy Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent the author's thoughts about autopsy.</p></td>
    </tr>
    <tr>    
       <td style="padding: 7px;"><a href="StructureDefinition-ADI-PreferenceCarePlan.html">ADI PtAuthored Care Plan</a></td>
        <td style="padding: 7px;"><p>The Preference Care Plan is a means for an individual to express their goals and preferences under certain circumstances that may be pertinent when planning his or her care.</p></td>
    </tr>
    <tr>    
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-Provenance.html">ADI Provenance</a></td>
        <td style="padding: 7px;"><p>Advance Directive Interoperability Provenance based on US Core to capture, search and fetch provenance information associated with advance directive interoperability data.</p></td>
    </tr>
    <tr>
        <th colspan="4" style="background-color: #9DC3E6; text-align:center; padding: 10px; padding: 10px;"><b>CONTENT TYPE II: Encounter-Centric Patient Instructions</b> <i>(after STU2)</i></th>
    </tr>
    <tr style="background-color: #D9D9D9;">
        <th style="padding: 10px;" colspan="2"><b>Profile Name</b></th>
        <th style="padding: 10px;"><b>Short description</b></th>
        <th style="padding: 10px;"><b>Based On</b></th>
    </tr>
    <tr>
        <td style="padding: 7px;"><a href="#">ADI Obligation Instruction</a></td>
        <td style="padding: 7px;"><p>This profile always expresses activities that care providers have been instructed by the person or their healthcare agent to perform.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/consent.html">Consent</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;"><a href="#">ADI Prohibition Instruction</a></td>
        <td style="padding: 7px;"><p>This profile always expresses activities that care providers have been instructed by the person or their healthcare agent not to perform.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/consent.html">Consent</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;"><a href="#">Advance Directives Organizer</a></td>
        <td style="padding: 7px;"><p>This profile groups a set of ADI observations documented together at a single point in time and are ONLY relevant during the episode of care being documented.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/list.html">List</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;"><a href="#">ADI Advance Directives Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to record information about ADI authored by the person which contains goals, preferences, and priorities for care.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;"><a href="#">ADI Advance Care Planning Intervention</a></td>
        <td style="padding: 7px;"><p>This profile is used to record a planned intervention that will involve reviewing and verifying a person’s goals, preferences or priorities for treatment or will involve educating and supporting a person on establishing or modifying his or her ADI.</p></td>
        <td style="padding: 7px;"><a href="https://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-procedure.html">US Core Procedure</a></td>
    </tr>
    <tr>
        <th colspan="4" style="background-color: #478FD1; text-align:center; padding: 10px; padding: 10px;"><b>CONTENT Type III: Portable Medical Orders (PMO)</b> <i>(STU2)</i></th>
    </tr>
    <tr style="background-color: #D9D9D9;">
        <th style="padding: 10px;" colspan="2"><b>Profile Name</b></th>
        <th style="padding: 10px;"><b>Short description</b></th>
        <th style="padding: 10px;"><b>Based On</b></th>
    </tr>
    <tr>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PMOComposition.html">ADI PMO Composition</a></td>
        <td style="padding: 7px;"><p>This profile encompasses information that makes up a practitioner's portable medical order.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/composition.html">Composition</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PMOCarePlan.html">ADI PMO Care Plan</a></td>
        <td style="padding: 7px;"><p>This profile is used to specify the plan of care that represents the persons wishes, preferences, and experiences as documented in the PMO.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/careplan.html">Care Plan</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PMOServiceRequest.html">ADI PMO ServiceRequest</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent a practitioner authored portable medical order.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/servicerequest.html">Care Plan</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PMOHospiceObservation.html">ADI PMO Hospice Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent a finding that the individual is under hospice care.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PMOParticipantObservation.html">ADI PMO Participant Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent the portable medical orders participant observation.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PMOReviewObservation.html">ADI PMO Review Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent the review status of the portable medical order.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>  
    <tr>
        <td style="padding: 7px;">ADI Consent for Portable Medical Orders</td>
        <td style="padding: 7px;"><p>This profile is used to express the person, or their healthcare agent’s, consent that is not bound by an encounter.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/consent.html">Consent</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">ADI Consent for DNR Orders</td>
        <td style="padding: 7px;"><p>This profile is used to express the patient’s or healthcare agent consent that is not bound by an encounter.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/consent.html">Consent</a></td>
    </tr>
    <tr>
        <th colspan="4" style="background-color: #FFF2CC; text-align:center; padding: 10px; padding: 10px;"><b>Sharing Documents</b></th>
    </tr>
    <tr style="background-color: #D9D9D9;">
        <th style="padding: 10px;" colspan="2"><b>Name of Profile to be developed</b></th>
        <th style="padding: 10px;"><b>Short description</b></th>
        <th style="padding: 10px;"><b>Based On</b></th>
    </tr>
    <tr>
        <td style="padding: 7px;"><a href="#">ADI Consent to Share</a></td>
        <td style="padding: 7px;"><p>This profile is used to enable someone else to act on their behalf if they are unable to do so themselves.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/consent.html">Consent</a></td>
    </tr>
</table>


#### Globals Profiles

{% include globals-table.xhtml %}