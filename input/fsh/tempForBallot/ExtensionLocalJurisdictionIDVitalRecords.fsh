Extension: ExtensionLocationJurisdictionIdVitalRecords
Id: Extension-jurisdiction-id-vr
Title: "Location Jurisdiction Id Vital Records"
Description: "Location Jurisdiction Id (Extension) supports jurisdictions with a designator that isn't a USPS two-letter code"
* insert ExtensionContextResource(Address.state)
* url 1..1
* value[x] 1..1
* value[x] only string
* valueString from ValueSetJurisdictionVitalRecords  (required)