Profile: DeathPronouncementPerformer
Parent: USCorePractitionerProfile
Id: VRDR-Death-Pronouncement-Performer
Title: "VRDR Death Pronouncement Performer"
* ^meta.versionId = "7"
* ^meta.lastUpdated = "2020-07-12T20:52:38.577+00:00"
* ^meta.source = "#PYa7KArWUL0ZifDQ"
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
* identifier 1..1
* name 1..1
* name ^short = "name"

Instance: 9102c234-53ca-4066-8452-42f3ba751c7d
InstanceOf: DeathPronouncementPerformer
Title: "Death Pronouncement Performer Example"
Description: "An instance example of the VRDR-Death-Pronouncement-Performer resource profile"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-25T23:44:52.912+00:00"
* meta.source = "#lSYCtKrCXgjr2pRs"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "1122334455"
* name.use = #official
* name.family = "Last"
* name.given[0] = "Doctor"
* name.given[+] = "Middle"
* name.suffix = "Jr."