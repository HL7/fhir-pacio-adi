This profile, largely based on the CCDA on FHIR US Realm Header profile, defines requirements that address specific exchange requirements for a composition containing a person's advance care plan information.

**Conformance:**

In the cases where the patient is not able to "write" the PACP contents due to literacy constraints or physical disability, e.g. hemiplegia, the patient/subject is still considered author of the content, and a data enterer will fill the role of physically creating the document by entering the author’s requested information into the system used to create the document.

Advance Directive Information VersionNumber Extension represents a numeric value used to version successive replacement documents. Best practice for systems that support distributed document creation and updating is to populate the versionNumber with the timestamp created from the date/time when the version of the document is created in the system.  Note: this may or may not be equivalent to the timestamp integer for Composition.date. the versionNumber timestamp always will be equivalent to the Bundle.timestamp for the document.   

For documents created within a system will follow the pattern that the timestamp-label versionNumber will be equivalent to the timestamp of the Composition.date and the Bundle.timestamp. However, for unstructured historical documents uploaded into a system, the timestamp-label versionNumber will be equivalent to the timestamp of the  the Bundle.timestamp, but the Composition.date will reflect the creation date of the original document.