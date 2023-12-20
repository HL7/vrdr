Instance: DispositionLocation-Example1
InstanceOf: Location
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-disposition-location"
* address
  * line = "303 Rosewood Ave"
  * city = "Danville"
  * state = "VA"
  * postalCode = "24541"
  * country = "US"
* type = $vrdr-location-type-cs#disposition
* name = "Rosewood Cemetary"
* physicalType = $location-physical-type#si "Site"