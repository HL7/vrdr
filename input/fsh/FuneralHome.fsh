Profile: FuneralHome
Parent: USCoreOrganizationProfile
Id: VRDR-Funeral-Home
Title: "VRDR Funeral Home"
* ^meta.versionId = "11"
* ^meta.lastUpdated = "2020-07-12T20:48:16.230+00:00"
* ^meta.source = "#f0OiHR37z6PHVn6U"
* ^version = "1.0"
* ^status = #draft
* ^experimental = false
* ^date = "2020-05-10"
* ^publisher = "Health Level Seven"
* ^contact.name = "AbdulMalik Shakir"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "abdulmalik.shakir@hi3solutions.com"
* ^contact.telecom.use = #work
* id 0..1
* id ^short = "id"
* identifier 0..*
* type 1..1
* type = $organization-type#bus "Non-Healthcare Business or Corporation" (exactly)
* type ^short = "type"
* name 1..1
* name ^short = "name"
* address 1..1
* address ^short = "address"

Instance: 6f47da13-0c25-483b-8729-7b96716b17fc
InstanceOf: FuneralHome
Title: "Funeral Home Example"
Description: "An instance example of the VRDR-Funeral-Home resource profile."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-22T13:44:54.456+00:00"
* meta.source = "#rcCxHuRNpH2lnKn5"
* active = true
* type = $organization-type#bus "Non-Healthcare Business or Corporation"
* name = "Smith Funeral Home"
* address.line[0] = "1011010 Example Street"
* address.line[+] = "Line 2"
* address.city = "Bedford"
* address.district = "Middlesex"
* address.state = "MA"
* address.postalCode = "01730"
* address.country = "United States"