```
Instance: CauseOfDeathPathway-Example1
InstanceOf: CauseOfDeathPathway
Title: "CauseOfDeathPathway-Example1"
Description: "CauseOfDeathPathway-Example1"
Usage: #example
* status = #current
* mode = #snapshot
* source = Reference(Certifier-Example1)
* orderedBy = http://terminology.hl7.org/CodeSystem/list-order#priority "Sorted by Priority"
* entry[0].item = Reference(CauseOfDeathPart1-Example1)
* entry[+].item = Reference(CauseOfDeathPart1-Example2)
```