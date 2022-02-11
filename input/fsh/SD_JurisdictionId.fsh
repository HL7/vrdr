
Extension: LocationJurisdictionId
Id: Location-Jurisdiction-Id
Title: "Location Jurisdiction Id"
* insert boilerplate
* ^context.type = #extension
* ^context.expression = "Location"
* url 1..1
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from JurisdictionVS (required)