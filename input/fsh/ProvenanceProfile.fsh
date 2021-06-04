Profile: PADIProvenance
// Does this need to derive from US Core DocumentReference? If so, need to review the requirements below and remove incompatible or redundant requirements
Parent: $USCoreProvenance
Id: PADI-Provenance
Title: "PACIO ADI Provenance"
Description: "[TODO] Advance Directive Interoperability Provanance baed on US Core"

* agent contains
    assembler 0..1 MS

* agent[assembler].type 1..1 MS 
* agent[assembler].type = $HL7ProvenancePartcipantType#assembler

// TODO US Core prevenance does not allow provenance agent.who of a device

* insert PADIProvenanceDescriptions


RuleSet: PADIProvenanceDescriptions
* agent[assembler] ^short = "Indicates the name of the system used to assemble the person's original advance care planning information into a document for exchange."
