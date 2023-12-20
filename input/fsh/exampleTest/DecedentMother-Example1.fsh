Instance: DecedentMother-Example1
InstanceOf: RelatedPerson
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-mother"
* name
  * given = "Jane"
  * text = "Decedent Mom"
  * use = #maiden
  * family = "Suzette"
* active = true
* relationship = $v3-RoleCode#MTH
* patient = Reference(Decedent-Example1)