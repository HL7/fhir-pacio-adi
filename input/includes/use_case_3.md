
##### Use Case 3 Description

Use-case 3 aims to enable provider access to advance directive information. It includes 3 steps: 

* Step 1 is a Patient Query where a human actor such as a practitioner performs an activity in their system, acting as the Content Requester, to search for the patient of interest in the Content Custodian system in order to retrieve the appropriate Patient FHIR ID in which to perform the subsequent actions. This is a common FHIR behavior and is not further specified in this guide.
* Step 2 is a `DocumentReference` query, where the Content Requester performs a `GET DocumentReference` request using the retrieved patient ID and additional search parameters like date, to the Content Custodian. The Content Custodian returns all matching `DocumentReference` information that has been authorized. This step returns a `DocumentReference` FHIR resource, which may or may not contain a binary-encoded document. Systems claiming conformance to this guide will not encode the document in the `DocumentReference` resource. Instead, the `DocumentReference` resource will reference a base64 binary attachment that contains the content.
* Step 3 involves retrieving the document content. The Content Retriever performs a GET operation using the URL specified in `DocumentReference`. This operation should be available using the same authentication and authorization that was used to retrieve the DocumentReference. Depending on the capabilities of the Content Custodian or the format of the content, the retrieved Binary resource may need to be decoded. If the Content Custodian supports it and if the document content is in xml or json formatting, a request with an HTTP Accept Header of application/xml, text/xml, or application/json may retrieve the decoded document (which may be a FHIR Bundle with type = document).

##### Use Case 3, Part 1 Actor Transition Diagram, Patient Query

<img src="./use_case_3_1.png" alt="Use Case 3: Diagram 1" style="width: 100%; float: none; align: middle;"/>

##### Use Case 3, Part 2 Actor Transition Diagram, DocumentReference Query

<img src="./use_case_3_2.png" alt="Use Case 3: Diagram 2" style="width: 100%; float: none; align: middle;"/>

##### Use Case 3, Part 3 Actor Transition Diagram, Binary Read or Read Composition

<img src="./use_case_3_3.png" alt="Use Case 3: Diagram 3" style="width: 100%; float: none; align: middle;"/>

##### Use Case 3 Processes Steps


The Use Case 3 process describes message interactions between a Content Requester, such as SMART on FHIR application, and a backend server. Note that while backend servers are supported by this IG, more specification requirement details will be coming in STU2.

The process is started when a Practitioner wants a person’s advance directive information for care planning and decision-making.  The Content Requester must contact a system that offers a FHIR API for receiving requests for advance directive information. The Practitioner must be authorized to access the person’s AD Info on the Custodian system. The Content Custodian may be documented in a SMART Health Card or record endpoint in their card. 

First, the Content Requester SHOULD use the FHIR operation [$match](https://hl7.org/fhir/r4/patient-operation-match.html), preferably with an enterprise master patient index (EMPI), for system-to-system patient querying and to ensure a high threshold match so that the right patient is selected. The Content Custodian server returns all Patient resources to the Content Requester. If more than one Patient resource is returned, the Content Requester will confirm which is the correct patient. The Content Requester will then send a `GET DocumentReference query` using patient FHIR ID and any additional search parameters as supported and needed. The Content Custodian returns all matched `DocumentReference` resources to the Content Requester. If more than one DocumentReference is returned, the Content Requester will confirm which `DocumentReference`(s) are wanted. Finally, the Content Requester will retrieve the wanted documents using a GET operation on the URL included in the `DocumentReference` resource and decode the document content if necessary.

<blockquote class="stu-note">
    <p>
    Content custodian systems should be discovered through the National Directory for Healthcare in the future. Implementers should be aware that a National Directory of Healthcare Providers and Services (NDH) FHIR Implementation guide is currently being developed by the FHIR at Scale Taskforce (FAST) and considered for adoption when the IG is formally published.
    </p>
</blockquote> 

##### Use Case 3 Sequence Diagram
<img src="./use_case_3_4.png" alt="Use Case 3: Diagram 4.1" style="width: 100%; float: none; align: middle;"/>
