
### About Signatures

This specification does not require signatures but supports the transmission of signatures if business agreements require them.
{:.bg-info}

Data Consumers may require signatures from a Data Source to attest to the information being exchanged. For example, for a clinician to adequately review and follow a patient's advance directive, the submitted information needs to be signed.[^first][^second]  To comply with these signature requirements, this page documents how to create and verify FHIR Digital Signatures when using advance directives. 
 
Signatures represent different levels of attestation:

- The signature of a provider or patient attests that the information is true and accurate to the best of their knowledge.
- The signature of a sending or receiving system is a system-level attestation that seals the information being sent or received. It is a complete and accurate representation of the shareable information from that system, meeting the requested criteria. This signature does NOT attest that the information is accurate because the system can't make that determination.

Consult with your legal team for questions regarding legal liability associated with sharing and signing data.
{:.bg-warning}

### Electronic Signatures

The term "electronic signature" means an electronic sound, symbol, or process attached to or logically associated with a contract or other record and executed or adopted by a person with the intent to sign the record.[^third]

The various forms of electronic signatures include:
- a typed-out name
- a graphical image that represents a handwritten signature
- a digitized handwritten signature
- digital signature using encryption technology

This guide specifies how to implement digital signatures in the following sections. Specific guidance for other electronic signatures is an implementation detail that is out of scope for this guide.

#### Electronic Signature Example

The electronic signature is a JPG Image that represents this handwritten signature:

{% include img.html img="jh-signature.jpg" %}

### Digital Signatures

*Digital Signatures* are a type of *Electronic signature* that meet the following functional requirements:

1. authentication  - They verify the identity of a person.
2. integrity -  They ensure the signed document has not been altered.
3. non-repudiation - The signer can not dispute their authorship (For example, if there is subsequent legal activity related to the signed document).

Digital Signatures employ encryption technology and a digital certificate issued by a certification authority (CA). The encryption ensures the signee has attested to the integrity of the data. A certificate issued by a CA that the Data Consumer trusts ensures that the Data Consumer can trust that the signature is authentic and non-repudiable.

#### Digital Signature Rules

1. **SHALL** use JSON Web Signature (JWS)(see [RFC 7515])
   JSON Web Signature (JWS) is a means of representing content secured with digital signatures or Hash-based Message Authentication Codes (HMACs) using JSON data structures. Cryptographic algorithms and identifiers used with this specification are enumerated in the separate JSON Web Algorithms (JWA). [^fourth]

    Implementers that support XML must be aware that JSON Web Signatures can only be created and validated in the original native JSON. Transforms to and from XML will invalidate signatures.
    {:.bg-warning} 

2. [JSON Signature rules](http://hl7.org/fhir/datatypes.html#JSON) specified in the FHIR specification. (reproduced below for reader convenience):
   When the signature is a JSON Digital Signature (contentType = application/jose), the following rules apply:
   - The Signature.data is base64 encoded JWS-Signature [RFC 7515: JSON Web Signature (JWS)]
   - The signature is a [Detached] Signature (where the content that is signed is removed from the JWS)
   - When FHIR Resources are signed, the signature is across the [Canonical JSON] form of the resource(s)
   - The Signature **SHOULD** use the hashing algorithm SHA256. The signature validation policy will apply to the signature and determine the acceptability
   - The Signature **SHALL** include a "CommitmentTypeIndication" element for the purpose(s) of the signature. The Purpose can be the action being attested to or the role associated with the signature. The value shall come from ASTM E1762-95(2013). The `Signature.type` shall contain the same values as the CommitmentTypeIndication element.

##### Sender/Signer Steps

1. Prepare JWS Header
    1.  **SHALL** have `"alg": "RS256"` (preferred) or some other JSON Web Algorithms (JWA) (see [RFC 7518])
    2.  **SHALL** have `"kty": "RS"`
    3.  **SHALL** have `"x5c"` (X.509 certificate chain) equal to an array of one or more base64-encoded (not base64url-encoded) DER representations of the public certificate or certificate chain (see [RFC 7517]).
The public key is listed in the first certificate in the `"x5c"` specified by the "Modulus" and "Exponent" parameters of the entry.
2. Prepare JWS Payload
    1. base64_url encode the payload
3. Create the JWS signature using the supported algorithm
4. Remove the payload element from the JWS
5. base64 encode the JWS
6. Add the Signature element and populate the mandatory Signature datatype elements and actual signature content:
   -  `Signature.type`  - Set to the appropriate [signature type](http://hl7.org/fhir/valueset-signature-type.html), such as an Identity Witness Signature
   -  `Signature.when`  - System timestamp when signature created
   -  `Signature.who`  -  Reference or identifier of the organization or practitioner who signed it
   -  `Signature.data`  - base64 encoded JWS
7. Send data to the consumer

##### Receiver/Validation Steps

The following steps outline the process for verifying the Signature.

1. Retrieve and store the resource
2. Canonicalize the resource
3. Transform the canonicalized json to a base64-url format
4. Get the base64 encoded JWS  from the `signature.data`  element
5. Base64 decode the encoded JWS
6. Insert the base64 encoded data into the JWS payload element.
7. Obtain the public key from the first certificate in the JWS header `"x5c"` key
    - base64 decode the key value
    - Use the "Subject Public Key Info"
8. Verify Issuer, Validity Dates, Subject, and KeyUsage of the certificate,
9. Validate the JWS using the public key or the X.509 Certificate

---

### Footnotes / References

[^first]: MLN Fact Sheet: Complying with Medicare Signature Requirements MLN Fact Sheet <https://www.cms.gov/Outreach-and-Education/Medicare-Learning-Network-MLN/MLNProducts/Downloads/Signature_Requirements_Fact_Sheet_ICN905364.pdf>
[^second]: CMS signature requirements outlined in the Medicare Program Integrity Manual (CMS Pub.100-08), Chapter 3, Section 3.3.2.4. <https://www.cms.gov/Regulations-and-Guidance/Guidance/Manuals/Downloads/pim83c03.pdf#page=44>
[^third]: "15 U.S. Code § 7006 - Definitions", LII / Legal Information Institute". Law.cornell.edu. Retrieved 2021-10-06. <https://www.law.cornell.edu/uscode/text/15/7006#5>
[^fourth]: [RFC 7515] Jones, M., et al., "JSON Web Signature (JWS)", RFC 7515, ISSN: 2070-1721, May 2015, <https://tools.ietf.org/html/rfc7515>

{% include link-list.md %}

