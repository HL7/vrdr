Profile: Mortician
Parent: USCorePractitionerProfile
Id: VRDR-Mortician
Title: "VRDR Mortician"
* ^meta.versionId = "7"
* ^meta.lastUpdated = "2020-07-12T20:53:15.849+00:00"
* ^meta.source = "#k32Cm7rzsaO3hzre"
* ^version = "1.0"
* ^status = #draft
* ^publisher = "Hi3 Solutions"
* ^contact.name = "AbdulMalik Shakir"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "abdulmalik.shakir@hi3solutions.com"
* ^contact.telecom.use = #work

Instance: 80db6f45-8a6d-4583-8a03-55a6663523c2
InstanceOf: Mortician
Title: "Mortician Example"
Description: "An instance example of the VRDR-Mortician resource profile."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-22T04:35:39.126+00:00"
* meta.source = "#Mze6QKeTUorpQzO2"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "1122334455"
* name.use = #official
* name.family = "Last"
* name.given[0] = "FD"
* name.given[+] = "Middle"
* name.suffix = "Jr."
* qualification.identifier.value = "9876543210"
* qualification.code = $sct#309343006 "Physician"
* qualification.code.text = "Physician"