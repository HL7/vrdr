Instance: DecedentSpouse-Example1
InstanceOf: RelatedPerson
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-spouse"
* name
  * given = "Samuel"
  * suffix = "III"
  * text = "Decedent Spouse"
  * use = #maiden
  * family = "Gazette"
* active = true
* relationship = $v3-RoleCode#SPS
* patient = Reference(Decedent-Example1)