Profile: InjuryLocation
Parent: USCoreLocation
Id: vrdr-injury-location
Title: "Injury Location"
Description: "Injury Location (USCoreLocation)"
* insert RequireMetaProfile(InjuryLocation)
// * name 1..1
// * description 1..1
* address 1..1
* address.state from StatesTerritoriesAndProvincesVS (required)
* position 0..1  // LONG_I and LAT_I
* position ^short = "Lat/Long of Injury"
* insert CityCode
* insert CountyCode
* type = LocationTypeCS#injury
