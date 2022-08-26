```
Instance: DecedentAge-Example1
InstanceOf: DecedentAge
Title: "DecedentAge-Example1"
Description: "DecedentAge-Example1"
Usage: #example
* status = #final
* code = http://loinc.org#39016-1
* subject = Reference(Decedent-Example1)
* valueQuantity.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/BypassEditFlag"
* valueQuantity.extension.valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-bypass-edit-flag-cs#0 "Edit Passed"
* valueQuantity = 42 'a' "years"
```