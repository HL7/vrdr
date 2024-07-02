/*  Certifier */
Instance: Pronouncer-Example1
InstanceOf: USCorePractitionerProfile
Usage: #example
Description: "Pronouncer-Example1"
* insert AddMetaProfile(USCorePractitionerProfile)
* name.use = #official
* name.family = "Purple"
* name.given = "Jane"
* address.line = "44 South Street"
* address.city = "Rockville"
* address.state = "MD"
* address.postalCode = "20854"
* address.country = "US"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "9941339101"
* qualification.code = $sct#434641000124105