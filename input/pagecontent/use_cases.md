### Overview of ADI Use Cases


In ADI use cases, advance directive content created and updated will be represented using FHIR resources. The advance directives content is created and may be updated periodically by human actors. For Content Type I, Person-authored advance directives information, there may be multiple human actors involved; however, there is only one author which is the patient. Other human actors may include the healthcare agent and alternate agents, witness, notary, provider, and data enterer.

<blockquote class="stu-note">
    <p>
    STU1 supports only Person-authored Advance Directives (ADI Content Type 1) documents. Future versions of this FHIR IG will address encounter-centric patient instructions, Content Type 2, and portable medical orders for life-sustaining treatment, Content Type 3.
    </p>
</blockquote>


System actors are responsible for ensuring the advance directive information is correctly represented using FHIR resources. The technical actor is responsible for carrying out activities to conduct transition exchanges.


Use cases in this IG will provide requirements for systems to use FHIR RESTful operations to both share (PUSH) and query & access (PULL) an individual's advance directive content. In addition, it will cover technical requirements to update advance directive content. Finally, the use cases will provide guidance on verification. In this use case, verification addresses situations when you have advance directive information and you use FHIR RESTful operations to determine if what you have is current. The details for these use cases are provided below. 


<img src="./ADI_use_case_overview.png" alt="ADI Use Case Overview" style="width: 100%; float: none; align: middle;"/>

#### Use Case 1: Create in Digital Form [Content]

##### Use Case 1: Description 

In Use Case 1, the person that wants to create their advance directive information in a digital form enters information in a content creator system. The content creator system ensures the information is stored and is available for the steps in the process that are described in the following use cases.  

{% include examplebutton_default.html example="use_case_1.md" b_title = "Click Here To See Use Case 1 Additional Information" %}

#### Use Case 2: Share [Content]

##### Use Case 2 Description

In Use Case 2, the Content Creator will share the person-authored advance directive information with a Content Receiver using a FHIR API. The Content Receiver may be an end system or may be a Content Custodian. 

{% include examplebutton_default.html example="use_case_2.md" b_title = "Click Here To See Use Case 2 Additional Information" %}
 
#### Use Case 3: Query and Access [Content]

##### Use Case 3 Description

Use-case 3 aims to enable provider access to advance directive information. It includes 3 steps: 

* Step 1 is a Patient Query where a human actor such as a practitioner performs an activity in their system, acting as the Content Requester, to search for the patient of interest in the Content Custodian system in order to retrieve the appropriate Patient FHIR ID in which to perform the subsequent actions. This is a common FHIR behavior and is not further specified in this guide.
* Step 2 is a `DocumentReference` query, where the Content Requester performs a `GET DocumentReference` request using the retrieved patient ID and additional search parameters like date, to the Content Custodian. The Content Custodian returns all matching `DocumentReference` information that has been authorized. This step returns a `DocumentReference` FHIR resource, which may or may not contain a binary-encoded document. Systems claiming conformance to this guide will not encode the document in the `DocumentReference` resource. Instead, the `DocumentReference` resource will reference a base64 binary attachment that contains the content.
* Step 3 involves retrieving the document content. The Content Retriever performs a GET operation using the URL specified in `DocumentReference`. This operation should be available using the same authentication and authorization that was used to retrieve the DocumentReference. Depending on the capabilities of the Content Custodian or the format of the content, the retrieved Binary resource may need to be decoded. If the Content Custodian supports it and if the document content is in xml or json formatting, a request with an HTTP Accept Header of application/xml, text/xml, or application/json may retrieve the decoded document (which may be a FHIR Bundle with type = document).

{% include examplebutton_default.html example="use_case_3.md" b_title = "Click Here To See Use Case 3 Additional Information" %}

#### Use Case 4: Update [Content]

##### Use Case 4 Description

In Use Case 4, the person that has previously created their advance directive information in a digital form wants to make updates to their information. The Custodian system ensures content is updated and correctly represented using FHIR resources.

{% include examplebutton_default.html example="use_case_4.md" b_title = "Click Here To See Use Case 4 Additional Information" %}

#### Use Case 5: Verify current version of AD [Content]

##### Use Case 5 Description

In Use Case 5, a Content Verifier has advance directive information which it previously received or retrieved.
* Step 1 is to retrieve the known DocumentReference. The Content Verifier already has a version of the document and therefore knows the setId identifier for the document. The Content Verifier wants to confirm the information they have is the person’s current advance directive information. To verify that the document they have is the current version (and get the current version if it is not), the Content Verifier queries the Content Custodian to retrieve the current version of the document already in their possession. If the DocumentReference has a status = current, the latest document has been retrieved and no further action is needed.
 * Step 2 is to retrieve newer content if available. If the `DocumentReference` resource retrieved by the Content Retriever in Step 1 has a status of `superseded` then the document has been replaced and the Content Verifier, the does a second query for a `DocumentReference` resource that has a `relatesto.code` of `replaces` and a reference to the superseded `DocumentReference` resource. The Content Verifier can then retrieve the document as described in step 3 of <a hef="#use-case-3-description">Use Case 3</a>.

{% include examplebutton_default.html example="use_case_5.md" b_title = "Click Here To See Use Case 5 Additional Information" %}
