Profile: DeathCertification
Parent: USCoreProcedureProfile
Id: vrdr-death-certification
Title: "Death Certification Procedure"
Description: "The prodedure where the certification of death was performed by the certifier (USCoreProcedure)."
* insert RequireMetaProfile(DeathCertification)
* identifier 1..*
* status 1..1
* status only code
* status = #completed (exactly)
* category 1..1
* category only CodeableConcept
* category = $sct#103693007 "Diagnostic procedure" (exactly)
* code 1..1
* code only CodeableConcept
* code = $sct#308646001 "Death certification" (exactly)
* performed[x] 1..1
* performed[x] only dateTime
* performed[x] ^short = "certificationDatetime"
* performer 1..1
* performer.function 1..1
* performer.function from CertifierTypesVS (required)
* performer.actor 1..1
* performer.actor only Reference(Certifier)