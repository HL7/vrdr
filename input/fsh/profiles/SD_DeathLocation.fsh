Profile: DeathLocation
Parent: LocationVitalRecords
Id: vrdr-death-location
Title: "Death Location"
Description: "Death Location (USCoreLocation)"
* insert RequireMetaProfile(DeathLocation)
// * name 1..1
// * description 1..1
* type = LocationTypeCS#death
* type 1..1
* name ^short = "Name of Death Location"
* address ^short = "Place of Death address"
  * extension[predir] ^short = "Predirectional"
  * extension[postdir] ^short = "Postdirectional"
  * extension[stname] ^short = "Street Name"
  * extension[stnum] ^short = "Street Number"
  * extension[stdesig] ^short = "Street Designator"
  * extension[unitnumber] ^short = "Unit Number"
* address.city ^short = "City"
  * extension[cityCode] ^short = "City Code"
* address.state ^short = "State"
* address.district ^short = "County"
  * extension[districtCode] ^short = "County code"
* address.country ^short = "Country"
* address.postalCode ^short = "Zip"
* address.line ^short = "Address text"
* address.state ^short = "State/Jurisdiction of death.  Use value in Jurisdiction if present."
* position ^short = "Place of death lat/long" // LONG_D and LAT_D
  * latitude ^short = "Place of death latitude" // LONG_D and LAT_D
  * longitude ^short = "Place of death longitude" // LONG_D and LAT_D
