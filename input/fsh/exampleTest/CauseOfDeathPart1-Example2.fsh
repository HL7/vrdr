Instance: CauseOfDeathPart1-Example2
InstanceOf: Observation
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part1"
* valueCodeableConcept.text = "Eclampsia"
* component[0]
  * code = $vrdr-component-cs#lineNumber
  * valueInteger = 2
* component[+]
  * code = $loinc#69440-6
  * valueString = "3 months"
* performer = Reference(Certifier-Example1)
* code = $loinc#69453-9
* subject = Reference(Decedent-Example1)
* status = #final