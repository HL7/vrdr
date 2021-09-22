Profile: VRDR_DecedentMilitaryService
Parent: Observation
Id: VRDR-Decedent-Military-Service
Title: "Decedent Military Service"
* ^meta.versionId = "13"
* ^meta.lastUpdated = "2020-07-23T13:20:16.090+00:00"
* ^meta.source = "#bRGT00bfET49wt1d"
* ^version = "1.0"
* ^status = #draft
* ^experimental = false
* ^publisher = "HL7 PHWG"
* ^contact.name = "AbdulMalik Shakir"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "abdulmalik.shakir@hi3solutions.com"
* ^contact.telecom.use = #work
* status 1..1
* status only code
* status = #final (exactly)
* code 1..1
* code only CodeableConcept
* code = $loinc#55280-2 "Military service Narrative" (exactly)
* subject 1..1
* subject only Reference(Decedent)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from YesNoUnknownVS (required)
* note 0..1

Instance: 636dafac-0d92-4649-b838-004bcf714f5aj
InstanceOf: VRDR_DecedentMilitaryService
Title: "Decedent Military Service Example"
Description: "An instance example of the VRDR-Decedent-Military-Service"
Usage: #example
* meta.versionId = "4"
* meta.lastUpdated = "2020-07-23T13:59:17.607+00:00"
* meta.source = "#hxQhOSxURa7t82BU"
* status = #final
* code = $loinc#55280-2 "Military service Narrative"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* valueCodeableConcept = * $v2-0532#Y "Yes"