Profile: VRDR_Certifier
Parent: USCorePractitionerProfile
Id: VRDR-Certifier
Title: "VRDR Certifier"
* ^meta.versionId = "8"
* ^meta.lastUpdated = "2020-07-12T20:51:27.558+00:00"
* ^meta.source = "#k50jR3VnygtJK6fU"
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
* ^context.type = #element
* ^context.expression = "Practitioner"
* id 0..1
* id ^short = "id"
* id ^definition = "MAY contain zero or one [0..1] id (CONF:4393-300)."
* name 1..1
* name ^short = "name"
* name ^definition = "SHALL contain exactly one [1..1] name (CONF:4393-303)."
* address 0..1
* address ^short = "address"
* address ^definition = "SHALL contain zero or one [0..1] address (CONF:4393-302)."
* qualification 1..1
* qualification only BackboneElement
* qualification ^short = "qualification"
* qualification ^definition = "SHALL contain exactly one [1..1] qualification, which SHALL be selected from ValueSet v2table0360,Version2.7 http://hl7.org/fhir/ValueSet/v2table0360,Version2.7 DYNAMIC (CONF:4393-304)."
* qualification.identifier 1..1
* qualification.identifier ^short = "identifier"
* qualification.identifier ^definition = "This qualification SHALL contain exactly one [1..1] identifier (CONF:4393-305)."
* qualification.code 1..1
* qualification.code from $ViewValueSet.action_4 (required)
* qualification.code ^binding.description = "Identifier Type Codes"

Instance: cb1219bc-785f-431c-9f56-b8fbbe78bc4d
InstanceOf: VRDR_Certifier
Title: "Certifier Instance Example"
Description: "An instance example of a Certifier resource profile. This example is a certifying physician."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-21T01:29:51.589+00:00"
* meta.source = "#oHTVk2uNpGANjZpI"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "2233445511"
* name.use = #official
* name.family = "Last"
* name.given[0] = "Doctor"
* name.given[+] = "Middle"
* name.suffix = "Jr."
* address.line[0] = "11 Example Street"
* address.line[+] = "Line 2"
* address.city = "Bedford"
* address.district = "Middlesex"
* address.state = "MA"
* address.postalCode = "01730"
* address.country = "United States"
* qualification.identifier.value = "789123456"
* qualification.code = $sct#309343006 "Physician"