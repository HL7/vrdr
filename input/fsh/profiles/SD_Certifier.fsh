Profile: Certifier
Parent: PractitionerVitalRecords
Id: vrdr-certifier
Title: "Death Certifier"
Description: "The Death Certification Practitioner"
* insert RequireMetaProfile(Certifier)
//* name 1..1
* insert VRDRPractitioner(Certifier)
// * name ^short = "Certifier name"
// * name.given ^short = "Certifier given names"
// * name.family ^short = "Certifier family name"
// * name.suffix ^short = "Certifier suffix"
// * identifier ^short = "Note: required by USCore"
// * address ^short = "Certifier address"
// * address.extension[predir] ^short = "PreDirectional"
// * address.extension[stnum] ^short = "StreetNumber"
// * address.extension[stname] ^short = "StreetName"
// * address.extension[stdesig] ^short = "StreetDesignator"
// * address.extension[postdir] ^short = "PostDirectional"
// * address.extension[unitnumber] ^short = "UnitOrAptNumber"
// * address.line ^short = "String address"
// * address.city ^short = "City"
// * address.city.extension[cityCode] ^short = "city code"
// * address.district ^short = "County"
// * address.district.extension[districtCode] ^short = "county code"
// * address.state ^short = "State"
// * address.postalCode ^short = "Zipcode"
// * address.country ^short = "Country"
// * extension contains PractitionerRoleDeathCertifier  named role 1..1
