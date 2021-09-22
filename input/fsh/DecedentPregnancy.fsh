Profile: DecedentPregnancy
Parent: Observation
Id: VRDR-Decedent-Pregnancy
Title: "VRDR Decedent Pregnancy"
* ^meta.versionId = "13"
* ^meta.lastUpdated = "2020-07-11T22:49:04.426+00:00"
* ^meta.source = "#Xu6BTOfmEZYcJVsr"
* ^version = "1.0"
* ^status = #draft
* ^experimental = false
* ^date = "2020-05-10"
* ^publisher = "Health Level Seven"
* ^contact.name = "AbdulMalik Shakir"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "6266444491"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "abdulmalik.shakir@hi3solutions.com"
* ^contact.telecom[=].use = #work
* status 1..1
* status only code
* status = #final (exactly)
* status ^short = "status"
* code 1..1
* code only CodeableConcept
* code = $loinc#69442-2 "Timing of recent pregnancy in relation to death" (exactly)
* code ^short = "code"
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "subject"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $ViewValueSet.action_7 (required)
* value[x] ^short = "value[x]"
* value[x] ^binding.description = "PHVS_PregnancyStatus_NCHS"

Instance: 092e7b13-224d-46a6-ac31-0d98d4c84126
InstanceOf: DecedentPregnancy
Title: "Decedent Pregnancy Example"
Description: "An instance example of the VRDR-Decedent-Pregnancy resource profile."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-21T23:35:04.301+00:00"
* meta.source = "#WrDQeRxZcljjquQJ"
* status = #final
* code = $loinc#69442-2 "Timing of recent pregnancy in relation to death"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* valueCodeableConcept = $v3-NullFlavor#NA "not applicable"