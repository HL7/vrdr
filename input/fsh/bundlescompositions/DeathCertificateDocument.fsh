Profile: DeathCertificateDocument
Parent: Bundle
Id: vrdr-death-certificate-document
Title: "Death Certificate Document New"
Description: "The resources comprising the death certificate composition (Bundle/Document)."
* insert BundleIdentifiers
* type = #document (exactly)
* entry ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "resource"
  * ^slicing.rules = #open
  * ^slicing.description = "Slicing based on the profile"
* entry contains DeathCertificate 1..1
  * resource 1..
* entry[DeathCertificate] ^short = "Death Certificate"
  * ^definition = "Death Certificate"
  * resource only DeathCertificate