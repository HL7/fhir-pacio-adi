[//]: #  ## Security, Privacy, and Consent 

### General Considerations

Advance Directive Interoperability (ADI) involves communication of advance directive information across multiple parties including who the information is about, their healthcare agents and identified advisors, and care providers. The author, whom is also the person the information is about, needs access to create, modify, remove, and share this information either directly or through an authorized third party. Users of this information, be them the appointed healthcare agents or advisors, care providers in emergency, intensive, or critical care environments, or others providing longer term care in a skilled nursing or other similar facility.

Advance directive information contains patient specific information, which means that it needs to be protected with proper security and privacy protections to avoid malicious or unintentional exposure of such information. All Advance Directive Interoperability exchanges must be appropriately secured in transit and access limited only to authorized individuals.

The ADI IG focuses on providing a structure to share data and information. Currently policy, legal and regulatory differ across states and local areas impacting the workflow and requirements associated with Advance Directives Information. Implementors should review the current context for where this IG is expected to be used to ensure those requirements are met.


#### Security Considerations and Guidance
All implementers of the Advance Directive Interoperability Implementation Guide (IG) **SHOULD** follow the FHIR Security guidance, Security and Privacy Module, and the FHIR Implementer’s Safety Checklist guidance as defined in the FHIR standard where applicable and not otherwise superseded by this Section of the ADI IG.

1.	The FHIR Security specification provides guidance related to communication security, authentication, authorization/access control, audit, digital signatures, attachments, labels, narrative, and input validation. The FHIR security specification is available [here](http://hl7.org/fhir/R4/security.html).
2.	The FHIR Security and Privacy Module describes access control and authorization considerations to protect a FHIR server, how to document permissions granted, and hot to keep records of performed events. The FHIR Security and privacy module can be found [here](http://hl7.org/fhir/R4/secpriv-module.html).
3.	The FHIR Implementer’s Safety Checklist helps implementers be sure that they have considered all the parts of FHIR that impact their system design regarding safety. The FHIR safety check list is available [here](http://hl7.org/fhir/R4/safety.html).

#### Security Requirements
For the purposes of Advance Directive Interoperability, additional security conformance requirements are as follows:

##### Exchange Security
1.	The exchange of AD information **SHOULD** use the current version and **SHALL** use either current or the immediately prior release of [Transport Level Security (TLS)](https://tools.ietf.org/html/rfc8446) as specified by the current release of [NIST guidelines (SP 800-52)](https://csrc.nist.gov/publications/detail/sp/800-52/rev-2/final). 
2.	Implementers of this Implementation Guide **SHALL** support [SMART on FHIR App Launch Framework](http://hl7.org/fhir/smart-app-launch/index.html) and **MAY** support [SMART on FHIR Backend Services](https://hl7.org/fhir/uv/bulkdata/authorization/index.html).
3.	Implementers of this Implementation Guide **SHOULD** support mutually authenticated TLS.
4.	Server implementations that expect to support browser-based javascript applications SHOULD enable [Cross-Origin Resource Sharing (CORS)](https://www.w3.org/TR/cors/) for REST operations. Many client web-based apps use javascript for API calls which requires CORS. However, CORS could present security concerns if not implemented correctly or is not continually updated as new security issues are found and addressed. Implementers of CORS **SHOULD** consider advice about CORS from sources such as [Enable-CORS](http://enable-cors.org/) and [Moesif blog on Guide to CORS Pitfalls](https://www.moesif.com/blog/technical/cors/Authoritative-Guide-to-CORS-Cross-Origin-Resource-Sharing-for-REST-APIs/)  

##### Authentication and Authorization Requirements
1.	Implementations **SHOULD** consider the SMART on FHIR Best Practices found [here](http://hl7.org/fhir/smart-app-launch/best-practices.html)
2.	Server implementations **SHALL** support individual user authentication and **MAY** support system level authentication if access controls of the system are trusted for the scope of use.
3. Implementation **MAY** support [Health Relationship Trust Profile for User-Managed Access (HEART)](https://openid.net/specs/openid-heart-uma2-1_0.html).
4.	Implementation **SHALL** utilize OAuth 2.0 compliant authorization protocols.
5.	This guide requires SMART on FHIR App Launch Framework which provides guidance on [scopes](http://hl7.org/fhir/smart-app-launch/scopes-and-launch-context/index.html)
6.  This guide defines the following server requirements for SMART on [FHIR Core Capabilities](https://hl7.org/fhir/smart-app-launch/conformance/index.html#smart-on-fhir-core-capabilities-and-capability-sets)
    1.  Launch Modes
        1.  **SHOULD** support `launch-ehr`: support for SMART’s EHR Launch mode
        2.  **SHALL** support `launch-standalone`: support for SMART’s Standalone Launch mode
    2.  Client Types
        1.  **SHALL** support `client-public`: support for SMART’s public client profile (no client authentication)
        2.  **SHALL** support `client-confidential-symmetric`: support for SMART’s confidential client profile (symmetric client secret authentication)
    3.  Single Sign-on
        1.  **SHALL** support `sso-openid-connect`: support for SMART’s OpenID Connect profile
    4.  Launch Context
        1.  **SHOULD** support `context-banner`: support for “need patient banner” launch context (conveyed via need_patient_banner token parameter)
        2.  **MAY** support `context-style`: support for “SMART style URL” launch context (conveyed via smart_style_url token parameter)
    5.  Launch Context for EHR Launch, if `launch-ehr` is supported
        1.  **SHALL** support `context-ehr-patient`: support for patient-level launch context (requested by launch/patient scope, conveyed via patient token parameter)
        2.  **SHALL** support `context-ehr-encounter`: support for encounter-level launch context (requested by launch/encounter scope, conveyed via encounter token parameter)
    6.  Launch Context for Standalone Launch
        1.  **SHALL** support `context-standalone-patient`: support for patient-level launch context (requested by launch/patient scope, conveyed via patient token parameter)
        2.  **MAY** support `context-standalone-encounter`: support for encounter-level launch context (requested by launch/encounter scope, conveyed via encounter token 
    7.  Permissions 
        1.  **SHOULD** support `permission-offline`: support for refresh tokens (requested by `offline_access` scope)
        2.  **SHALL** support, at a minimum, the following granted authorization [scopes](http://hl7.org/fhir/smart-app-launch/scopes-and-launch-context/index.html):
            1.  openid
            2.	fhirUser
            3.	launch/patient
            4.	patient/*.read
            5.	patient/Bundle.*
            6.	patient/DocumentReference.*
            7.	user/Patient.read
            8.	user/Bundle.*
            8.	user/DocumentReference.*

#### Individual-Authorized Exchange
1.	http://hl7.org/fhir/us/davinci-pdex/Member-AuthorizedOAuth2Exchange.html

#### Privacy Requirement
For the purposes of Advance Directive Interoperability, privacy conformance requirements are as follows:
- Implementers **SHOULD** support data sharing policies with use of the Consent resource.

#### Digital Signatures
In order to validate the authenticity and integrity of advance directive information, document bundles **SHALL** support digital signing of ADI document bundles . See http://hl7.org/fhir/R4/signatures.html 
http://hl7.org/fhir/R4/secpriv-module.html#signature 

#### Audit Logging and Provenance
1.	Server implementations **SHOULD** record all IG related data access using the [AuditEvent](http://hl7.org/fhir/R4/auditevent.html) resource.
1.	Server implementations **SHOULD** support the ability to directly record and/or enable clients to assert (store) provenance associated with advance directive information using the [Provenance](http://hl7.org/fhir/R4/provenance.html) resource.

<!-- TODO Consider US Core requirements
https://www.hl7.org/fhir/us/core/security.html
-->