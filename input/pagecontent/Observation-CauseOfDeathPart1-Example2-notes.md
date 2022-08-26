```
Instance: CauseOfDeathPart1-Example2
InstanceOf: CauseOfDeathPart1
Title: "CauseOfDeathPart1-Example2"
Description: "CauseOfDeathPart1-Example2"
Usage: #example
* status = #final
* code = http://loinc.org#69453-9
* subject = Reference(Decedent-Example1)
* performer = Reference(Certifier-Example1)
* valueCodeableConcept.text = "Eclampsia"
* component[0].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#lineNumber
* component[=].valueInteger = 2
* component[+].code = http://loinc.org#69440-6
* component[=].valueString = "3 months"
```