```
Instance: EntityAxisCauseOfDeath-Example2
InstanceOf: EntityAxisCauseOfDeath
Title: "EntityAxisCauseOfDeath-Example2"
Description: "EntityAxisCauseOfDeath-Example2"
Usage: #example
* status = #final
* code = http://loinc.org#80356-9
* subject.display = "NCHS generated"
* valueCodeableConcept = http://hl7.org/fhir/sid/icd-10#T27.3
* component[0]
  * code = ComponentCS#lineNumber
  * valueInteger = 2
* component[+]
  * code = ComponentCS#position
  * valueInteger = 1
```