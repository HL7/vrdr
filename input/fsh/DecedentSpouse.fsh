Profile: DecedentSpouse
Parent: RelatedPerson
Id: VRDR-Decedent-Spouse
Title: "VRDR Decedent Spouse"
* ^meta.versionId = "9"
* ^meta.lastUpdated = "2020-07-11T22:49:29.228+00:00"
* ^meta.source = "#WNGgSjS3ZSZMbp8W"
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
* patient 1..1
* patient only Reference(Decedent)
* patient ^short = "patient"
* relationship 1..1
* relationship only CodeableConcept
* relationship = $v3-RoleCode#SPS "spouse" (exactly)
* relationship ^short = "relationship"
* name 1..1

Instance: 962fded4-b90a-44f7-950e-3832011ad65f
InstanceOf: DecedentSpouse
Title: "Decedent Spouse Example"
Description: "An instance example of the VRDR-Decedent-Spouse example."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-22T05:39:30.286+00:00"
* meta.source = "#PGjsDV0MqNsjbXzo"
* patient.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* relationship = $v3-RoleCode#SPS "spouse"
* name.family = "Last"
* name.given[0] = "Spouse"
* name.given[+] = "Middle"
* name.suffix = "Ph.D."