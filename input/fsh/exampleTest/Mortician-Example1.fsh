Instance: Mortician-Example1
InstanceOf: Practitioner
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
* identifier
  * system = "http://hl7.org/fhir/sid/us-npi"
  * value = "212222AB"
* name
  * given[0] = "Ronald"
  * given[+] = "Q"
  * use = #official
  * family = "Smith"