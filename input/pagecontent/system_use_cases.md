### Overview of ADI Use Cases


In ADI use cases, advance directive content created and updated will be represented using FHIR resources. The advance directive content is created and may be updated periodically by human actors.

For Content Type 1, Person-authored advance directive information, there may be multiple human actors involved; however, there will only be one author which is the patient. Other human actors may include the healthcare agent, behavioral healthcare agent, alternate healthcare agents, witness, notary, provider, and data enterer.

<blockquote class="stu-note">
    <p>
    STU1 supports only Person-authored Advance Directives (ADI Content Type 1) documents. Future versions of this FHIR IG will address encounter-centric patient instructions, Content Type 2, and portable medical orders (such as DNRs or POLST/MOLST orders) for Content Type 3.
    </p>
</blockquote>


System actors are responsible for ensuring the advance directive information is correctly represented using FHIR resources. The technical actor is responsible for carrying out activities to conduct transition exchanges and make the information available.


Use cases in this IG will provide requirements for systems to use FHIR RESTful operations to both share (PUSH) and query & access (PULL) an individual’s advance directive content. In addition, it will cover technical requirements to update advance directive content. Finally, the use cases will provide guidance on information or document verification that what is available is current. In this use case, verification addresses situations when you have advance directive information available for access, and the system uses FHIR RESTful operations to determine if what is available is the most current version of that information or document. The details for these use cases are provided below.


<p align="center">
    <img src="./ADI_use_case_overview.png" alt="ADI Use Case Overview" style="width: 70%; float: none; align: middle;"/>
</p>

#### Use Case 1: Create in Digital Form [Content]

In Use Case 1, the person that wants to create their advance directive information in a digital form enters information in a content creator system. The content creator system ensures the information is stored and is available for the steps in the process that are described in the following use cases.  

{% include examplebutton_default.html example="use_case_1_actor_transition.md" b_title = "Click Here To See Use Case 1 Actor Transaction Diagram" %}

##### Use Case 1 Process Steps

<p>
In Use Case 1, the process is started by a person seeking to create advance directive information in a digital form. The precondition for the process includes the system is able to capture and make the advance directive information available in standard-based digital format. The person creates advance directive information in the creator system, or optionally in a different system. Advance directive information is then stored and indexed by a custodian system responsible for information exchange. Finally, the advance directive information is made available in digital form within a Custodian System that can share the documents or information as a FHIR Client and/or support query as a FHIR Server.
</p>

{% include examplebutton_default.html example="use_case_1_sequence.md" b_title = "Click Here To See Use Case 1 Sequence Diagram" %}

On first creation, the DocumentReference version number is set to 1 and the status set to *current*.

{% include examplebutton_default.html example="use_case_1_document_structure.md" b_title = "Click Here to See the initial ADI Document Diagram" %}

#### Use Case 2: Share [Content]

In Use Case 2, the Content Creator system makes the person-authored advance directive information available via a Content Receiver system using a FHIR API. The Content Receiver system may be an end system or may be another Content Custodian system.

##### Use Case 2 Process Steps

In Use Case 2, the process is started when a person wants to share their advance directive information with a human or system Content Receiver system. The person directs the Content Creator system to send the advance directive information to the Content Receiver through a FHIR based POST transaction. The Content Receiver will receive, store and process the advance directive information in their system.


#### Use Case 3: Query and Access [Content]

Use-case 3 aims to enable provider access to advance directive information. It includes 3 steps: 

* Step 1 is a Patient Query where a system or human actor, such as a member of a provider care team performs an activity in their system, which is at that point acting as the Content Requester system, to search for the person or subject of interest in the Content Custodian system in order to retrieve the appropriate Patient FHIR ID for which to perform the subsequent actions. This is a common FHIR behavior and is not further specified in this guide.

{% include examplebutton_default.html example="use_case_3_actor_transition_1.md" b_title = "Click Here To See Use Case 3 Actor Transaction Diagram Step 1" %}

* Step 2 is a `DocumentReference` query, where the Content Requester system performs a `GET DocumentReference` request using the retrieved patient ID and additional search parameters like date, to the Content Custodian system. The Content Custodian system returns all matching `DocumentReference` information that has been authorized by the person to be eligible for access. This step returns a `DocumentReference` FHIR resource, which may or may not contain a binary-encoded document. To allow for pragmatic variations in implementer infrastructures, systems claiming conformance to this guide may encode scanned documents in one of two ways. Both options are supported in FHIR and the Server decides which it will utilize.

**Option 1:** file attachment has In-line Representation `content.attachment`, where
*  `.contentType` is a MIME type  (application/pdf)
*  `.data` is inline Base64 binary Data

