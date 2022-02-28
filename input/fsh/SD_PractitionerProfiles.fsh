
/* Do we still need Certifier Profile?????  Probably Not.  Adds zero value */
Profile: Certifier
Parent: USCorePractitionerProfile
Id: vrdr-certifier
Title: "Certifier"
Description: "Certifier (USCorePractitioner)"
* insert RequireMetaProfile(Certifier)
* id 0..1
* name 1..1
* address 1..1
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