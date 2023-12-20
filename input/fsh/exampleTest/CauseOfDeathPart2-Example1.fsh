Instance: CauseOfDeathPart2-Example1
InstanceOf: Observation
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part2"
* valueCodeableConcept.text = "hypertensive heart disease"
* performer = Reference(Certifier-Example1)
* code = $loinc#69441-4
* subject = Reference(Decedent-Example1)
* status = #final