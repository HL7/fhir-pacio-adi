Instance: Bundle-identifier
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #identifier
* name = "ADIBundleIdentifier"
* description = "Search by business identifier"
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/Bundle-identifier"
* base[0] = #Bundle

* type = #token

* expression = "Bundle.identifier"

* multipleOr = true
* multipleAnd = true



Instance: Bundle-composition
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #composition
* name = "ADIBundleComposition"
* description = "Search by reference to a composition"
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/Bundle-composition"
* base[0] = #Bundle

* type = #reference

* expression = "Bundle.entry.first().resource"

* multipleOr = true
* multipleAnd = true



Instance: Bundle-timestamp
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #timestamp
* name = "ADIBundleTimestamp"
* description = "Search by date in time"
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/Bundle-timestamp"
* base[0] = #Bundle

* type = #date

* expression = "Bundle.timestamp"

* multipleOr = true
* multipleAnd = true



Instance: Bundle-type
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #type
* name = "ADIBundleType"
* description = "Search by type"
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/Bundle-type"
* base[0] = #Bundle

* type = #token

* expression = "Bundle.type"

* multipleOr = true
* multipleAnd = true



Instance: Consent-id
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #id
* name = "ADIConsentId"
* description = "Search by FHIR Resource ID"
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/Consent-id"
* base[0] = #Consent

* type = #token

* expression = "Consent.id"

* multipleOr = true
* multipleAnd = true



Instance: DocumentReference-id
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #id
* name = "ADIDocumentReferenceId"
* description = "Search by FHIR Resource ID"
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/DocumentReference-id"
* base[0] = #DocumentReference

* type = #token

* expression = "DocumentReference.id"

* multipleOr = true
* multipleAnd = true



Instance: DocumentReference-authenticator
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #authenticator
* name = "ADIDocumentReferenceAuthenticator"
* description = "Search by who/what authenticated the document"
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/DocumentReference-authenticator"
* base[0] = #DocumentReference

* type = #reference

* expression = "DocumentReference.authenticator"

* multipleOr = true
* multipleAnd = true



Instance: DocumentReference-author
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #author
* name = "ADIDocumentReferenceAuthor"
* description = "Search by who and/or what authored the document"
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/DocumentReference-author"
* base[0] = #DocumentReference

* type = #reference

* expression = "DocumentReference.author"

* multipleOr = true
* multipleAnd = true



Instance: DocumentReference-category
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #category
* name = "ADIDocumentReferenceCategory"
* description = "Search by categorization of document"
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/DocumentReference-category"
* base[0] = #DocumentReference

* type = #token

* expression = "DocumentReference.category"

* multipleOr = true
* multipleAnd = true



Instance: DocumentReference-contenttype
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #contenttype
* name = "ADIDocumentReferenceContentType"
* description = "Search by MIME type of the content, with charset etc."
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/DocumentReference-contenttype"
* base[0] = #DocumentReference

* type = #token

* expression = "DocumentReference.content.attachment.contentType"

* multipleOr = true
* multipleAnd = true



Instance: DocumentReference-custodian
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #custodian
* name = "ADIDocumentReferenceCustodian"
* description = "Search by organization which maintains the document"
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/DocumentReference-custodian"
* base[0] = #DocumentReference

* type = #reference

* expression = "DocumentReference.custodian"

* multipleOr = true
* multipleAnd = true



Instance: DocumentReference-date
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #date
* name = "ADIDocumentReferenceDates"
* description = "Search by when this document reference was created"
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/DocumentReference-date"
* base[0] = #DocumentReference

* type = #date

* expression = "DocumentReference.date"

* comparator[+] = #eq
* comparator[+] = #lt
* comparator[+] = #le
* comparator[+] = #gt
* comparator[+] = #ge
* comparator[+] = #sa
* comparator[+] = #eb
* comparator[+] = #ap

* multipleOr = true
* multipleAnd = true



Instance: DocumentReference-description
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #description
* name = "ADIDocumentReferenceDescription"
* description = "Search by human-readable description"
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/DocumentReference-description"
* base[0] = #DocumentReference

* type = #string

* expression = "DocumentReference.description"

* modifier[+] = #missing
* modifier[+] = #exact
* modifier[+] = #contains

* multipleOr = true
* multipleAnd = true



Instance: DocumentReference-encounter
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #encounter
* name = "ADIDocumentReferenceEncounter"
* description = "Search by encounter reference"
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/DocumentReference-encounter"
* base[0] = #DocumentReference

* type = #reference

* expression = "DocumentReference.context.encounter"

* multipleOr = true
* multipleAnd = true



Instance: DocumentReference-event
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #event
* name = "ADIDocumentReferenceEvent"
* description = "Search by main clinical acts documented"
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/DocumentReference-event"
* base[0] = #DocumentReference

* type = #token

* expression = "DocumentReference.context.event"

* multipleOr = true
* multipleAnd = true



Instance: DocumentReference-facility
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #facility
* name = "ADIDocumentReferenceFacility"
* description = "Search by kind of facility where patient was seen"
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/DocumentReference-facility"
* base[0] = #DocumentReference

* type = #token

* expression = "DocumentReference.context.facilityType"

* multipleOr = true
* multipleAnd = true



