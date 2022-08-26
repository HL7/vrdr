```
Instance: EntityAxisCauseOfDeath-Example3
InstanceOf: EntityAxisCauseOfDeath
Title: "EntityAxisCauseOfDeath-Example3"
Description: "EntityAxisCauseOfDeath-Example3"
Usage: #example
* status = #final
* code = http://loinc.org#80356-9
* subject.display = "NCHS generated"
* valueCodeableConcept = http://hl7.org/fhir/sid/icd-10#X00
* component[0].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#lineNumber
* component[=].valueInteger = 2
* component[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#position
* component[=].valueInteger = 2
* component[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#eCodeIndicator
* component[=].valueBoolean = true
```