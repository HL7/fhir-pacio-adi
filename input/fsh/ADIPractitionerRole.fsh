Profile: ADIPractitionerRole
Parent: $USCorePractitionerRole
Id: ADI-PractitionerRole
Title: "ADI Practitioner Role"
Description: "This profile represents a provider who is involved the patient in advance care planning services, including those in a supervisory role."

* code 1..1 MS
  * ^binding.extension.url = $additional-binding
  * ^binding.extension.extension[0].url = "valueSet"
  * ^binding.extension.extension[=].valueCanonical = $ADIPractitionerRoleVS
  * ^binding.extension.extension[+].url = "purpose"
  * ^binding.extension.extension[=].valueCode = #extensible
  * ^binding.extension.extension[+].url = "documentation"
  * ^binding.extension.extension[=].valueMarkdown = "Practitioners in a supervisory role."
