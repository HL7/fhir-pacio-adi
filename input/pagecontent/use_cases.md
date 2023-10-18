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

{% include examplebutton_default.html example="use_case_1.md" b_title = "Click Here To See Use Case 1 Information" %}

#### Use Case 2: Share [Content]

{% include examplebutton_default.html example="use_case_2.md" b_title = "Click Here To See Use Case 2 Information" %}
 
#### Use Case 3: Query and Access [Content]

{% include examplebutton_default.html example="use_case_3.md" b_title = "Click Here To See Use Case 3 Information" %}

#### Use Case 4: Update [Content]

{% include examplebutton_default.html example="use_case_4.md" b_title = "Click Here To See Use Case 4 Information" %}

#### Use Case 5: Verify current version of AD [Content]

{% include examplebutton_default.html example="use_case_5.md" b_title = "Click Here To See Use Case 5 Information" %}

