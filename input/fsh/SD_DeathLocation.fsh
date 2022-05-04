Profile: DeathLocation
Parent: USCoreLocation
Id: vrdr-death-location
Title: "Death Location"
Description: "Death Location (USCoreLocation)"
* insert RequireMetaProfile(DeathLocation)
// * name 1..1
// * description 1..1
* type = LocationTypeCS#death
* type 1..1
* name ^short = "Name of Death Location"
* address 1..1
* address ^short = "Place of Death address"
* address.city ^short = "Address city"
* address.state ^short = "Address state"
* address.district ^short = "Address county"
* address.country ^short = "Address country"
* address.postalCode ^short = "Address zip"
* address.line ^short = "Address text"
* address.state from StatesTerritoriesAndProvincesVS  (required)
* address.state 1..1
* address.state ^short = "State/Jurisdiction of death.  Use value in Jurisdiction if present."
* address.state.extension contains
    LocationJurisdictionId named nationalReportingJurisdictionId 0..1  // jurisdiction_id
* address.country from ResidenceCountryVS (required)
* insert CityCode
* insert CountyCode
* insert AddressComponents
* position 0..1
* position ^short = "Place of death lat/long" // LONG_D and LAT_D