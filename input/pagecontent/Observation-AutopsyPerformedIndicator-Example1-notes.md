```
Instance: AutopsyPerformedIndicator-Example1
InstanceOf: AutopsyPerformedIndicator
Title: "AutopsyPerformedIndicator-Example1"
Description: "AutopsyPerformedIndicator-Example1"
Usage: #example
* status = #final
* code = http://loinc.org#85699-7 "Autopsy was performed"
* component.code = http://loinc.org#69436-4 "Autopsy results available"
* component.valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0136#Y "Yes"
* subject.reference = "Patient/Decedent-Example1"
* valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0136#Y "Yes"
```