```
For example:
"attachment": {
      "contentType": "application/pdf",
      "data": "JVBERi0xLjQKJdPr6eEKMSAwIG9iago8PC9DcmVhdG9yIChNb3ppbGxhLzUuMCBcKFdpbmRvd3MgTlQgMTAuMDsgV2luNjQ7IHg2NFwpIEFwcGxlV2ViS2l0LzUzNy4zNiBcKEtIVE1MLCBsaWtlIEdlY2tvXCkgQ2hyb21lLzExOS4wLjAuMCBTYWZhcmkvNTM3LjM2KQovUHJvZHVjZXIgKFNraWEvUERGIG0xMTkpCi9DcmVhdGlvbkRhdGUgKEQ6MjAyMzExMDcxNTIxMzkrMDAnMDAnKQovTW9kRGF0ZSAoRDoyMDIzMTEwNzE1MjEzOSswMCcwMCcpPj4KZW5kb2JqCjMgMCBvYmoKPDwvY2EgMQovQk0gL05vcm1hbD4...+CmVuZG9iago1IDAgb2JqCjw8L0NBIDEKL2NhIDEKL0xDIDAKL0xKIDAKL0xXIDEKL01MIDQKL1NBIHRydWUKL0JNIC9Ob3JtYWw+PgplbmRvYmoKOCAwIG9iago8PC9GaWx0ZXIgL0ZsYXRlRGVjb2RlCi9MZW5ndGggMzY4OT4+IHN0cmVhbQp4nO1cWY8bxxF+56+Y5wAZ9X0AggCS2jXyYCCJF/Cz4cgGAq2ROA6Qn5/qo7prZljDppZaKYElSBxOH1X91d3TnFnpmP9MAv7+cSZffVTTj8+Hfx7EZOOsvZ10dHNIn362068fDt//",
      "creation": "2023-12-22T05:00:00+00:00" }

```

<br />

**Option 2:** file attachment is referenced by url in `content.attachment`, where
* `.contentType` is a MIME type (application/pdf)
* `.url` is the uri where the data can be found

For example:
```
"attachment": {
      "contentType": "application/pdf",
      "url": https://qa-rr-fhir2.maxmddirect.com/Binary/b193ff07-d6ca-495d-a995-b222f87d5942,
      "creation": "2023-12-22T05:00:00+00:00"}
```
<br />

{% include examplebutton_default.html example="use_case_3_actor_transition_2.md" b_title = "Click Here To See Use Case 3 Actor Transaction Diagram Step 2" %}

* Step 3 involves retrieving the document content. The Content Retriever system performs an HTTP GET operation using the URL specified in `DocumentReference`. This operation should be available using the same authentication and authorization that was used to retrieve the DocumentReference in a previous step of this process. Depending on the capabilities of the Content Custodian system or the format of the content, the retrieved Binary resource may need to be decoded. If the Content Custodian system supports it, and if the document content is in xml or json formatting, a request with an HTTP Accept Header of application/xml, text/xml, or application/json may retrieve the decoded document (which may be a FHIR Bundle with type = document).

{% include examplebutton_default.html example="use_case_3_actor_transition_3.md" b_title = "Click Here To See Use Case 3 Actor Transaction Diagram Step 3" %}

##### Use Case 3 Process Steps

The Use Case 3 process describes message interactions between a Content Requester system, such as SMART on FHIR application, and a backend server. Note that while backend servers are supported by this IG, more specification requirement details related to backend server guidance will be coming in STU2.

This process is started when a care team member of an organization wants a person’s advance directive information for treatment planning and decision-making. The Content Requester system must contact a Content Custodian system that offers a FHIR API for receiving requests for advance directive information. The care team member or human actor requesting the advance directive information must be authorized to access the person’s advance directive information on the Content Custodian system. The Content Custodian system may be accessed via a SMART Health Card or record endpoint in their digital insurance card.

