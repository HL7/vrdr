```
Instance: DecedentDispositionMethod-Example1
InstanceOf: DecedentDispositionMethod
Title: "DecedentDispositionMethod-Example1"
Description: "DecedentDispositionMethod-Example1"
Usage: #example
* extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/DispositionLocationReference"
* extension.valueReference = Reference(DispositionLocation-Example1)
* status = #final
* code = http://loinc.org#80905-3 "Body disposition method"
* subject = Reference(Decedent-Example1)
* performer = Reference(Mortician-Example1)
* valueCodeableConcept = http://snomed.info/sct#449971000124106 "Patient status determination, deceased and buried"
```