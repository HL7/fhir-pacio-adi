
##### Use Case 4 Description

In Use Case 4, the person that has previously created their advance directive information in a digital form wants to make updates to their information. The Custodian system ensures content is updated and correctly represented using FHIR resources.


##### Use Case 4 Actor Transition Diagram
<img src="./use_case_4_1.png" alt="Use Case 4: Diagram 1" style="float: none; align: middle;"/>

##### Use Case 4 Processes Steps


In Use Case 4, the process is started by a person wanting to update previously created advance directive information. The precondition for the process includes the system is able to associate a new version of AD information as active and the ability to mark prior AD information version as inactive. First, the person creates an updated version of their AD information and stores it in a Content Custodian system responsible for information exchange using the same setID identifier as the replaced document and with status = “current”, relatesTo.code = “replaces”, and relatesTo.target --> prior version. Then, the prior version of AD information documentReference.status is changed to `superseded`. Finally, the person consents to share updated AD information. At the end of the process, the updated version is now the current active version and prior version is inactive and a relationship to the prior version of AD Info is maintained through DocumentReference.relatesTo.code (replaces).


**Note:** FHIR Resource versioning is only used for error corrections. 


##### Use Case 4 Sequence Diagram
<img src="./use_case_4_2.png" alt="Use Case 4: Diagram 2" style="width: 100%; float: none; align: middle;"/>

