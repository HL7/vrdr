Profile: InjuryLocation
Parent: LocationVitalRecords
Id: vrdr-injury-location
Title: "Injury Location"
Description: "Injury Location (LocationVitalRecords)"
* insert RequireMetaProfile(InjuryLocation)
* position ^short = "Lat/Long of Injury"
* type = LocationTypeCS#injury
* type 1..1
* address.city ^short = "City"
  * extension[cityCode] ^short = "city code"
* address.state ^short = "State"
* address.district ^short = "County"
  * extension[districtCode] ^short = "county code"
* position ^short = "Place of injury lat/long" // LONG_D and LAT_D
  * latitude ^short = "Place of injury latitude" // LONG_D and LAT_D
  * longitude ^short = "Place of injury longitude" // LONG_D and LAT_D