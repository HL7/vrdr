```
Instance: InjuryIncident-Example1
InstanceOf: InjuryIncident
Title: "InjuryIncident-Example1"
Description: "InjuryIncident-Example1 (with literal transportationRole)"
Usage: #example
* status = #final
* code = http://loinc.org#11374-6
* subject = Reference(Decedent-Example1)
* effectiveDateTime = "2019-11-02T13:00:00-05:00"
* valueCodeableConcept.text = "drug toxicity"
* component[0].code = http://loinc.org#69444-8
* component[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0136#N "No"
* component[+].code = http://loinc.org#69450-5
* component[=].valueCodeableConcept.text = "Home"
* component[+].code = http://loinc.org#69451-3
* component[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#OTH "Other"
  * text = "Hoverboard Rider"
```