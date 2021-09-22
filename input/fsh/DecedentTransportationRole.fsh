Profile: DecedentTransportationRole
Parent: Observation
Id: VRDR-Decedent-Transportation-Role
Title: "VRDR Decedent Transportation Role"
* ^meta.versionId = "11"
* ^meta.lastUpdated = "2020-07-11T22:49:56.139+00:00"
* ^meta.source = "#44li4MkRDim3cNXI"
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
* code = $loinc#69451-3 "Transportation role of decedent" (exactly)
* code ^short = "code"
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "subject"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $ViewValueSet.action_8 (required)
* value[x] ^short = "value[x]"
* value[x] ^binding.description = "PHVS_TransportationRelationships_NCHS"

Instance: 4424113f-69c4-40fe-b88f-d7b03304dfe4
InstanceOf: DecedentTransportationRole
Title: "Decedent Transportation Role Example"
Description: "An instance example of the VRDR-Decedent-Transportation-Role resource profile."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-22T23:18:00.040+00:00"
* meta.source = "#bhLB1j17Wy19Bz9I"
* status = #final
* code = $loinc#69451-3 "Transportation role of decedent"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* valueCodeableConcept = $sct#257500003 "Passenger"