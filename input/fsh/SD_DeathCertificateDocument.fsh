Profile: DeathCertificateDocument
Parent: Bundle
Id: vrdr-death-certificate-document
Title: "Death Certificate Document"
Description: "The resources comprising the death certificate composition (Bundle/Document)."
* insert RequireMetaProfile(DeathCertificateDocument)
* identifier ^short = "Death Certificate Number"
* identifier ^definition = "A unique value used by the NCHS to identify a death record. The NCHS uniquely identifies death records by combining three concepts: the year of death (as a four digit number), the jurisdiction of death (as a two character jurisdiction identifier), and the death certificate number assigned by the jurisdiction (a number with up to six digits, left padded with zeros). "
* identifier.value ^maxLength = 6
* identifier.extension contains
    AuxiliaryStateIdentifier named auxiliaryStateIdentifier 0..1
* type 1..1
* type only code
* type = #document (exactly)
* entry.resource 1..1 MS // each entry must have a resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the profile"
* insert BundleSlice(DeathCertificate, 1, 1, Death Certificate, Death Certificate, DeathCertificate)
//* insert BundleSlice(DeathCertificateReference, 0, 1, Death Certificate Reference, Death Certificate Reference, DeathCertificateReference)
//* insert BundleSlice(InterestedParty, 0, 1, Interested Party , Interested Party, InterestedParty)
