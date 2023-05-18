```
Instance: EntityAxisCauseOfDeath-Example1
InstanceOf: EntityAxisCauseOfDeath
Title: "EntityAxisCauseOfDeath-Example1"
Description: "EntityAxisCauseOfDeath-Example1"
Usage: #example
* status = #final
* code = http://loinc.org#80356-9
* subject.display = "NCHS generated"
* valueCodeableConcept = http://hl7.org/fhir/sid/icd-10#J96.0
* component[0]
  * code = ComponentCS#lineNumber
  * valueInteger = 1
* component[+]
  * code = ComponentCS#position
  * valueInteger = 1
```