
Extension: LocationJurisdictionId
Id: Location-Jurisdiction-Id
Title: "Location Jurisdiction Id"
Description: "Location Jurisdiction Id (Extension) supports jurisdictions with a designator that isn't a USPS two-letter code"
* insert boilerplate
* insert WGExtension
// * ^context.type = #extension
// * ^context.expression = "Location"
* insert ExtensionContextResource(Address.state)
// * insert ExtensionContextResource(Location)
// * insert ExtensionContextResource(Extension)
* url 1..1
* value[x] 1..1
* value[x] only string
* valueString from JurisdictionVS (required)