```
Instance: CauseOfDeathPathway-Example1
InstanceOf: CauseOfDeathPathway
Title: "CauseOfDeathPathway-Example1"
Description: "CauseOfDeathPathway-Example1"
Usage: #example
* status = #current
* mode = #snapshot
* orderedBy = http://terminology.hl7.org/CodeSystem/list-order#priority "Sorted by Priority"
* source.reference = "Practitioner/Certifier-Example1"
* entry[0].item.reference = "Observation/CauseOfDeathPart1-Example1"
* entry[+].item.reference = "Observation/CauseOfDeathPart1-Example2"
```