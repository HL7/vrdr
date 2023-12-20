Instance: DecedentUsualWork-Example2
InstanceOf: Observation
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-usual-work"
* valueCodeableConcept.text = "secretary"
* component
  * valueCodeableConcept.text = "State agency"
  * code = $loinc#21844-6
* code = $loinc#21843-8
* status = #final
* subject = Reference(Decedent-Example1)