
##### Use Case 5 Description

In Use Case 5, a Content Verifier has advance directive information which it previously received or retrieved.
* Step 1 is to retrieve the known DocumentReference. The Content Verifier already has a version of the document and therefore knows the setId identifier for the document. The Content Verifier wants to confirm the information they have is the person’s current advance directive information. To verify that the document they have is the current version (and get the current version if it is not), the Content Verifier queries the Content Custodian to retrieve the current version of the document already in their possession. If the DocumentReference has a status = current, the latest document has been retrieved and no further action is needed.
 * Step 2 is to retrieve newer content if available. If the `DocumentReference` resource retrieved by the Content Retriever in Step 1 has a status of `superseded` then the document has been replaced and the Content Verifier, the does a second query for a `DocumentReference` resource that has a `relatesto.code` of `replaces` and a reference to the superseded `DocumentReference` resource. The Content Verifier can then retrieve the document as described in step 3 of <a hef="#use-case-3-description">Use Case 3</a>.


<img src="./use_case_5_1.png" alt="Use Case 5: Diagram 1" style="width: 100%; float: none; align: middle;"/>



<img src="./use_case_5_2.png" alt="Use Case 5: Diagram 2" style="width: 100%; float: none; align: middle;"/>

#### Use Case 5 Processes Steps

In Use Case 5, the process is started by a content verifier who would like to confirm they have the current version of advance directive information. The precondition for the process is the content verifier has a version of AD information from an earlier time. First, the content verifier performs a GET DocumentReference with known setID to content custodian.  The content custodian returns the DocumentReference.  If the `DocumentReference` returned contains a `status` of `superseded` then the document has been replaced and the Content Verifier will perform a second query for a `DocumentReference` resource based on the `relatesto.code` referenced by the superseded `DocumentReference` resource. The content verifier will read the wanted documents using a GET operation on the URL included in the “current” `DocumentReference` resource and decode the document content if necessary.

##### Use Case 5 Sequence Diagram

<img src="./use_case_5_3.png" alt="Use Case 5: Diagram 3" style="width: 100%; float: none; align: middle;"/>
