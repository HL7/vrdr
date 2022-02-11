Profile: DeathCertificateReference
Parent: DocumentReference
Id: vrdr-death-certificate-reference
Title: "Death Certificate Reference"
Description: "The Death Certificate Reference profile is used to enable interested parties to assign local identifiers to the death certificate document. The Death Certificate Reference profile builds upon the FHIR Document Reference resource."
* insert boilerplate
* identifier 1..1
* status 1..1
* status only code
* status from DocumentReferenceStatus (required)
* status ^short = "status"
* type 1..1
* type only CodeableConcept
* type = $loinc#64297-5 "Death certificate" (exactly)
* date 1..1
* author 1..1
* author only Reference(InterestedParty)
* content 1..1
* content.attachment 1..1
* content.attachment.url 1..1
* content.attachment.url only url