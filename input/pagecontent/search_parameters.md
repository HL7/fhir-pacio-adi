### Bundle
<table class="grid" style="width: 100%">
	<thead>
		<tr>
			<th>Parameter</th>
			<th>Type</th>
			<th>Conf.</th>
			<th>Description</th>
			<th>Example</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><a href="{{site.data.fhir.path}}search.html">_id</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#token">token</a></td>
			<td><strong>SHOULD</strong></td>
			<td>Search by FHIR resource ID</td>
			<td><code class="highlighter-rouge">GET [base]/Bundle?_id=[id]</code></td>
		</tr>
		<tr>
			<td><a href="SearchParameter-Bundle-composition.html">composition</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#reference">reference</a></td>
			<td><strong>SHOULD</strong></td>
			<td>Search by reference to a composition</td>
			<td><code class="highlighter-rouge">GET [base]/Bundle?composition=[reference]</code></td>
		</tr>
  		<tr>
			<td><a href="SearchParameter-Bundle-identifier.html">identifier</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#token">token</a></td>
			<td><strong>SHOULD</strong></td>
			<td>Search by business identifier</td>
			<td><code class="highlighter-rouge">GET [base]/Bundle?identifier=[token]</code></td>
		</tr>
		<tr>
			<td><a href="SearchParameter-Bundle-timestamp.html">timestamp</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#date">date</a></td>
			<td><strong>SHOULD</strong></td>
			<td>Search by a date in time</td>
			<td><code class="highlighter-rouge">GET [base]/Bundle?timestamp=[date]</code></td>
		</tr>
		<tr>
			<td><a href="SearchParameter-Bundle-type.html">type</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#code">token</a></td>
			<td><strong>SHOULD</strong></td>
			<td>Search by type code</td>
			<td><code class="highlighter-rouge">GET [base]/Bundle?type=[system]|[code]</code></td>
		</tr>
	</tbody>
</table>
<p>&nbsp;</p>

### Consent
<table class="grid" style="width: 100%">
	<thead>
		<tr>
			<th>Parameter</th>
			<th>Type</th>
			<th>Conf.</th>
			<th>Description</th>
			<th>Example</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><a href="SearchParameter-Consent-id.html">id</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#token">token</a></td>
			<td><strong>SHALL</strong></td>
			<td>Search by FHIR resource id of a Consent</td>
			<td><code class="highlighter-rouge">GET [base]/Consent/[id]</code></td>
		</tr>
		<tr>
			<td><a href="{{site.data.fhir.path}}search.html">_history/vid</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#token">token</a></td>
			<td><strong>SHOULD</strong></td>
			<td>Search by historical version number</td>
			<td><code class="highlighter-rouge">GET [base]/Consent/[id]/_history/vid</code></td>
		</tr>
	</tbody>
</table>
<p>&nbsp;</p>

