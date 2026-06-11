
### Document Lifecycle Managment

Healthcare documents are not static files sitting in a folder. They evolve, version, move between systems, gain or lose authority, become replaced or revoked.  Healthcare documents, also called “clinical documents”, are a durable collection of clinical/legal assertions traveling through a distributed trust and policy ecosystem. A clinical document represents an attestable snapshot of information at a point in time, even though the underlying healthcare record may continue to evolve. These documents must remain discoverable and trustworthy over long periods of time. 

Document life cycle management is best thought of as a living and breathing system. 

Clinical documents have six key characteristics:

- **Persistence** – A clinical document continues to exist in an unaltered state, for a time period defined by local and regulatory requirements. (NOTE: The persistence of the clinical document concept is distinct from the persistence of any individual XML-encoded CDA document instance used to represent it.)
- **Stewardship** – A clinical document is maintained by an organization entrusted with its care.
- **Potential for authentication** - A clinical document is an assemblage of information that is intended to be legally authenticated.
- **Context** - A clinical document establishes the default context for its contents.
- **Wholeness** - Authentication of a clinical document applies to the whole and does not apply to portions of the document without the full context of the document.
- **Human readability** – A clinical document is human readable.

To manage clinical documents safely and reliably across distributed systems and over time, three foundational capabilities are required:

- Persistent identity 
- Lifecycle status management 
- Metadata indexing and discovery

Together, persistent identity, lifecycle status management, and metadata indexing form the foundational capabilities required to safely manage healthcare documents over time.

These mechanisms allow healthcare systems to preserve historical integrity, maintain longitudinal continuity, support legal and clinical trust, and enable reliable information exchange across distributed healthcare ecosystems.

Clinical documents therefore represent more than static files or exchanged messages. They are durable clinical/legal assertions whose identity, status, discoverability, and authority must be continuously managed throughout their lifecycle within a distributed trust and policy ecosystem.

#### Persistent Identity

To identify a document over time, a document’s identity needs to support two fundamental needs:
1.	It must identify the enduring clinical/legal collection of information as it evolves over time. This enduring concept is called the “logical document.” An identifier that serves this purpose is called a version-independent identifier. 
2.	It must identify each specific version of the logical document as it existed at various points in time. This immutable snapshot is called the “document instance.” An identifier that serves this purpose is called a version-specific identifier. Once created and published, a document instance represents an immutable historical snapshot of the logical document at that moment in time.

A document’s identifiers need to make it possible to move between these two ways of interacting with a document in an accurate way so that the version instances of a logical document can be processed and understood together in the correct temporal order to represent the logical document with fidelity.

For this reason, documents utilize two types of identifiers.  One identifier identifies a document instance, and another identifier identifies the logical document this document instance is a part of. The version independent identifier, called the “set id”, identifies the set of document instances that make up the logical document. Each document instances has an additional identifier called “versionNumber” which can be used to put the documents instances that make of the logical document in the right temporal order.

These document identifiers enable the document’s identity to be persistent over time. It is important to remember the persistence of a document identifier does not necessarily imply persistence of a fixed document artifact. Persistence of identity is distinct from persistence of content. A document with the same logical identity over time may contain different content over time.

Additionally, it is essential to recognize not all “registered healthcare documents” exist as persistent stored artifacts at the time they are indexed. Some “registered documents” represent the potential to generate a document dynamically when requested. These are commonly referred to as “On-Demand” documents. A “On-Demand” document does not actually exist although some metadata about it exists to enables its existence to be requested. 

When talking about a document’s identity it’s important to separate two different scenarios:

- existence of a frozen document artifact and its associated metadata,
- existence of metadata registration for a potential document, which if produced then becomes a frozen document artifact with its own associated metadata.

The document identifiers described above are associated with existing frozen document artifacts.

On-Demand documents will be explained further in the chapter on metadata indexing and discovery.

#### Document Status

