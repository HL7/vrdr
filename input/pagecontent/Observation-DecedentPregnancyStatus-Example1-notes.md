```
Instance: DecedentPregnancyStatus-Example1
InstanceOf: DecedentPregnancyStatus
Title: "DecedentPregnancyStatus-Example1"
Description: "DecedentPregnancyStatus-Example1"
Usage: #example
* status = #final
* code = http://loinc.org#69442-2
* subject = Reference(Decedent-Example1)
* valueCodeableConcept.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/BypassEditFlag"
* valueCodeableConcept.extension.valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-bypass-edit-flag-cs#2 "Edit Failed, Data Queried, but not Verified"
* valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-pregnancy-status-cs#2 "Pregnant at time of death"
```