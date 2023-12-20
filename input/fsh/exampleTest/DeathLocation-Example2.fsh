Instance: DeathLocation-Example2
InstanceOf: Location
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-location"
* address
  * city = "Queens"
  * state = "NY"
    * extension
      * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Location-Jurisdiction-Id"
      * valueString = "YC"
  * country = "US"
* type = $vrdr-location-type-cs#death
* name = "Pecan Grove Nursing Home"
* description = "nursing home"