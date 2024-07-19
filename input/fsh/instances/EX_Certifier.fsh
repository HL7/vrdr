
/*  Certifier */
Instance: Certifier-Example1
InstanceOf: Certifier
Usage: #example
Description: "Certifier-Example1"
* insert AddMetaProfile(Certifier)
* name.use = #official
* name.family = "Black"
* name.given = "Jim"
* address.line = "44 South Street"
* address.city = "Bird in Hand"
* address.state = "PA"
* address.postalCode = "17505"
* address.country = "US"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "9941339100"

Instance: Certifier-Example2-no-NPI
InstanceOf: Certifier
Usage: #example
Description: "Certifier-Example2 (no NPI)"
* insert AddMetaProfile(Certifier)
* name.use = #official
* name.family = "Black"
* name.given = "Jim"
* address.line = "44 South Street"
* address.city = "Bird in Hand"
* address.state = "PA"
* address.postalCode = "17505"
* address.country = "US"
* identifier.extension[0]
  * url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
  * valueCode = #unknown