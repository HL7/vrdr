Extension: LocationJurisdictionId
Id: Location-Jurisdiction-Id
Title: "Location Jurisdiction Id"
* ^meta.versionId = "6"
* ^meta.lastUpdated = "2020-10-23T21:59:46.639+00:00"
* ^meta.source = "#S4UJik7apd2owgyl"
* ^kind = #resource
* ^context.expression = "Location"
* url 1..1
* url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Location-Jurisdiction-Id" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from VRDRJurisdictionVS (required)