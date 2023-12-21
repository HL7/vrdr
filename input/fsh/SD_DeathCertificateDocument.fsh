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
* insert BundleSlicingByProfile
* insert BundleSlice(DeathCertificate, 1, 1, Death Certificate, Death Certificate, DeathCertificate)
//* insert BundleSlice(DeathCertificateReference, 0, 1, Death Certificate Reference, Death Certificate Reference, DeathCertificateReference)
//* insert BundleSlice(InterestedParty, 0, 1, Interested Party , Interested Party, InterestedParty)
