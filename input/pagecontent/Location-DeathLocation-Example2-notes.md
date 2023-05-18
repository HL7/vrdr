```
Instance: DeathLocation-Example2
InstanceOf: DeathLocation
Title: "DeathLocation-Example2"
Description: "DeathLocation-Example2 - State != Jurisdiction"
Usage: #example
* name = "Pecan Grove Nursing Home"
* description = "nursing home"
* type = LocationTypeCS#death
* address
  * city = "Queens"
  * state = "NY"
    * extension
      * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Location-Jurisdiction-Id"
      * valueString = "YC"
  * country = "US"
```