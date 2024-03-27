
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

Profile: Mortician
Parent: PractitionerVitalRecords
Id: vrdr-mortician
Title: "Mortician"
Description: "Mortician.

Note This profile is not needed for submission of records to NCHS but may be relevant for other use cases."
* insert VRDRPractitioner(Mortician)

Extension: PractitionerRole
Id: practitioner-role
Title: "Practitioner Role"
Description: "Used to indicate the role played by a practitioner to facilitate simple FHIRPath-based queries."
* insert ExtensionContextResource(Practitioner)
* value[x] 1..1
* value[x] only code


