Instance: CauseOfDeathPart1-Example1
InstanceOf: Observation
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part1"
* valueCodeableConcept.text = "Cardiopulmonary arrest"
* component[0]
  * code = $vrdr-component-cs#lineNumber
  * valueInteger = 1
* component[+]
  * code = $loinc#69440-6
  * valueString = "4 hours"
* performer = Reference(Certifier-Example1)
* code = $loinc#69453-9
* subject = Reference(Decedent-Example1)
* status = #final