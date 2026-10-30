Profile: ADIProvenanceWitnessNotary
Parent: $USCoreProvenance
Id: ADI-ProvenanceWitnessNotary
Title: "ADI Provenance"
Description: "Information-sharing provenance for use in 1) linking the Witness or Notary statements to witness or notary signatories 2) linking the witness and notary information block with the advance directive document."

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
* ^experimental = false

* agent contains
    ProvenanceAssembler 0..1 MS

* agent[ProvenanceAssembler].type 1..1 MS 
* agent[ProvenanceAssembler].type = $HL7ProvenanceParticipantType#assembler

* target only Reference(ADIPMOComposition)

* agent.role from $HL7DegreeLicenseCertificate (extensible)
* agent[ProvenanceAuthor].role from $HL7DegreeLicenseCertificate (extensible)
* agent[ProvenanceTransmitter].role from $HL7DegreeLicenseCertificate (extensible)


* signature 0..1 MS

* insert ADIProvenanceDescriptions


RuleSet: ADIProvenanceDescriptions
* agent[ProvenanceAssembler] ^short = "Indicates the name of the system used to assemble the person's original advance care planning information into a document for exchange."
