
<img src="./use_case_5_1.png" alt="Use Case 5: Diagram 1" style="width: 100%; float: none; align: middle;"/>



<img src="./use_case_5_2.png" alt="Use Case 5: Diagram 2" style="width: 100%; float: none; align: middle;"/>

#### Use Case 5 Processes Steps

In Use Case 5, the process is started by a content verifier who would like to confirm they have the current version of advance directive information. The precondition for the process is the content verifier has a version of AD information from an earlier time. First, the content verifier performs a GET DocumentReference with known setID to content custodian.  The content custodian returns the DocumentReference.  If the `DocumentReference` returned contains a `status` of `superseded` then the document has been replaced and the Content Verifier will perform a second query for a `DocumentReference` resource based on the `relatesto.code` referenced by the superseded `DocumentReference` resource. The content verifier will read the wanted documents using a GET operation on the URL included in the “current” `DocumentReference` resource and decode the document content if necessary.

##### Use Case 5 Sequence Diagram

<img src="./use_case_5_3.png" alt="Use Case 5: Diagram 3" style="width: 100%; float: none; align: middle;"/>