### ADI-DocumentReference (DocumentReference)
<table class="grid" style="width: 100%">
	<thead>
		<tr>
			<th>Parameter</th>
			<th>Type</th>
			<th>Conf.</th>
			<th>Description</th>
			<th>Example</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><a href="SearchParameter-DocumentReference-id.html">id</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#token">token</a></td>
			<td><strong>SHALL</strong></td>
			<td>Search by FHIR resource id</td>
			<td><code class="highlighter-rouge">GET [base]/DocumentReference/[id]</code></td>
		</tr>
		<tr>
			<td><a href="{{site.data.fhir.path}}search.html">_history/vid</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#token">token</a></td>
			<td><strong>SHOULD</strong></td>
			<td>Search by historical version</td>
			<td><code class="highlighter-rouge">GET [base]/DocumentReference/[id]/_history/vid</code></td>
		</tr>
		<tr>
			<td><a href="{{site.data.fhir.path}}search.html">_id</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#token">token</a></td>
			<td><strong>SHALL</strong></td>
			<td>Search by FHIR resource ID</td>
			<td><code class="highlighter-rouge">GET [base]/DocumentReference?_id=[id]</code></td>
		</tr>
		<tr>
			<td><a href="SearchParameter-DocumentReference-authenticator.html">authenticator</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#reference">reference</a></td>
			<td><strong>MAY</strong></td>
			<td>Search by who/what authenticated the document</td>
			<td><code class="highlighter-rouge">GET [base]/DocumentReference?authenticator=[reference]</code></td>
		</tr>
		<tr>
			<td><a href="SearchParameter-DocumentReference-author.html">author</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#string">string</a></td>
			<td><strong>MAY</strong></td>
			<td>Search by who and/or what authored the document</td>
			<td><code class="highlighter-rouge">GET [base]/DocumentReference?author=[reference]</code></td>
		</tr>
		<tr>
			<td><a href="SearchParameter-DocumentReference-category.html">category</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#token">token</a></td>
			<td><strong>SHOULD</strong></td>
			<td>Search by categorization of document</td>
			<td><code class="highlighter-rouge">GET [base]/DocumentReference?category=[system]|[code]</code></td>
		</tr>
		<tr>
			<td><a href="SearchParameter-DocumentReference-contenttype.html">contenttype</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#string">token</a></td>
			<td><strong>SHOULD</strong></td>
			<td>Search by MIME type of the content, with charset etc.</td>
			<td><code class="highlighter-rouge">GET [base]/DocumentReference?contenttype=[system]|[code]</code></td>
		</tr>
		<tr>
			<td><a href="SearchParameter-DocumentReference-custodian.html">custodian</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#reference">reference</a></td>
			<td><strong>SHALL</strong></td>
			<td>Search by organization which maintains the document</td>
			<td><code class="highlighter-rouge">GET [base]/DocumentReference?custodian=[reference]</code></td>
		</tr>
		<tr>
			<td><a href="SearchParameter-DocumentReference-date.html">date</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#date">date</a></td>
			<td><strong>SHALL</strong></td>
			<td>Search by when this document reference was created</td>
			<td><code class="highlighter-rouge">GET [base]/DocumentReference?date=[date]</code></td>
		</tr>
		<tr>
			<td><a href="SearchParameter-DocumentReference-description.html">description</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#string">string</a></td>
			<td><strong>MAY</strong></td>
			<td>Search by human-readable description</td>
			<td><code class="highlighter-rouge">GET [base]/DocumentReference?description=[description]</code></td>
		</tr>
		<tr>
			<td><a href="SearchParameter-DocumentReference-encounter.html">encounter</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#reference">reference</a></td>
			<td><strong>MAY</strong></td>
			<td>Search by encounter reference</td>
			<td><code class="highlighter-rouge">GET [base]/DocumentReference?encounter=[reference]</code></td>
		</tr>
		<tr>
			<td><a href="SearchParameter-DocumentReference-event.html">event</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#token">token</a></td>
			<td><strong>MAY</strong></td>
			<td>Search by main clinical acts documented</td>
			<td><code class="highlighter-rouge">GET [base]/DocumentReference?event=[system]|[code]</code></td>
		</tr>
		<tr>
			<td><a href="SearchParameter-DocumentReference-facility.html">facility</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#token">token</a></td>
			<td><strong>MAY</strong></td>
			<td>Search by kind of facility where patient was seen</td>
			<td><code class="highlighter-rouge">GET [base]/DocumentReference?facility=[system]|[code]</code></td>
		</tr>
		<tr>
			<td><a href="SearchParameter-DocumentReference-format.html">format</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#token">token</a></td>
			<td><strong>SHOULD</strong></td>
			<td>Search by format code content rules for the document</td>
			<td><code class="highlighter-rouge">GET [base]/DocumentReference?format=[system]|[code]</code></td>
		</tr>
		<tr>
			<td><a href="SearchParameter-DocumentReference-identifier.html">identifier</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#token">token</a></td>
			<td><strong>SHALL</strong></td>
			<td>Search by business identifier of the attachment binary</td>
			<td><code class="highlighter-rouge">GET [base]/DocumentReference?identifier=[system]|[code]</code></td>
		</tr>
		<tr>
			<td><a href="SearchParameter-DocumentReference-language.html">language</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#token">token</a></td>
			<td><strong>MAY</strong></td>
			<td>Search by human language of the content (BCP-47)</td>
			<td><code class="highlighter-rouge">GET [base]/DocumentReference?language=[system]|[code]</code></td>
		</tr>
		<tr>
			<td><a href="SearchParameter-DocumentReference-location.html">location</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#uri">uri</a></td>
			<td><strong>MAY</strong></td>
			<td>Search by uri where the data can be found</td>
			<td><code class="highlighter-rouge">GET [base]/DocumentReference?location=[uri]</code></td>
		</tr>
		<tr>
			<td><a href="SearchParameter-DocumentReference-patient.html">patient</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#reference">reference</a></td>
			<td><strong>SHALL</strong></td>
			<td>Search by who is the subject of the document</td>
			<td><code class="highlighter-rouge">GET [base]/DocumentReference?patient=[reference]</code></td>
		</tr>
		<tr>
			<td><a href="SearchParameter-DocumentReference-period.html">period</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#date">date</a></td>
			<td><strong>SHALL</strong></td>
			<td>Search by time of service that is being documented</td>
			<td><code class="highlighter-rouge">GET [base]/DocumentReference?period=[period]</code></td>
		</tr>
		<tr>
			<td><a href="SearchParameter-DocumentReference-related.html">related</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#reference">reference</a></td>
			<td><strong>MAY</strong></td>
			<td>Search by related identifier or resource</td>
			<td><code class="highlighter-rouge">GET [base]/DocumentReference?related=[reference]</code></td>
		</tr>
		<tr>
			<td><a href="SearchParameter-DocumentReference-relatesto.html">relatesto</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#reference">reference</a></td>
			<td><strong>MAY</strong></td>
			<td>Search by target of the relationship</td>
			<td><code class="highlighter-rouge">GET [base]/DocumentReference?relatesto=[reference]</code></td>
		</tr>
		<tr>
			<td><a href="SearchParameter-DocumentReference-relation.html">relation</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#token">token</a></td>
			<td><strong>MAY</strong></td>
			<td>Search by relation code (replaces | transforms | signs | appends)</td>
			<td><code class="highlighter-rouge">GET [base]/DocumentReference?relation=[system]|[code]</code></td>
		</tr>
		<tr>
			<td><a href="SearchParameter-DocumentReference-relationship.html">relationship</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#composite">composite</a></td>
			<td><strong>MAY</strong></td>
			<td>Search by relationship code and value (combination of relation and relatesTo)</td>
			<td><code class="highlighter-rouge">GET [base]/DocumentReference?relationship=[code]&[value]</code></td>
		</tr>
		<tr>
			<td><a href="SearchParameter-DocumentReference-security-label.html">security-label</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#token">token</a></td>
			<td><strong>MAY</strong></td>
			<td>Search by document security-tags</td>
			<td><code class="highlighter-rouge">GET [base]/DocumentReference?security-label=[system]|[code]</code></td>
		</tr>
		<tr>
			<td><a href="SearchParameter-DocumentReference-setting.html">setting</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#token">token</a></td>
			<td><strong>MAY</strong></td>
			<td>Search by additional details about where the content was created (e.g. clinical specialty)</td>
			<td><code class="highlighter-rouge">GET [base]/DocumentReference?setting=[system]|[code]</code></td>
		</tr>
		<tr>
			<td><a href="SearchParameter-DocumentReference-status.html">status</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#token">token</a></td>
			<td><strong>SHALL</strong></td>
			<td>Search by document reference status code (current | superseded | entered-in-error)</td>
			<td><code class="highlighter-rouge">GET [base]/DocumentReference?status=[status]</code></td>
		</tr>
		<tr>
			<td><a href="SearchParameter-DocumentReference-subject.html">subject</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#reference">reference</a></td>
			<td><strong>MAY</strong></td>
			<td>Search by who/what is the subject of the document</td>
			<td><code class="highlighter-rouge">GET [base]/DocumentReference?subject=[reference]</code></td>
		</tr>
		<tr>
			<td><a href="SearchParameter-DocumentReference-type.html">type</a></td>
			<td><a href="{{site.data.fhir.path}}search.html#token">token</a></td>
			<td><strong>SHALL</strong></td>
			<td>Search by kind of document</td>
			<td><code class="highlighter-rouge">GET [base]/DocumentReference?type=[system]|[code]</code></td>
		</tr>
	</tbody>
</table>
<p>&nbsp;</p>

### Patient
<p>
	We strongly recommend using the $match operation in performing a system-to-system query to ensure that the right patient is selected. The Patient.search parameters below may be generally used for subsequent queries once the patient is selected.
	Search parameter requirements for Patient under this IG match those for <a href="https://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-patient.html#mandatory-search-parameters">US Core Patient search requirements</a>
</p>
<p>&nbsp;</p>
