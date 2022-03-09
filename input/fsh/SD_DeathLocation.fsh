Profile: DeathLocation
Parent: USCoreLocation
Id: vrdr-death-location
Title: "Death Location"
Description: "Death Location (USCoreLocation)"
* insert RequireMetaProfile(DeathLocation)
* extension contains
    LocationJurisdictionId named nationalReportingJurisdictionId 1..1  // jurisdiction_id
// * name 1..1
// * description 1..1
* type 1..1
* type from $place-of-death (required)
* type ^short = "Place of Death type"
* address 1..1
* address ^short = "Place of Death address"
* address.city ^short = "Address city"
* address.state ^short = "Address state"
* address.district ^short = "Address county"
* address.country ^short = "Address country"
* address.postalCode ^short = "Address zip"
* address.line ^short = "Address text"
* address.state from JurisdictionVS (required)   // Reconsider.  Otherwise, get rid of extension
* address.country from ResidenceCountryVS (required)
* insert CityCode
* insert CountyCode
* insert AddressComponents
* position 0..1 MS
* position ^short = "Place of death lat/long" // LONG_D and LAT_D