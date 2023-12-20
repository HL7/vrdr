Instance: Certifier-Example1
InstanceOf: Practitioner
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-certifier"
* name
  * given = "Jim"
  * use = #official
  * family = "Black"
* address
  * line = "44 South Street"
  * city = "Bird in Hand"
  * state = "PA"
  * postalCode = "17505"
  * country = "US"
* identifier
  * system = "http://hl7.org/fhir/sid/us-npi"
  * value = "9941339100"
* qualification.code = $sct#434641000124105