### Overview of ADI Use Cases


In ADI use cases, advance directive content created and updated will be represented using FHIR resources. The advance directives content is created and may be updated periodically by human actors. For Content Type I, Person-authored advance directives information, there may be multiple human actors involved; however, there is only one author which is the patient. Other human actors may include the healthcare agent and alternate agents, witness, notary, provider, and data enterer.

<blockquote class="stu-note">
    <p>
    STU1 supports only Person-authored Advance Directives (ADI Content Type 1) documents. Future versions of this FHIR IG will address encounter-centric patient instructions, Content Type 2, and portable medical orders for life-sustaining treatment, Content Type 3.
    </p>
</blockquote>


System actors are responsible for ensuring the advance directive information is correctly represented using FHIR resources. The technical actor is responsible for carrying out activities to conduct transition exchanges.


Use cases in this IG will provide requirements for systems to use FHIR RESTful operations to both share (PUSH) and query & access (PULL) an individual's advance directive content. In addition, it will cover technical requirements to update advance directive content. Finally, the use cases will provide guidance on verification. In this use case, verification addresses situations when you have advance directive information and you use FHIR RESTful operations to determine if what you have is current. The details for these use cases are provided below. 


<p align="center">
    <img src="./ADI_use_case_overview.png" alt="ADI Use Case Overview" style="width: 70%; float: none; align: middle;"/>
</p>

#### Use Case 1: Create in Digital Form [Content]

##### Use Case 1: Description 

In Use Case 1, the person that wants to create their advance directive information in a digital form enters information in a content creator system. The content creator system ensures the information is stored and is available for the steps in the process that are described in the following use cases.  

{% include examplebutton_default.html example="use_case_1_actor_transition.md" b_title = "Click Here To See Use Case 1 Actor Transition Diagram" %}

##### Use Case 1 Processes Steps

<p>
In Use Case 1, the process is started by a person wanting to create advance directive information in a digital form. The precondition for the process includes the system is able to capture and make the AD Info available in standardized digital format. The person creates AD info in the system or optionally in a different system. AD info is stored and indexed by a custodian system responsible for information exchange. Finally, the AD Info is available in digital form within a Custodian System that can share as a FHIR Client and/or support query as a FHIR Server.
</p>

{% include examplebutton_default.html example="use_case_1_sequence.md" b_title = "Click Here To See Use Case 1 Sequence Diagram" %}

#### Use Case 2: Share [Content]

##### Use Case 2 Description

In Use Case 2, the Content Creator will share the person-authored advance directive information with a Content Receiver using a FHIR API. The Content Receiver may be an end system or may be a Content Custodian. 

##### Use Case 2 Processes Steps

In Use Case 2, the process is started when a person wants to share their advance directive information with a receiver. The person directs the Content Creator system to send the advance directive information to the Content Receiver through a FHIR based POST transaction. The Content Receiver will receive, store and process the advance directive information in their system.

#### Use Case 3: Query and Access [Content]

##### Use Case 3 Description

Use-case 3 aims to enable provider access to advance directive information. It includes 3 steps: 

* Step 1 is a Patient Query where a human actor such as a practitioner performs an activity in their system, acting as the Content Requester, to search for the patient of interest in the Content Custodian system in order to retrieve the appropriate Patient FHIR ID in which to perform the subsequent actions. This is a common FHIR behavior and is not further specified in this guide.

{% include examplebutton_default.html example="use_case_3_actor_transition_1.md" b_title = "Click Here To See Use Case 3 Actor Transition Diagram Step 1" %}

* Step 2 is a `DocumentReference` query, where the Content Requester performs a `GET DocumentReference` request using the retrieved patient ID and additional search parameters like date, to the Content Custodian. The Content Custodian returns all matching `DocumentReference` information that has been authorized. This step returns a `DocumentReference` FHIR resource, which may or may not contain a binary-encoded document. Systems claiming conformance to this guide will not encode the document in the `DocumentReference` resource. Instead, the `DocumentReference` resource will reference a base64 binary attachment that contains the content.

{% include examplebutton_default.html example="use_case_3_actor_transition_2.md" b_title = "Click Here To See Use Case 3 Actor Transition Diagram Step 2" %}

* Step 3 involves retrieving the document content. The Content Retriever performs a GET operation using the URL specified in `DocumentReference`. This operation should be available using the same authentication and authorization that was used to retrieve the DocumentReference. Depending on the capabilities of the Content Custodian or the format of the content, the retrieved Binary resource may need to be decoded. If the Content Custodian supports it and if the document content is in xml or json formatting, a request with an HTTP Accept Header of application/xml, text/xml, or application/json may retrieve the decoded document (which may be a FHIR Bundle with type = document).

{% include examplebutton_default.html example="use_case_3_actor_transition_3.md" b_title = "Click Here To See Use Case 3 Actor Transition Diagram Step 3" %}

##### Use Case 3 Processes Steps

