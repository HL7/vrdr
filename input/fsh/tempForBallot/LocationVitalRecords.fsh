Profile: LocationVitalRecords
Parent: USCoreLocation
Id: Location-vr
Title: "Location for Vital Records"
Description: "Vital Records Location -- defines (but does not require) the standard address extensions for vital records."
* ^abstract = true 
// * name 1..1
// * description 1..1
* type ^short = "Type is used to differentiate profiles of this abstract profile"
* name ^short = "Name of Location"
* address ^short = "Address"
* address.city ^short = "Address city"
* address.state ^short = "Address state"
* address.district ^short = "Address county"
* address.country ^short = "Address country"
* address.postalCode ^short = "Address zip"
* address.line ^short = "Address text"
* address.state from ValueSetStatesTerritoriesAndProvincesVitalRecords  (required)
* address.state ^short = "State/Jurisdiction.  Use value in Jurisdiction if present."
* address.state.extension contains
    ExtensionLocationJurisdictionIdVitalRecords named nationalReportingJurisdictionId 0..1  // jurisdiction_id
* address.country from ValueSetResidenceCountryVitalRecords (required)
* insert CityCode
* insert CountyCode
* insert AddressComponents
* position 0..1
* position ^short = "Geoposition lat/long" 