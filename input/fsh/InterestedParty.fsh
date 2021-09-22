Profile: InterestedParty
Parent: USCoreOrganizationProfile
Id: VRDR-Interested-Party
Title: "VRDR Interested Party"
* ^meta.versionId = "9"
* ^meta.lastUpdated = "2020-07-12T20:50:19.198+00:00"
* ^meta.source = "#eGOxlRQeMmKTfK2R"
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
* identifier 1..1
* identifier ^short = "identifier"
* active 1..1
* active ^short = "active"
* type 1..1
* type only CodeableConcept
* type from OrganizationType (required)
* type ^short = "type"
* name 1..1
* name ^short = "name"
* address 1..1
* address ^short = "address"
* partOf 0..1
* partOf only Reference(InterestedParty)
* partOf ^short = "partOf"

Instance: 1a110397-936f-4be4-ab10-2caed226569d
InstanceOf: InterestedParty
Title: "Interested Party Instance Example"
Description: "An instance example of the Interested Party resource profile. In the example, Example Hospital from MA is an active Healthcare Provider interested party."
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2020-07-21T20:13:30.256+00:00"
* meta.source = "#WNc8XRJBmrGtNJO7"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "1010101"
* active = true
* type = $organization-type#prov "Healthcare Provider"
* name = "Example Hospital"
* address.line[0] = "10 Example Street"
* address.line[+] = "Line 2"
* address.city = "Bedford"
* address.district = "Middlesex"
* address.state = "MA"
* address.postalCode = "01730"
* address.country = "United States"