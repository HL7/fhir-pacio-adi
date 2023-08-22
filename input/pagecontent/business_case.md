[//]: #  ## Business Case
<p>
The Advance Directive interoperability (ADI) business case covers representing, exchanging, and verifying advance directive information, encounter-centric patient instructions, and portable medical orders for life-sustaining treatment. 
</p>
<p>
Advance directive information content may include information relating to the appointment of a healthcare agent and alternate agents and establishing their authorized powers and limitations. It also may include information relating to any or all of the following: goals, preferences, and priorities for medical interventions (<i>e.g.</i> palliative and/or hospice care), including medical treatment preferences, based on the patient’s individual values, spiritual and religious beliefs, and personal definitions of quality of life; instructions to be followed after death (<i>e.g.</i> organ donation and autopsy); and information about who has signed, witnessed, and notarized the information authored by the individual, if available and appropriate. Advance directive information is used to support future-oriented care and treatment planning. The business case for this content is to support the creation and exchange of this patient-created information with an emphasis on communication, as opposed to legal formalities.
</p>
<p>
Encounter-centric patient instructions content is established by a practitioner regarding treatments that restore, sustain, or prolong a patient’s life and lead to medical orders. These types of medical orders are intended to be consistent with the patient’s instructions and wishes. Orders to perform or not perform specific types of life-sustaining treatments are documented by physicians as medical orders within the EMR system used by the organization providing medical interventions or the practitioner’s EMR and are specific to an encounter. The business case emphasizes how information is communicated. The clinical workflow around the legal formalities and acknowledgement is not addressed in this IG.
</p>
<p>
Portable Medical Orders for Life-Sustaining Treatment content are medical orders regarding life-sustaining treatment produced in a portable format. The business case for this content is to support the creation and exchange details that are documented and meant to be shared between different organizations. The business use case has an emphasis on communication, as opposed to legal formalities.
</p>
<p>
In this ADI business case, advance directive content created and updated will be represented using FHIR resources. The exchange of the content will use FHIR RESTful operations to make available and share advance directive information. Verification will also use FHIR RESTful operations to determine if the advance directive content you have is current.
</p>
<p>
This initial ADI FHIR IG will only address the business case for advance directive information. Future versions of this FHIR IG will address encounter-centric patient instructions and portable medical orders for life-sustaining treatment.
</p>
