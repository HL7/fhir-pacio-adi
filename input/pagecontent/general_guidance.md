### General Guidance

This section defines additional requirements and guidance relevant to this guide as a whole. The conformance verbs - **SHALL**, **SHOULD**, **MAY** - used in this guide are defined in [FHIR Conformance Rules](http://hl7.org/fhir/R4/conformance-rules.html).

#### Claiming Conformance to a PACIO ADI Profile
To claim conformance to a profile in this guide, servers SHALL:

- Be able to populate all profile data elements that have a minimum cardinality >= 1 and/or flagged as Must Support as defined by that profile’s StructureDefinition [TODO] (Verify based on eventual Must Support definition).
- Conform to the [PACIO ADI Capability Statement](CapabilityStatement-padi.html) expectations for that profile’s type.

#### Must Support
The following rules apply to all PACIO ADI Profile elements marked as Must Support. Must Support on any profile data element SHALL be interpreted as follows:


##### Data Source Requirements

- Data Sources SHALL be capable of populating all data elements as part of the query results as specified by the [PACIO ADI Capability Statement](CapabilityStatement-padi.html).

##### Data Consumer Requirements

- Data Consumers SHALL be capable of processing resource instances containing the data element without generating an error or causing the application to fail.
- Data Consumers SHALL interpret missing data elements within resources instances as not being present on the Data Sources system’s or as being withheld for privacy or business reasons.
- Data Consumers SHALL be able to process resource instances containing data elements asserting missing information. Data Consumers are not required to process assertions of missing data.

Profiles by this guide, but defined in other implementation guides inherit the definition of Must Support from their respective guides.

#### Document Bundles and Constituent Resources

[TODO] This guide requires the interoperability of Advance Directive Information through the use of wholly contained documents as part of its use case. While it is required that this data be made interoperable as a collection of Advance Directive Information in document Bundles, systems may decide to make use of the constituent resources as separate resources for additional uses and purposes, such as use in support of Clinical Decision Support 
