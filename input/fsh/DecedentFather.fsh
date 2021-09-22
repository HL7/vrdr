Profile: DecedentFather
Parent: RelatedPerson
Id: VRDR-Decedent-Father
Title: "Decedent Father"
* ^meta.versionId = "13"
* ^meta.lastUpdated = "2020-07-12T17:08:13.410+00:00"
* ^meta.source = "#UgDGRjf1iqeh6k0e"
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
* relationship = $v3-RoleCode#FTH "father" (exactly)
* relationship ^short = "relationship"
* name 1..1
* name ^short = "name"
* address 0..1

Instance: 976c548f-9460-42f2-b41e-390b3bee91c8
InstanceOf: DecedentFather
Title: "Decedent Father Example"
Description: "An instance example of the VRDR-Decedent-Father resource profile."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-22T13:15:15.056+00:00"
* meta.source = "#fZ6Xx77uM1YRkplb"
* patient.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* relationship = $v3-RoleCode#FTH "father"
* name.family = "Last"
* name.given[0] = "Father"
* name.given[+] = "Middle"
* name.suffix = "Sr."