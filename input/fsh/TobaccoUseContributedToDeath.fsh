Profile: TobaccoUseContributedToDeath
Parent: Observation
Id: VRDR-Tobacco-Use-Contributed-To-Death
Title: "VRDR Tobacco Use Contributed To Death"
* ^meta.versionId = "15"
* ^meta.lastUpdated = "2020-07-21T22:41:29.615+00:00"
* ^meta.source = "#epAu4Mw1B00QLLbS"
* ^version = "1.0"
* ^status = #draft
* ^publisher = "Hi3 Solutions"
* ^contact.name = "AbdulMalik Shakir"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "6266444491"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "abdulmalik.shakir@hi3solutions.com"
* ^contact.telecom[=].use = #work
* id 0..1
* id ^short = "id"
* status 1..1
* status only code
* status = #final (exactly)
* status ^short = "status"
* code 1..1
* code only CodeableConcept
* code = $loinc#69443-0 "Did tobacco use contribute to death" (exactly)
* code ^short = "code"
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "subject"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $ViewValueSet.action_12 (required)
* value[x] ^label = "valueCodeableConcept"
* value[x] ^short = "valueCodeableConcept"
* value[x] ^alias = "valueCodeableConcept"
* value[x] ^binding.description = "PHVS_ContributoryTobaccoUse_NCHS"

Instance: 4d0ce010-16f1-44f4-bbf8-3a2030e9de99
InstanceOf: TobaccoUseContributedToDeath
Title: "Tobacco Use Contributed To Death Example"
Description: "An instance example of the VRDR-Tobacco-Use-Contributed-To-Death resource profile."
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2020-07-21T22:40:43.185+00:00"
* meta.source = "#cIJIQkq7Q2smLbo1"
* status = #final
* code = $loinc#69443-0 "Did tobacco use contribute to death"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* valueCodeableConcept = $sct#373066001 "Yes"