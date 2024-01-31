Profile: DeathCertificateDocument
Parent: Bundle
Id: vrdr-death-certificate-document
Title: "Death Certificate Document"
Description: "The resources comprising the death certificate composition (Bundle/Document)."
* insert RequireMetaProfile(DeathCertificateDocument)
* insert BundleIdentifiers
* type 1..1
* type only code
* type = #document (exactly)
* entry.resource 1..1 // each entry must have a resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the profile"
* insert BundleSlice(DeathCertificate, 1, 1, Death Certificate, Death Certificate, DeathCertificate)
//* insert BundleSlice(DeathCertificateReference, 0, 1, Death Certificate Reference, Death Certificate Reference, DeathCertificateReference)
//* insert BundleSlice(InterestedParty, 0, 1, Interested Party , Interested Party, InterestedParty)
