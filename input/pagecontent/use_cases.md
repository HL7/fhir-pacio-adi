### Overview of ADI Use Cases


In ADI use cases, advance directive content created and updated will be represented using FHIR resources. The advance directives content is created and may be updated periodically by human actors. For advance directives information, there may be multiple human actors involved; however, there is only one author which is the patient. Other human actors may include the healthcare agent and alternate agents, witness, notary, provider, and data enterer.


System actors are responsible for ensuring the advance directive information is correctly represented using FHIR resources. The technical actor is responsible for carrying out activities to conduct transition exchanges.


Use cases in this IG will provide requirements for systems to use FHIR RESTful operations to both share (PUSH) and query & access (PULL) an individual's advance directive content. In addition, it will cover technical requirements to update advance directive content. Finally, the use cases will provide guidance on verification. In this use case, verification addresses situations when you have advance directive information and you use FHIR RESTful operations to determine if what you have is current. The details for these use cases are provided below. 


<img src="./ADI_use_case_overview.png" alt="ADI Use Case Overview" style="width: 100%; float: none; align: middle;"/>

#### Use Case 1: Create in Digital Form [Content]

##### Use Case 1: Description 


In Use Case 1, the person that wants to create their advance directive information in a digital form enters information in a content creator system. The content creator system ensures the information is stored and is available for the steps in the process that are described in the following use cases.  

#### Use Case 2: Share [Content]

##### Use Case 2 Description

In Use Case 2, the Content Creator will share advance directive information with a Content Receiver using a FHIR API. The Content Receiver may be an end system or may be a Content Custodian. 

##### Use Case 2 Actor Transition Diagram

<img src="./use_case_2_1.png" alt="Use Case 2: Diagram 1" style="width: 100%; float: none; align: middle;"/>

##### Use Case 2 Processes Steps

In Use Case 2, the process is started when a person wants to share their advance directive information with a receiver. The person directs the Content Creator system to send the advance directive information to the Content Receiver through a FHIR based POST transaction. The Content Receiver will receive, store and process the advance directive information in their system.

##### Use Case 2 Sequence Diagram

<img src="./use_case_2_2.png" alt="Use Case 2: Diagram 2" style="width: 100%; float: none; align: middle;"/>
 
#### Use Case 3: Query and Access [Content]

##### Use Case 3 Description

In Use Case 3, there are 3 steps included. 
* Step 1 is a Patient Query where a human actor such as a practitioner performs an activity in their system, acting as the Content Requester, to search for the patient of interest in the Content Custodian system in order to retrieve the appropriate Patient FHIR ID in which to perform the subsequent actions. This is a common FHIR behavior and is not further specified in this guide.
* Step 2 is a DocumentReference Query, where the Content Requester performs a GET DocumentReference request using the retrieved patient ID and additional search parameters like date where desired, to the Content Custodian. The Content Custodian returns all matching DocumentReference information that has been authorized. This step returns a DocumentReference, which may or may not contain and encoded document. Systems claiming conformance to this guide will not encode the document in the DocumentReference. Instead, the DocumentReference will point to a Binary resource that contains the content.
* Step 3 involves retrieving the document content. The Content Retriever performs a GET operation using the URL specified in DocumentReference. This operation should be available using the same authentication and authorization that was used to retrieve the DocumentReference. Depending on the capabilities of the Content Custodian or the format of the content, the retrieved Binary resource may need to be decoded. If the Content Custodian supports it and if the document content is xml or json, a request with an Accept Header of application/xml, text/xml, or application/json may retrieve the decoded document (which may be a FHIR Bundle with type = document)

##### Use Case 3, Part 1 Actor Transition Diagram, Patient Query

<img src="./use_case_3_1.png" alt="Use Case 3: Diagram 1" style="width: 100%; float: none; align: middle;"/>

##### Use Case 3, Part 2 Actor Transition Diagram, DocumentReference Query

<img src="./use_case_3_2.png" alt="Use Case 3: Diagram 2" style="width: 100%; float: none; align: middle;"/>

##### Use Case 3, Part 3 Actor Transition Diagram, Binary Read or Read Composition

<img src="./use_case_3_3.png" alt="Use Case 3: Diagram 3" style="width: 100%; float: none; align: middle;"/>

##### Use Case 3 Processes Steps


