Instance: DecedentFather-Example1
InstanceOf: RelatedPerson
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-father"
* name
  * given = "John"
  * suffix = "Sr"
  * text = "Decedent Dad"
  * use = #official
  * family = "Smith"
* active = true
* relationship = $v3-RoleCode#FTH
* patient = Reference(Decedent-Example1)