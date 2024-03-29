RuleSet: VRDRPractitioner(role)
* name ^short = "{role} name"
* name.given ^short = "{role} given names"
* name.family ^short = "{role} family name"
* name.suffix ^short = "{role} suffix"
* identifier ^short = "Note: required by USCore"
* address ^short = "{role} address"
* address.extension[predir] ^short = "PreDirectional"
* address.extension[stnum] ^short = "StreetNumber"
* address.extension[stname] ^short = "StreetName"
* address.extension[stdesig] ^short = "StreetDesignator"
* address.extension[postdir] ^short = "PostDirectional"
* address.extension[unitnumber] ^short = "UnitOrAptNumber"
* address.line ^short = "String address"
* address.city ^short = "City"
* address.city.extension[cityCode] ^short = "city code"
* address.district ^short = "County"
* address.district.extension[districtCode] ^short = "county code"
* address.state ^short = "State"
* address.postalCode ^short = "Zipcode"
* address.country ^short = "Country"
* extension contains PractitionerRole  named role 1..1
* extension[PractitionerRole].valueCode = #{role}