The Use Case 3 process describes message interactions between a Content Requester, such as SMART on FHIR application, and a backend server. Note that while backend servers are supported by this IG, more specification requirement details will be coming in STU2.

The process is started when a Practitioner wants a person’s advance directive information for care planning and decision-making.  The Content Requester must contact a system that offers a FHIR API for receiving requests for advance directive information. The Practitioner must be authorized to access the person’s AD Info on the Custodian system. The Content Custodian may be documented in a SMART Health Card or record endpoint in their card. 

First, the Content Requester SHOULD use the FHIR operation [$match](https://hl7.org/fhir/r4/patient-operation-match.html), preferably with an enterprise master patient index (EMPI), for system-to-system patient querying and to ensure a high threshold match so that the right patient is selected. The Content Custodian server returns all Patient resources to the Content Requester. If more than one Patient resource is returned, the Content Requester will confirm which is the correct patient. The Content Requester will then send a `GET DocumentReference query` using patient FHIR ID and any additional search parameters as supported and needed. The Content Custodian returns all matched `DocumentReference` resources to the Content Requester. If more than one DocumentReference is returned, the Content Requester will confirm which `DocumentReference`(s) are wanted. Finally, the Content Requester will retrieve the wanted documents using a GET operation on the URL included in the `DocumentReference` resource and decode the document content if necessary.

<blockquote class="stu-note">
    <p>
    Content custodian systems should be discovered through the National Directory for Healthcare in the future. Implementers should be aware that a National Directory of Healthcare Providers and Services (NDH) FHIR Implementation guide is currently being developed by the FHIR at Scale Taskforce (FAST) and considered for adoption when the IG is formally published.
    </p>
</blockquote> 

#### Use Case 4: Update [Content]

##### Use Case 4 Description

In Use Case 4, the person that has previously created their advance directive information in a digital form wants to make updates to their information. The Custodian system ensures content is updated and correctly represented using FHIR resources.

##### Use Case 4 Processes Steps


In Use Case 4, the process is started by a person wanting to update previously created advance directive information. The precondition for the process includes the system is able to associate a new version of AD information as active and the ability to mark prior AD information version as inactive. First, the person creates an updated version of their AD information and stores it in a Content Custodian system responsible for information exchange using the same setID identifier as the replaced document and with status = “current”, relatesTo.code = “replaces”, and relatesTo.target --> prior version. Then, the prior version of AD information documentReference.status is changed to `superseded`. Finally, the person consents to share updated AD information. At the end of the process, the updated version is now the current active version and prior version is inactive and a relationship to the prior version of AD Info is maintained through DocumentReference.relatesTo.code (replaces).


**Note:** FHIR Resource versioning is only used for error corrections. 


#### Use Case 5: Verify current version of AD [Content]

##### Use Case 5 Description

In Use Case 5, a Content Verifier has advance directive information which it previously received or retrieved.
* Step 1 is to retrieve the known DocumentReference. The Content Verifier already has a version of the document and therefore knows the setId identifier for the document. The Content Verifier wants to confirm the information they have is the person’s current advance directive information. To verify that the document they have is the current version (and get the current version if it is not), the Content Verifier queries the Content Custodian to retrieve the current version of the document already in their possession. If the DocumentReference has a status = current, the latest document has been retrieved and no further action is needed.

{% include examplebutton_default.html example="use_case_5_actor_transition_1.md" b_title = "Click Here To See Use Case 5 Actor Transition Diagram Step 1" %}

 * Step 2 is to retrieve newer content if available. If the `DocumentReference` resource retrieved by the Content Retriever in Step 1 has a status of `superseded` then the document has been replaced and the Content Verifier, the does a second query for a `DocumentReference` resource that has a `relatesto.code` of `replaces` and a reference to the superseded `DocumentReference` resource. The Content Verifier can then retrieve the document as described in step 3 of <a hef="#use-case-3-description">Use Case 3</a>.

{% include examplebutton_default.html example="use_case_5_actor_transition_2.md" b_title = "Click Here To See Use Case 5 Actor Transition Diagram Step 2" %}

#### Use Case 5 Processes Steps

In Use Case 5, the process is started by a content verifier who would like to confirm they have the current version of advance directive information. The precondition for the process is the content verifier has a version of AD information from an earlier time. First, the content verifier performs a GET DocumentReference with known setID to content custodian.  The content custodian returns the DocumentReference.  If the `DocumentReference` returned contains a `status` of `superseded` then the document has been replaced and the Content Verifier will perform a second query for a `DocumentReference` resource based on the `relatesto.code` referenced by the superseded `DocumentReference` resource. The content verifier will read the wanted documents using a GET operation on the URL included in the “current” `DocumentReference` resource and decode the document content if necessary.

{% include examplebutton_default.html example="use_case_5_sequence.md" b_title = "Click Here To See Use Case 5 Sequence Diagram" %}

