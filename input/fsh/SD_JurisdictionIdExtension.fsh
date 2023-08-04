
Extension: LocationJurisdictionId
Id: Location-Jurisdiction-Id
Title: "Location Jurisdiction Id"
Description: "Location Jurisdiction Id (Extension)"
* insert boilerplate
// * ^context.type = #extension
// * ^context.expression = "Location"
* insert ExtensionContextResource(string)
* insert ExtensionContextResource(Location)
* insert ExtensionContextResource(Extension)
* url 1..1
* value[x] 1..1
* value[x] only string
* valueString from JurisdictionVS (required)