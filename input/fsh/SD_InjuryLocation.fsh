Profile: InjuryLocation
Parent: USCoreLocation
Id: vrdr-injury-location
Title: "Injury Location"
Description: "Injury Location (USCoreLocation)"
* insert RequireMetaProfile(InjuryLocation)
* name 1..1
* description 1..1
* address 1..1
* position 0..1 MS  // LONG_I and LAT_I
* insert CityCode
* insert CountyCode
