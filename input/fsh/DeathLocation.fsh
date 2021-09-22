Profile: DeathLocation
Parent: USCoreLocation
Id: VRDR-Death-Location
Title: "VRDR Death Location"
* ^meta.versionId = "25"
* ^meta.lastUpdated = "2021-08-09T06:03:11.654+00:00"
* ^meta.source = "#LknNyIzX0yovEqKS"
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
* extension 0..*
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains LocationJurisdictionId named nationalReportingJurisdictionId 1..1
* name 1..1
* name ^short = "name"
* description 1..1
* description ^short = "description"
* type 1..1
* type from $ViewValueSet.action_13 (required)
* type ^short = "type"
* type ^binding.description = "PHVS_PlaceOfDeath_NCHS"
* address 1..1
* address ^short = "address"
* position 0..1

Instance: b7de6056-817f-4d73-9830-ce566accd044
InstanceOf: DeathLocation
Title: "Death Location Example"
Description: "An instance example of the VRDR-Death-Location resource profile."
Usage: #example
* meta.versionId = "21"
* meta.lastUpdated = "2020-08-19T08:29:15.044+00:00"
* meta.source = "#wKKh1WwcfoE82FMR"
* name = "Example Death Location Name"
* description = "Example Death Location Description"
* type = $sct#16983000 "Death in hospital"
* address.line[0] = "671 Example Street"
* address.line[+] = "Line 2"
* address.city = "Bedford"
* address.district = "Middlesex"
* address.state = "MA"
* address.postalCode = "01730"
* address.country = "United States"
* extension[nationalReportingJurisdictionId].value[x] = urn:oid:2.16.840.1.113883.6.92#MA "Massachusets"
