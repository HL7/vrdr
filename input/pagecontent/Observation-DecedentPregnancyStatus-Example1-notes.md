```
Instance: DecedentPregnancyStatus-Example1
InstanceOf: DecedentPregnancyStatus
Title: "DecedentPregnancyStatus-Example1"
Description: "DecedentPregnancyStatus-Example1"
Usage: #example
* status = #final
* code = http://loinc.org#69442-2
* subject = Reference(Decedent-Example1)
* valueCodeableConcept = PregnancyStatusCS#2 "Pregnant at time of death"
  * extension
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/BypassEditFlag"
    * valueCodeableConcept = BypassEditFlagCS#2 "Edit Failed, Data Queried, but not Verified"
```