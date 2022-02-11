Alias: $ViewValueSet.action = https://phinvads.cdc.gov/vads/ViewValueSet.action?id=282D4DD8-39EA-4C5B-B8A9-B2C3E5878A15#

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