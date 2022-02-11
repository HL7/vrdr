Profile: InterestedParty
Parent: USCoreOrganizationProfile
Id: vrdr-interested-party
Title: "Interested Party"
* ^meta.versionId = "9"
* ^meta.lastUpdated = "2020-07-12T20:50:19.198+00:00"
* ^meta.source = "#eGOxlRQeMmKTfK2R"
* ^version = "1.1.0"
* ^status = #draft
* ^date = "2022-02-07T07:31:36+00:00"
* ^publisher = "Health Level Seven International"
* ^contact[0].name = "HL7 International - Public Health"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^contact[+].name = "Cynthia Bush, Health Scientist (Informatics), CDC/National Center for Health Statistics"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "pdz1@cdc.gov"
* ^contact[+].name = "AbdulMalik Shakir, FHL7, President and Chief Informatics Scientist Hi3 Solutions"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "abdulmalik.shakir@hi3solutions.com"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "US Realm"
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