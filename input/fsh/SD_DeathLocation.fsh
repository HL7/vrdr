Profile: DeathLocation
Parent: USCoreLocation
Id: vrdr-death-location
Title: "Death Location"
Description: "Death Location (USCoreLocation)"
* insert RequireMetaProfile(DeathLocation)
* extension contains
    LocationJurisdictionId named nationalReportingJurisdictionId 1..1  // jurisdiction_id
* name 1..1
* description 1..1
* type 1..1
* type from $place-of-death (required)  // D_PLACE
* address 1..1
* insert CityCode
* insert CountyCode
* insert AddressComponents
* position 0..1 MS  // LONG_D and LAT_D