Persistent identity allows healthcare systems to recognize and relate document instances across time as part of the same logical document. However, identity alone is insufficient to safely manage clinical documents over long periods of time.

Healthcare systems must also understand the current standing, authority, availability, and usability of a document as it evolves throughout its lifecycle. This is accomplished through the use of document status.

Document status provides important contextual meaning about a document instance and its relationship to the logical document over time. Status allows systems and users to determine whether a document:

- is still in development, 
- has become finalized, 
- has been amended or replaced, 
- is no longer considered current, 
- has been revoked, 
- or should be retained for historical or legal purposes only. 

Without lifecycle status management, systems may be unable to determine:

- which document instance represents the current version of the logical document, 
- whether a document should still be relied upon for patient care, 
- or whether a document’s authority has changed over time.

Document status is a complex topic that requires distinguishing between two related but separate concepts:

- the status associated with individual document instances (Composition.status in FHIR or ClinicalDocument.status in CDA) 
- the status associated with management of the logical document over time (DocumentReference.status in FHIR. Note that the CDA standard does not address document management, but CDA documents and all types of documents can be managed using FHIR document management capabilities enabled through the DocumentReference Resource.)

This is a subtle but very important distinction. A document instance may represent the current version of a logical document, or an instance may later become superseded by a newer document instance within the same logical document lineage.

This distinction is handled in document management systems through the use of distinct metadata.  The status of a document instance reflects its completion lifecycle as a snapshot artifact. The status associated with the logical document reflects the collective management state of the document instances that belong to that logical document lineage.

One key point to remember is that changes in document lifecycle status do not erase historical reality. A replaced document still exists. A revoked consent still once was an authorization to disclose information or perform a care intervention. An amended directive still may have influenced prior decisions. A deprecated document may still be legally relevant historically. 

Once published, a document instance remains a permanent historical artifact, even if its lifecycle status later changes. 

In practice, healthcare interoperability standards may use multiple overlapping status models. The list below shows the core "state" concepts relevant to document lifecycle management for an single instance of a document.

| Document Instance<br>"State" Status | Meaning |
|:-----------------------------------|:--------|
| Draft | Under development and not yet finalized |
| Final | Officially completed and available for use |
| Amended | Modified to correct or change prior content |
| Revoked | Authority or validity has been withdrawn |
| Deprecated | Retained for historical, legal, or audit purposes, but no longer recommended for current clinical use |
| Entered-in-Error | Wrongly created as part of the logical document |

The Draft state implies the document as not yet reached the state of being Final. States like Amended, Revoked, and Deprecated imply an earlier version (instance) of the document was Final at a prior time, Entered-in-Error asserts the document instance should never have existed as part of the logical document.

Each instance of a single logical document (each version) may have these lifecycle statuses associated with it:

| Logical Document<br>Lifecycle Status | Meaning |
|:-------------------------------------|:--------|
| Current | The current version of the logical document |
| Superseded | A prior instance of this logical document which has now been replaced by a newer version |
| Entered-in-Error | Wrongly created as part of the patient’s record |

When a new instance of a logical document (document version) replaces a prior version, the lifecycle status of the prior instance changes to “superseded”. This change does not alter the content or "state" status of that previously published document instance. A previous final version of a document may be replaced by a new final version of the same logical document. Both versions of the document reached a final state, but in the document's lifecycle, the older version is now superseded and the newer version is now current. Seeing the full history of the statuses and dates associated with prior versions of a document can paint a very accurate picture of a document's lifecycle.

One subtle but important insight: an entered-in-error status for a document instance often breaks the normal logical document lineage model. 

Version replacements usually occur in a temporal sequence as a logical document evolves over time. However, Entered-in-error status indicates that a document instance was not intended to participate in the logical document’s valid lifecycle progression. When superseded by a new final document, then the new correct version of the logical document will prevail. The new correct version of the logical document may in fact be the prior final version due to a "roll back" mechanism used when processing the version that was entered in error. An example might be marking a version of a document as final, then discovering it was signed by the wrong person, and so that version is marked entered-in-error, and replaced by a version signed correctly or rolled back to the previously correctly signed version. (Composition.status = entered-in-error and DocumentReference.status = superseded. A new or previous version of the logical document becomes current.)

