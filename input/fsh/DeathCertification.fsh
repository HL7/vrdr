Profile: DeathCertification
Parent: USCoreProcedureProfile
Id: VRDR-Death-Certification
Title: "VRDR Death Certification"
* ^meta.versionId = "17"
* ^meta.lastUpdated = "2020-07-12T20:36:37.886+00:00"
* ^meta.source = "#xWRkuQqK3Rm1PUtv"
* ^version = "1.0"
* ^status = #draft
* ^experimental = false
* ^date = "2020-05-09"
* ^publisher = "Health Level Seven"
* ^contact.name = "AbdulMalik Shakir"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "6266444491"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "abdulmalik.shakir@hi3solutions.com"
* ^contact.telecom[=].use = #work
* identifier 1..*
* status 1..1
* status only code
* status = #completed (exactly)
* status ^short = "status"
* category 1..1
* category only CodeableConcept
* category = $sct#103693007 "Diagnostic procedure" (exactly)
* category ^short = "category"
* code 1..1
* code only CodeableConcept
* code = $sct#308646001 "Death certification" (exactly)
* code ^short = "code"
* performed[x] 1..1
* performed[x] only dateTime
* performed[x] ^short = "certificationDatetime"
* performer 1..1
* performer.function 1..1
* performer.function from $ViewValueSet.action_4 (required)
* performer.function ^binding.description = "PHVS_CertifierTypes_NCHS"
* performer.actor 1..1
* performer.actor only Reference(VRDR_Certifier)

Instance: 219ef5e3-ed0c-4dab-88eb-b114daaebd73
InstanceOf: DeathCertification
Title: "Death Certification Instance Example"
Description: "An instance example of a Death Certification resource profile. This example Death Certification procedure performed by a physician on 2019-01-29."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-21T01:43:10.674+00:00"
* meta.source = "#8k18Qj8mbpzIKsUn"
* identifier.value = "aabcde9876543210"
* status = #completed
* category = $sct#103693007 "Diagnostic procedure"
* code = $sct#308646001 "Death certification"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* performedDateTime = "2019-01-29T16:48:06-05:00"
* performer.function = $sct#309343006 "Physician"
* performer.actor.reference = "Practitioner/cb1219bc-785f-431c-9f56-b8fbbe78bc4d"