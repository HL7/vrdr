Profile: DispositionLocation
Parent: USCoreLocation
Id: VRDR-Disposition-Location
Title: "VRDR Disposition Location"
* ^meta.versionId = "16"
* ^meta.lastUpdated = "2020-08-17T03:44:29.675+00:00"
* ^meta.source = "#R0JjlUP3XBmks31q"
* ^version = "1.0"
* ^status = #draft
* ^experimental = false
* ^date = "2020-05-10"
* ^publisher = "Health Level Seven"
* ^contact.name = "AbdulMalik Shakir"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "abdulmalik.shakir@hi3solutions.com"
* ^contact.telecom.use = #work
* name 1..1
* name ^short = "name"
* description 0..1
* description ^short = "description"
* type 0..1
* type ^short = "type"
* type.coding from $v3-ServiceDeliveryLocationRoleType (extensible)
* type.coding ^binding.description = "v3.ServiceDeliveryLocationRoleType"
* address 1..1
* address ^short = "address"
* physicalType 1..1
* physicalType ^short = "physicalType"
* physicalType.coding from LocationType (required)
* physicalType.coding ^binding.description = "LocationType"

Instance: bbe38248-9a8d-414f-996e-58d5fc9eb800
InstanceOf: DispositionLocation
Title: "Disposition Location Example"
Description: "Instance example of the VRDR-Disposition-Location resource profile."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-22T20:39:55.120+00:00"
* meta.source = "#yZiQmsI8g0FQZ7SK"
* name = "Bedford Hospital"
* type = $v3-RoleCode#HOSP "Hospital"
* address.line[0] = "603 Example Street"
* address.line[+] = "Line 2"
* address.city = "Bedford"
* address.district = "Middlesex"
* address.state = "MA"
* address.postalCode = "01730"
* address.country = "United States"
* physicalType = $location-physical-type#bu "Building"