When the entire logical document is marked entered-in-error it means the document should never have existed as part of the patient’s record in the first place. (Composition.status = entered-in-error and DocumentReference.status = entered-in-error.)

This distinction is architecturally important because it affects the expected functionality required to perform document management properly over time.

#### Metadata Indexing and Document Discovery

Persistent identity, document status, and lifecycle status management make it possible to understand what a document is and how it evolves over time. However, healthcare systems must also be able to discover, track, retrieve, and manage documents across distributed environments that may span multiple organizations, repositories, jurisdictions, and periods of time.

This capability is enabled through the use of metadata indexing and discovery mechanisms.

Rather than relying solely on the document content itself, document management systems maintain metadata that describes important characteristics of documents and their relationships over time. This metadata allows systems to:

- determine that a document exists, 
- identify the patient and care context associated with it, 
- understand the document’s type and lifecycle status, 
- locate where the document resides, 
- recognize relationships between document instances, 
- and determine whether the document should be retrieved or relied upon for patient care. 

Metadata indexing systems function as a continuously maintained catalog of document knowledge. In many cases, the indexing system may know that a document exists and understand important details about it, even when the document content itself is stored elsewhere or has not yet been generated.

In a FHIR document management server, the DocumentReference Resource holds the metadata associated with a document. The metadata commonly includes:

- document identifiers, 
- logical document identifiers, 
- version information, 
- document instance status (DocumentReference.docStatus),
- logical document lifecycle status (DocumentReference.status),
- document relationships, 
- document category (the generalized "kind" of document),
- document type (the specific type of document), 
- patient identity, 
- authorship and stewardship, 
- service and creation dates, 
- confidentiality and access control policies, 
- repository location information, 
- and discovery or retrieval instructions. 

This metadata enables healthcare systems to safely manage document lifecycles over long periods of time while supporting discoverability across distributed trust ecosystems. In some cases, the DocumentReference may include the document in available formats as attachments to the registry metadata entry.

Metadata indexing systems play a critical role in maintaining the lineage of logical documents as document instances evolve over time.

Through the use of identifiers, version tracking, lifecycle status, and document relationships, metadata indexing systems allow healthcare systems to:

- identify the current version of a logical document, 
- recognize prior historical versions, 
- detect replacement or amendment relationships, 
- understand revocation or entered-in-error conditions, 
- and maintain historical traceability without altering immutable document instances.

Without metadata indexing, document management would degrade into isolated collections of unrelated files with little ability to understand their clinical, legal, or temporal relationships.

##### On-Demand Documents

Metadata indexing systems also support a special category of registered documents known as On-Demand documents.

Unlike persistent document instances, an On-Demand document may not exist as a stored immutable artifact at the time it is indexed. Instead, the metadata registry contains information describing the capability to dynamically generate the document when requested.

This distinction is important because:
- the metadata registration may persist continuously over time, 
- while the generated document content may vary depending on the clinical data available at the moment of generation. 

Examples of On-Demand documents may include:

- dynamically generated patient summaries, 
- current medication lists, 
- longitudinal care summaries, 
- active consent views, 
- or real-time compilations of clinical information. 

In these cases, the metadata registry manages the persistent identity and discoverability of the document creation potential, even though a fixed document artifact may not yet exist.

##### Technical Note - Status values in FHIR R4

Status values in FHIR R4 utilize document revocation status values (revoked and deprecated) for Composition.status and DocumentReference.docStatus. Support for this backported terminology requires the status element to remain populated with the appropriate "completion status" value and then the additional "revocation status" is added in the extension status element (status.extension.status).