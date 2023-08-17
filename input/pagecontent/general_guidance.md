
This section provides additional guidance on the relationship between the associated profiles and the structure of the advance directive document.

### Structure and Resource Relationships

Advance directive documents may take several forms including scanned PDF documents, CDA documents, other binary documents, and native FHIR documents (using the Composition and other ADI-specific profiled FHIR resources). This guide defines interoperability to support all of these types and other potential document types (through encoding in a Binary resource). Today, most of these documents are shared through scanned images. This implementation guide is designed to allow a range of digitization levels, from scanned documents to fully discrete FHIR documents. Additionally, this guide provides the capability for different types of data to be more digitized than others inside the same document. 

All documents, regardless of format are saved in the Binary resource and are available through the Binary endpoint. FHIR native documents **SHALL** be Bundle resources with `type` = `document` and encoded as a Binary resource. Documents that are communicated **SHALL** have at least one DocumentReference resource that references the Binary though the `DocumentReference.content.attachment.url`.

The DocumentReference is the resource that is used for "indexing" of documents and can be used for searching and finding documents with specific attributes such as type of document, subject, or dates.

<img src="./ADI_profile_resource_relationships.png" alt="Profile & Resource relationships"  style="width: 100%; float: none; align: middle;"/>

Digital signatures are defined as optional in this guide. If supported, the digital signature will be a captured in a Binary resource that is referenced by an additional DocumentReference resource.

### Document Structure

ADI FHIR native documents are instances of the Bundle resource with the `type` = `document`. The document should have all content contained within the Bundle with no external references except for the references to external documents in the [DocumentationObservation](StructureDefinition-PADI-DocumentationObservation.html).focus. FHIR Bundle documents consist of multiple entry resources within it, with the first entry being a Composition resource. The Composition resource acts as the header and organizational construct. It contains information about the document such as the category of document, dates, and references to the various participants of the document, as well as document sections used to categorize or organize the contained entries.

The Advance Directive Interoperability document defines 7 sections:
1. Healthcare Agent - Healthcare agents, healthcare agent advisors, and consent regarding their roles, powers, and limitations
2. Goals, Preferences, and Priorities for Certain Healthcare Conditions - Preference CarePlans that contain the person's goals to be considered active under specific situations or conditions
3. Goals, Preferences, and Priorities Personal Care Experience - Quality of Life related personal care experiences, personal goals, and priorities
4. Goals, Preferences, and Priorities Upon Death - Goals, preferences, and priorities a person has at the time of or soon after there death
5. Additional Documentation - Observations regarding the existence of other advance directive related information
6. Witness & Notary - References and information regarding witnesses and notary
7. Administrative Information - Administrative information associated with this personal advance care plan

<img src="./ADI_DocumentStructure.png" alt="Advance Directive Document Structure"  style="width: 100%; float: none; align: middle;"/>

#### Clause Extension
Advance directives documents often have additional information or clauses related to specific areas of the document. This may include things like additional information about the conditions under which a healthcare agent has been selected, whether a healthcare agent has been notified of or accepted their role as such, or other information that provides context to the data otherwise expressed in the sections or entries of a document. To support this information this guide has defined a [Clause extension](StructureDefinition-padi-clause-extension.html)) to all of the Composition sections and various profiles and elements.