Instance: DocumentReference-format
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #format
* name = "ADIDocumentReferenceFormat"
* description = "Search by format code content rules for the document"
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/DocumentReference-format"
* base[0] = #DocumentReference

* type = #token

* expression = "DocumentReference.content.format"

* multipleOr = true
* multipleAnd = true



Instance: DocumentReference-identifier
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #identifier
* name = "ADIDocumentReferenceIdentifier"
* description = "Search by business identifier of the attachment binary"
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/DocumentReference-identifier"
* base[0] = #DocumentReference

* type = #token

* expression = "DocumentReference.identifier"

* multipleOr = true
* multipleAnd = true



Instance: DocumentReference-language
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #language
* name = "ADIDocumentReferenceLanguage"
* description = "Search by human language of the content (BCP-47)"
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/DocumentReference-language"
* base[0] = #DocumentReference

* type = #token

* expression = "DocumentReference.language"

* multipleOr = true
* multipleAnd = true



Instance: DocumentReference-location
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #location
* name = "ADIDocumentReferenceLocation"
* description = "Search by uri where the data can be found"
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/DocumentReference-location"
* base[0] = #DocumentReference

* type = #uri

* expression = "DocumentReference.content.attachment.url"

* multipleOr = true
* multipleAnd = true



Instance: DocumentReference-patient
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #patient
* name = "ADIDocumentReferencePatient"
* description = "Search by who/what is the subject of the document"
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/DocumentReference-patient"
* base[0] = #DocumentReference

* type = #reference

* expression = "DocumentReference.subject.where(resolve() is Patient)"

* multipleOr = true
* multipleAnd = true



Instance: DocumentReference-period
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #period
* name = "ADIDocumentReferencePeriod"
* description = "Search by time of service that is being documented"
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/DocumentReference-period"
* base[0] = #DocumentReference

* type = #date

* expression = "DocumentReference.context.period"

* comparator[+] = #eq
* comparator[+] = #lt
* comparator[+] = #le
* comparator[+] = #gt
* comparator[+] = #ge
* comparator[+] = #sa
* comparator[+] = #eb
* comparator[+] = #ap

* multipleOr = true
* multipleAnd = true



Instance: DocumentReference-related
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #related
* name = "ADIDocumentReferenceRelated"
* description = "Search by related identifier or resource"
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/DocumentReference-related"
* base[0] = #DocumentReference

* type = #reference

* expression = "DocumentReference.context.related"

* multipleOr = true
* multipleAnd = true



Instance: DocumentReference-relatesto
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #relatesto
* name = "ADIDocumentReferenceRelatesTo"
* description = "Search by target of the relationship"
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/DocumentReference-relatesto"
* base[0] = #DocumentReference

* type = #reference

* expression = "DocumentReference.relatesTo.target"

* multipleOr = true
* multipleAnd = true



Instance: DocumentReference-relation
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #relation
* name = "ADIDocumentReferenceRelation"
* description = "Search by relation code (replaces | transforms | signs | appends)"
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/DocumentReference-relation"
* base[0] = #DocumentReference

* type = #token

* expression = "DocumentReference.relatesTo.code"

* multipleOr = true
* multipleAnd = true



Instance: DocumentReference-relationship
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #relationship
* name = "ADIDocumentReferenceRelationship"
* description = "Search by relationship code and value (combination of relation and relatesTo)"
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/DocumentReference-relationship"
* base[0] = #DocumentReference

* type = #composite

* expression = "DocumentReference.relatesTo"

* multipleOr = true
* multipleAnd = true



Instance: DocumentReference-security-label
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #security-label
* name = "ADIDocumentReferenceSecurityLabel"
* description = "Search by document security-tags"
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/DocumentReference-security-label"
* base[0] = #DocumentReference

* type = #token

* expression = "DocumentReference.securityLabel"

* multipleOr = true
* multipleAnd = true



Instance: DocumentReference-setting
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #setting
* name = "ADIDocumentReferenceSetting"
* description = "Search by additional details about where the content was created (e.g. clinical specialty)"
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/DocumentReference-setting"
* base[0] = #DocumentReference

* type = #token

* expression = "DocumentReference.context.practiceSetting"

* multipleOr = true
* multipleAnd = true



Instance: DocumentReference-status
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #status
* name = "ADIDocumentReferenceStatus"
* description = "Search by document reference status code (current | superseded | entered-in-error)"
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/DocumentReference-status"
* base[0] = #DocumentReference

* type = #token

* expression = "DocumentReference.status"

* multipleOr = true
* multipleAnd = true



Instance: DocumentReference-subject
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #subject
* name = "ADIDocumentReferenceSubject"
* description = "Search by who/what is the subject of the document"
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/DocumentReference-subject"
* base[0] = #DocumentReference

* type = #reference

* expression = "DocumentReference.subject"

* multipleOr = true
* multipleAnd = true



Instance: DocumentReference-type
InstanceOf: SearchParameter
Usage: #definition

* status = #active
* code = #type
* name = "ADIDocumentReferenceType"
* description = "Search by kind of document"
* url = "http://hl7.org/fhir/us/pacio-adi/SearchParameter/DocumentReference-type"
* base[0] = #DocumentReference

* type = #token

* expression = "DocumentReference.type"

* multipleOr = true
* multipleAnd = true
