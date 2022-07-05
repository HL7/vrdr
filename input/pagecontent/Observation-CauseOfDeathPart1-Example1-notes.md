```
Instance: CauseOfDeathPart1-Example1
InstanceOf: CauseOfDeathPart1
Title: "CauseOfDeathPart1-Example1"
Description: "CauseOfDeathPart1-Example1"
Usage: #example
* code = http://loinc.org#69453-9
* component[0].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#lineNumber
* component[=].valueInteger = 1
* component[+].code = http://loinc.org#69440-6
* component[=].valueString = "4 hours"
* valueCodeableConcept.text = "Cardiopulmonary arrest"
* subject.reference = "Patient/Decedent-Example1"
* performer.reference = "Practitioner/Certifier-Example1"
* status = #final
```