```
Instance: DecedentTransportationRole-Example2
InstanceOf: DecedentTransportationRole
Title: "DecedentTransportationRole-Example2"
Description: "DecedentTransportationRole-Example2.   When value = OTH, text field should contain actual role"
Usage: #example
* status = #final
* code = http://loinc.org#69451-3 "Transportation role of decedent"
* subject = Reference(Decedent-Example1)
* valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#OTH "Other"
* valueCodeableConcept.text = "Hoverboard Rider"
```