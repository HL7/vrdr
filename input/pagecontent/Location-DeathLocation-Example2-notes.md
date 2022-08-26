```
Instance: DeathLocation-Example2
InstanceOf: DeathLocation
Title: "DeathLocation-Example2"
Description: "DeathLocation-Example2 - State != Jurisdiction"
Usage: #example
* name = "Pecan Grove Nursing Home"
* description = "nursing home"
* type = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-location-type-cs#death
* address.city = "Queens"
* address.state = "NY"
  * extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Location-Jurisdiction-Id"
  * extension.valueString = "YC"
* address.country = "US"
```