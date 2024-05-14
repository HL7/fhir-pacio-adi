ADI FHIR artifacts are clearer to understand when organized in the context of their document types, sections, and components. 


### Profiles

The table below describes the FHIR profiles relevant to each of the ADI Content Types.

<table border="1">
    <tr>
        <th colspan="4" style="background-color: #DEEBF7; text-align:center; padding: 10px; padding: 10px;"><b>CONTENT TYPE I: Advance Directive Information</b> <i>(in STU1 scope)</i></th>
    </tr>
    <tr style="background-color: #D9D9D9;">
        <th style="padding: 10px;" colspan="2"><b>Profile Name</b></th>
        <th style="padding: 10px;"><b>Short description</b></th>
        <th style="padding: 10px;"><b>Based On</b></th>
    </tr>
    <tr>
        <td style="padding: 7px;">1</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-DocumentReference.html">ADI Document Reference</a></td>
        <td style="padding: 7px;"><p>This profile defines constraints that represent the information needed to register an advance directive information document on a FHIR server.</p></td>
        <td style="padding: 7px;"><a href="https://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-documentreference.html">US Core DocumentReference</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">2</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-Composition-Header.html">ADI Header</a></td>
        <td style="padding: 7px;"><p>This profile defines constraints that represent common administrative and demographic concepts for advance directives information used in US Realm clinical documents.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/clinicaldocument.html">ClinicalDocument</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">3</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PACPComposition.html">ADI Personal Advance Care Plan Composition</a></td>
        <td style="padding: 7px;"><p>This profile encompasses information that makes up the author’s advance care planning information.</p></td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-Composition-Header.html">ADI Header</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">4</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-Participant.html">ADI Participant</a></td>
        <td style="padding: 7px;"><p>This profile represents a person participating in a person's advance directives in some designated capacity such as healthcare agent or healthcare agent advisor.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/relatedperson.html">RelatedPerson</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">5</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-ParticipantConsent.html">ADI Participant Consent</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent the author’s consent for an ADI participant such as a healthcare agent or advisor and can include powers granted to, or limitations imposed upon, such persons.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/consent.html">Consent</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">6</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-DocumentationObservation.html">ADI Documentation Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to indicate if additional advance directive documents, such as physician order for life sustaining treatment (MOLST or POLST) or Do Not Resuscitate Order (DNR) exist and a reference to the document.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">8</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PersonalInterventionPreference.html">ADI Personal Intervention Preference</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent personal medical intervention preferences under certain health conditions.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">9</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-CareExperiencePreference.html">ADI Care Experience Preference</a></td>
        <td style="padding: 7px;"><p>This profile is used to express the author's personal thoughts about something he or she feels is relevant to his or her care experience which can be important to know when planning or delivering his or her care.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">10</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PersonalGoal.html">ADI Personal Goal</a></td>
        <td style="padding: 7px;"><p>This profile is a statement that presents the author's personal health goals that are important to be mindful of when planning his or her care.</p></td>
        <td style="padding: 7px;"><a href="https://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-goal.html">US Core Goal</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">11</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PersonalPrioritiesOrganizer.html">ADI Personal Priorities Organizer</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent a set of personal goals, preferences or care experiences in a preferred ranked order.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/list.html">List</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">12</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-OrganDonationObservation.html">ADI Organ Donation Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent the author's thoughts about organ donation.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">13</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-AutopsyObservation.html">ADI Autopsy Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent the author's thoughts about autopsy.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">14</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PreferenceCarePlan.html">ADI Preference Care Plan</a></td>
        <td style="padding: 7px;"><p>The Preference Care Plan is a means for an individual to express their goals and preferences under certain circumstances that may be pertinent when planning his or her care.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/careplan.html">Care Plan</a></td>
    </tr>
    <tr>    
        <td style="padding: 7px;">15</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-Provenance.html">ADI Provenance</a></td>
        <td style="padding: 7px;"><p>Advance Directive Interoperability Provenance based on US Core to capture, search and fetch provenance information associated with advance directive interoperability data.</p></td>
        <td style="padding: 7px;"><a href="https://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-provenance.html">US Core Provenance</a></td>
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
        <td style="padding: 7px;">16</td>
        <td style="padding: 7px;"><a href="#">ADI Obligation Instruction</a></td>
        <td style="padding: 7px;"><p>This profile always expresses activities that care providers have been instructed by the person or their healthcare agent to perform.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/consent.html">Consent</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">17</td>
        <td style="padding: 7px;"><a href="#">ADI Prohibition Instruction</a></td>
        <td style="padding: 7px;"><p>This profile always expresses activities that care providers have been instructed by the person or their healthcare agent not to perform.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/consent.html">Consent</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">18</td>
        <td style="padding: 7px;"><a href="#">Advance Directives Organizer</a></td>
        <td style="padding: 7px;"><p>This profile groups a set of ADI observations documented together at a single point in time and are ONLY relevant during the episode of care being documented.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/list.html">List</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">19</td>
        <td style="padding: 7px;"><a href="#">ADI Advance Directives Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to record information about ADI authored by the person which contains goals, preferences, and priorities for care.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">20</td>
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
        <td style="padding: 7px;">21</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PMOComposition.html">ADI Portable Medical Order Composition</a></td>
        <td style="padding: 7px;"><p>This profile encompasses information that makes up a practitioner's portable medical order.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/composition.html">Composition</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">22</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PMOCarePlan.html">ADI Portable Medical Order Care Plan</a></td>
        <td style="padding: 7px;"><p>This profile is used to specify the plan of care that represents the persons wishes, preferences, and experiences as documented in the PMO.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/careplan.html">Care Plan</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">23</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PMOServiceRequest.html">ADI Portable Medical Order ServiceRequest</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent a practitioner authored portable medical order.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/servicerequest.html">Care Plan</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">24</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PMOHospiceObservation.html">ADI Portable Medical Order Hospice Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent a finding that the individual is under hospice care.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">25</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PMOParticipantObservation.html">ADI PMO Participant Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent the portable medical orders participant observation.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">26</td>
        <td style="padding: 7px;"><a href="StructureDefinition-ADI-PMOReviewObservation.html">ADI PMO Review Observation</a></td>
        <td style="padding: 7px;"><p>This profile is used to represent the review status of the portable medical order.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
    </tr>  
    <tr>
        <td style="padding: 7px;">27</td>
        <td style="padding: 7px;">ADI Consent for Portable Medical Orders</td>
        <td style="padding: 7px;"><p>This profile is used to express the person, or their healthcare agent’s, consent that is not bound by an encounter.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/consent.html">Consent</a></td>
    </tr>
    <tr>
        <td style="padding: 7px;">28</td>
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
        <td style="padding: 7px;">29</td>
        <td style="padding: 7px;"><a href="#">ADI Consent to Share</a></td>
        <td style="padding: 7px;"><p>This profile is used to enable someone else to act on their behalf if they are unable to do so themselves.</p></td>
        <td style="padding: 7px;"><a href="http://hl7.org/fhir/R4/consent.html">Consent</a></td>
    </tr>
</table>


#### Globals Profiles

{% include globals-table.xhtml %}