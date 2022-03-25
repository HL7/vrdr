```
Instance: CauseOfDeathPart1-Example1
InstanceOf: CauseOfDeathPart1
Title: "CauseOfDeathPart1-Example1"
Description: "CauseOfDeathPart1-Example1"
Usage: #example
* status = #final
* code = http://loinc.org#69453-9 "Cause of death [US Standard Certificate of Death]"
* subject = Reference(Decedent-Example1)
* performer = Reference(Certifier-Example1)
* valueCodeableConcept.text = "Cardiopulmonary arrest"
* component.code = http://loinc.org#69440-6 "Disease onset to death interval"
* component.valueString = "4 hours"
```