Profile: DeathCertificateDocumentEHR
Parent: Bundle
Id: vrdr-death-certificate-documentEHR
Title: "Death Certificate Document EHR"
Description: "The resources comprising the death certificate composition (Bundle/Document) from an EHR."
* type = #document (exactly)
* identifier 1..1
* entry ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "resource"
  * ^slicing.rules = #open
  * ^slicing.description = "Slicing based on the profile"
* entry contains DeathCertificateEHR 1..1
* entry[DeathCertificateEHR] ^short = "Death Certificate EHR"
  * ^definition = "Death Certificate EHR"
  * resource only DeathCertificateEHR
