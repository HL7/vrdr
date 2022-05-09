```
Instance: DeathLocation-Example2
InstanceOf: DeathLocation
Title: "DeathLocation-Example2"
Description: "DeathLocation-Example2 - State != Jurisdiction"
Usage: #example
* type = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-location-type-cs#death
* address.city = "Queens"
* address.state = "NY"
* address.state.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Location-Jurisdiction-Id"
* address.state.extension.valueString = "YC"
* address.country = "US"
* name = "Pecan Grove Nursing Home"
* description = "nursing home"
* position.latitude = 38.889248
* position.longitude = -77.050636
```