The Content Requester system SHOULD use the FHIR operation [$match](https://hl7.org/fhir/r4/patient-operation-match.html) for system-to-system patient querying, preferably with an enterprise master patient index (EMPI) to ensure a high threshold match and so that the right individual's advance directive information is selected. An example of using the $match operation is shown [here](https://hl7.org/fhir/R4/patient-operation-match.html#examples). The Content Custodian server returns all matched Patient resources to the Content Requester system. If more than one Patient resource is returned, the Content Requester will confirm which is the correct patient. The Content Requester system will then send a `GET DocumentReference query` using patient FHIR ID and any additional search parameters as supported and needed. The Content Custodian returns all matched `DocumentReference` resources to the Content Requester system. If more than one DocumentReference is returned, the Content Requester system will confirm which `DocumentReference`(s) are wanted. Finally, the Content Requester system will retrieve the wanted documents using a GET operation on the URL included in the `DocumentReference` resource and decode the document content if necessary.

<blockquote class="stu-note">
    <p>
    Content custodian systems should be discoverable through the National Directory for Healthcare in the future. Implementers should be aware that a National Directory of Healthcare Providers and Services (NDH) FHIR Implementation guide is currently being developed by the FHIR at Scale Taskforce (FAST) and considered for adoption when the IG is formally published.
    </p>
</blockquote> 

#### Use Case 4: Update [Content]

In Use Case 4, the process is started by a person wanting to update previously created advance directive information. The precondition for the process is that the Content Creator and Content Custodian systems are able to associate a new version of the ADI information and/or document(s) as active and possess the ability to mark prior ADI information and/or document(s) version as inactive.

##### Use Case 4 Process Steps


Use Case 4 continues Use Case 2 and Use Case 3, which created the initial document to handle updated document versions. The process is started by a person wanting to update previously created advance directive information. The precondition for the process is that the Content Creator and Content Custodian systems are able to associate a new version of the ADI information and/or document(s) as active and possess the ability to mark prior ADI information and/or document(s) version as inactive.

* First, The person consents to share updated AD information. The person creates an updated version of their advance directive information which is stored in a Content Custodian system responsible for information exchange, using the same setID identifier as the replaced document and with status = “current”, relatesTo.code = “replaces”, and relatesTo.target –> prior version.
* Then, the DocumentReference for the prior version of AD information is updated so that its documentReference.status is changed to superseded.
* At the end of the process, the `DocumentReference` for the updated version of the document has a status of *current* and the the DocumentReference for the previous version of the document is a status of *superceded*. The relationship between the new and previous version of the document is preserved through the current `DocumentReference` `relatesTo.code` (*replaces*).

{% include examplebutton_default.html example="use_case_4_actor_transition.md" b_title = "Click Here To See Use Case 4 ADI Document Diagram" %}

<blockquote class="stu-note">
<p>
It is the responsibility of the Content Custodian of the AD documents to maintain versioning of AD documents.
</p>
</blockquote>

**Note:** FHIR Resource versioning is only used for error corrections. 

#### Use Case 5: Revoke [Content]

In Use Case 5, the person decides to withdraw the Advance Directive document. Revoke is more complex than the Update use case in that the status depends on situation or reason for revoking the document.
* scenario 1: User decides to revoke advance directive entirely; there is only one version of the document.
* scenario 2: User decides to revoke only the current version of the document because it was entered in error. A prior version of the document exists.

##### Use Case 5 Process Steps

**Scenario: 1: Revoke the advance directive entirely**

* Step 1 sets the `DocumentReference.docStatus` code to *cancelled*

**Scenario: 2: Revoke the advance directive because it was entered in error - prior version exists**

This scenario could be addressed as an update (Use Case 4), except that we describe that the reason (element name??) was entered-in-error.

#### Use Case 6: Verify current version of AD [Content]

In Use Case 6, a Content Verifier has advance directive information which it previously received or retrieved.

* Step 1 is the retrieval of the known DocumentReference. The Content Verifier system already has a version of the document and therefore knows the setId identifier for the document. The Content Verifier seeks to confirm the information they have is the person’s current advance directive information. To verify that the document they have is the current version (and get the current version if it is not), the Content Verifier queries the Content Custodian system to retrieve the current version of the document already in their possession. If the DocumentReference has a status = current, the latest document has been verified as retrieved and no further action is needed.

{% include examplebutton_default.html example="use_case_6_actor_transition_1.md" b_title = "Click Here To See Use Case 6 Actor Transaction Diagram Step 1" %}

 * Step 2 is to retrieve newer content if available. If the `DocumentReference` resource retrieved by the Content Retriever system in Step 1 has a status of `superseded` then the document that the Content Custodian system already knows of has been replaced, necessitating that the Content Verifier system perform a second query for a `DocumentReference` resource that has a `relatesto.code` of `replaces` and a reference to the superseded `DocumentReference` resource. The Content Verifier can then retrieve the document as described in step 3 of <a hef="#use-case-3-description">Use Case 3</a>.

{% include examplebutton_default.html example="use_case_6_actor_transition_2.md" b_title = "Click Here To See Use Case 5 Actor Transaction Diagram Step 2" %}

##### Use Case 6 Processes Steps

In Use Case 6, the process is started by a Content Verifier system that would like to confirm the current version of advance directive information is already stored, or not. The precondition for the process is the Content Verifier system has a version of advance directive information from an earlier time.

* First, the Content Verifier system performs a GET DocumentReference with known setID to content custodian. The Content Custodian system returns the `DocumentReference`.
* If the `DocumentReference` returned contains a `status` of `superseded` then the document has been replaced and the Content Verifier system will perform a second query for a `DocumentReference` resource based on the `relatesto.code` referenced by the superseded `DocumentReference` resource. 
* The Content Verifier system will read the wanted documents using a GET operation on the URL included in the “current” `DocumentReference` resource and decode the document content if necessary.

{% include examplebutton_default.html example="use_case_6_sequence.md" b_title = "Click Here To See Use Case 6 Sequence Diagram" %}

