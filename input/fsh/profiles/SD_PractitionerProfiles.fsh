
Profile: Certifier
Parent: PractitionerVitalRecords
Id: vrdr-certifier
Title: "Death Certifier"
Description: "Certifier (USCorePractitioner) used in VRDR"
* insert RequireMetaProfile(Certifier)
//* name 1..1
* name ^short = "certifier name"
* identifier ^short = "Note: required by USCore"
* address ^short = "Certifier address"
* address.extension[predir] ^short = "PreDirectional"
* address.extension[stnum] ^short = "StreetNumber"
* address.extension[stname] ^short = "StreetName"
* address.extension[stdesig] ^short = "StreetDesignator"
* address.extension[postdir] ^short = "PostDirectional"
* address.extension[unitnumber] ^short = "UnitOrAptNumber"
* address.city ^short = "City"
* address.city.extension[cityCode] ^short = "city code"
* address.district ^short = "County"
* address.district.extension[districtCode] ^short = "county code"
* address.state ^short = "State"
* address.postalCode ^short = "Zipcode"
* address.country ^short = "Country"
* extension contains PractitionerRoleDeathCertifier  named role 1..1

Extension: PractitionerRoleDeathCertifier
Id: practitioner-role-death-certifier
Title: "Practitioner Role - Death Certifier"
Description: "Used to indicate that an instance relates to the death certifier."
* insert ExtensionContextResource(Practitioner)
* value[x] 1..1
* value[x] only code
* valueCode = #certifier 

// * qualification 1..1
// * qualification only BackboneElement
// * qualification ^short = "qualification"
// * qualification.identifier 0..1
// * qualification.code 1..1
// * qualification.code from CertifierTypesVS (required)
/*
Profile: FuneralHomeDirector
Parent: USCorePractitionerRoleProfile
Id: vrdr-funeral-home-director
Title: "Funeral Home Director"
Description: "Funeral Home Director (USCorePractitionerRole)"
* insert RequireMetaProfile(FuneralHomeDirector)
* practitioner 1..1
* practitioner only Reference(Mortician)
* organization 1..1
* organization only Reference(FuneralHome)
* code 1..1
// * code from PractitionerRole (required)

Profile: DeathPronouncementPerformer
Parent: USCorePractitionerProfile
Id: vrdr-death-pronouncement-performer
Title: "Death Pronouncement Performer"
Description: "Death Pronouncement Performer (USCorePractitioner)"
* insert RequireMetaProfile(DeathPronouncementPerformer)
* identifier 1..1
* name 1..1
//* code from   // CERTL

Profile: FuneralServiceLicensee
Parent: USCorePractitionerRoleProfile
Id: vrdr-funeral-service-licensee
Title: "Funeral Service Licensee"
Description: "Funeral Service Licensee (USCorePractitionerRole)"
* insert boilerplate

Profile: Mortician
Parent: USCorePractitionerProfile
Id: vrdr-mortician
Title: "Mortician"
Description: "Mortician (USCorePractitioner)"
* insert boilerplate

*/