In Use Case 3, the process is started when a Practitioner wants a person’s AD Info for care planning and decision-making. The Content Requester must contact a system that offers a FHIR API for receiving requests for advance directive information. The Practitioner must be authorized to access the person’s AD Info on the Custodian system. First the Content Requester will use a GET Patient request using patient matching information. The Content Custodian server returns all Patient resources to the Content Requester. If more then one Patient resource is returned, the Content Requester will confirm which is the correct patient. Then the Content Requester will use a GET DocumentReference using patient FHIR ID and any additional search parameters as supported and needed. The Content Custodian returns all matched DocumentReference resources to the Content Requester. If more then one DocumentReference is returned, the Content Requester will confirm which DocumentReference(s) are wanted. Finally the Content Requester will retrieve the wanted documents using a GET operation on the URL included in the DocumentReference and decode the document content if necessary.


##### Use Case 3 Sequence Diagram
<img src="./use_case_3_4_1.png" alt="Use Case 3: Diagram 4.1" style="width: 100%; float: none; align: middle;"/>

<img src="./use_case_3_4_2.png" alt="Use Case 3: Diagram 4.2" style="width: 100%; float: none; align: middle;"/>

<img src="./use_case_3_4_3.png" alt="Use Case 3: Diagram 4.3" style="width: 100%; float: none; align: middle;"/>

#### Use Case 4: Update [Content]

##### Use Case 4 Description

In Use Case 4, the person that has previously created their advance directive information in a digital form wants to make updates to their information. The Custodian system ensures content is updated and correctly represented using FHIR resources.


##### Use Case 4 Actor Transition Diagram
<img src="./use_case_4_1.png" alt="Use Case 4: Diagram 1" style="float: none; align: middle;"/>

##### Use Case 4 Processes Steps


In Use Case 4, the process is started by a person wanting to update previously created advance directive information. The precondition for the process includes the system is able to associate a new version of AD information as active and the ability to mark prior AD information version as inactive. First, the person creates an updated version of their AD information and stores it in a Content Custodian system responsible for information exchange using the same setID identifier as the replaced document and with status = “current”, relatesTo.code = “replaces”, and relatesTo.target --> prior version. Then, the prior version of AD information documentReference.status is changed to `superseded`. Finally, the person consents to share updated AD information. At the end of the process, the updated version is now the current active version and prior version is inactive and a relationship to the prior version of AD Info is maintained through DocumentReference.relatesTo.code (replaces).


Note: FHIR Resource versioning is only used for error corrections. 


##### Use Case 4 Sequence Diagram
<img src="./use_case_4_2.png" alt="Use Case 4: Diagram 2" style="width: 100%; float: none; align: middle;"/>


#### Use Case 5: Verify current version of AD [Content]

##### Use Case 5 Description

In Use Case 5, a Content Verifier has advance directive information which it previously received or retrieved.
* Step 1 is to retrieve the known DocumentReference. The Content Verifier already has a version of the document and therefore knows the setId identifier for the document. The Content Verifier wants to confirm the information they have is the person’s current advance directive information. To verify that the document they have is the current version (and get the current version if it is not), the Content Verifier queries the Content Custodian to retrieve the current version of the document already in their possession. If the DocumentReference has a status = current, the latest document has been retrieved and no further action is needed.
 * Step 2 is to retrieve newer content if available. If the DocumentReference retrieved by the Content Retriever in Step 1 has a status of `superseded` then the document has been replaced and the Content Verifier, the does a second query for a DocumentReference that has a `relatesto.code` of `replaces` and a reference to the superseded DocumentReference. The Content Verifier can then retrieve the document as described in step 3 of <a hef="#use-case-3-description">Use Case 3</a>.


<img src="./use_case_5_1.png" alt="Use Case 5: Diagram 1" style="width: 100%; float: none; align: middle;"/>



<img src="./use_case_5_2.png" alt="Use Case 5: Diagram 2" style="width: 100%; float: none; align: middle;"/>

#### Use Case 5 Processes Steps

In Use Case 5, the process is started by a content verifier who would like to confirm they have the current version of advance directive information. The precondition for the process is the content verifier has a version of AD information from an earlier time. First, the content verifier performs a GET DocumentReference with known setID to content custodian.  The content custodian returns the DocumentReference.  If the DocumentReference returned has a `status` of `superseded` then the document has been replaced and the Content Verifier does a second query for a DocumentReference based on the `relatesto.code` referenced by the superseded DocumentReference. The content verifier will read the wanted documents using a GET operation on the uURL included in the “current” DocumentReference and decode the document content if necessary.

<img src="./use_case_5_3.png" alt="Use Case 5: Diagram 3" style="width: 100%; float: none; align: middle;"/>

<img src="./use_case_5_4.png" alt="Use Case 5: Diagram 4" style="width: 100%; float: none; align: middle;"/>
