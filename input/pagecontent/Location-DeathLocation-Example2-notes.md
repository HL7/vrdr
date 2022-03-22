```
Instance: DeathLocation-Example2
InstanceOf: DeathLocation
Title: "DeathLocation-Example2"
Description: "DeathLocation-Example2 - State != Jurisdiction"
Usage: #example
* address.city = "Queens"
* address.state = "NY"
* address.state.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Location-Jurisdiction-Id"
* address.state.extension.valueString = "YC"
* address.country = "US"
* name = "Pecan Grove Nursing Home"
* description = "nursing home"
* type = http://snomed.info/sct#450381000124100
```