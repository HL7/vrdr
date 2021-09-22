Profile: InjuryLocation
Parent: USCoreLocation
Id: VRDR-Injury-Location
Title: "VRDR Injury Location"
* ^meta.versionId = "10"
* ^meta.lastUpdated = "2021-08-09T06:03:42.501+00:00"
* ^meta.source = "#945P6DsfFkELQFrx"
* ^version = "1.0"
* ^status = #draft
* ^experimental = false
* ^date = "2020-05-13"
* ^publisher = "Health Level Seven"
* ^contact.name = "AbdulMalik Shakir"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "6266444491"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "abdulmalik.shakir@hi3solutions.com"
* ^contact.telecom[=].use = #work
* id 0..1
* id ^short = "id"
* name 1..1
* name ^short = "name"
* description 1..1
* description ^short = "description"
* address 1..1
* address ^short = "address"
* position 0..1

Instance: 4b863da8-1bb5-4b17-9be2-4ea39b5d3a2a
InstanceOf: InjuryLocation
Title: "Injury Location Example"
Description: "An instance example of the VRDR-Injury-Location resource profile."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-21T21:43:41.124+00:00"
* meta.source = "#8kCZvAXky7HUqlzZ"
* name = "Example Injury Location Name"
* description = "Example Injury Location Description"
* address.line[0] = "781 Example Street"
* address.line[+] = "Line 2"
* address.city = "54321"
* address.district = "OTH"
* address.state = "MA"
* address.postalCode = "01730"
* address.country = "US"
* position.longitude = 38.8951
* position.latitude = 77.0364