Profile: MannerOfDeath
Parent: Observation
Id: VRDR-Manner-of-Death
Title: "VRDR Manner of Death"
* ^meta.versionId = "13"
* ^meta.lastUpdated = "2020-07-22T17:56:17.870+00:00"
* ^meta.source = "#LnHtbLbU4GqNgDNw"
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
* code = $loinc#69449-7 "Manner of death" (exactly)
* code ^short = "code"
* subject 1..1
* subject only Reference(Patient)
* subject ^short = "subject"
* performer 1..1
* performer only Reference(Practitioner)
* performer ^short = "performer"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $ViewValueSet.action_10 (required)
* value[x] ^binding.description = "PHVS_MannerOfDeath_NCHS"

Instance: d7c2e459-c7ca-415c-a38c-f78a0f0c5813
InstanceOf: MannerOfDeath
Title: "Manner of Death Example"
Description: "An instance example of the VRDR-Manner-of-Death resource profile."
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2020-07-22T18:51:08.127+00:00"
* meta.source = "#hVmaJTwX1XDu5R6Q"
* status = #final
* code = $loinc#69449-7 "Manner of death"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* performer.reference = "Practitioner/cb1219bc-785f-431c-9f56-b8fbbe78bc4d"
* valueCodeableConcept = $sct#7878000 "Accidental death"