Profile: DeathCertification
Parent: USCoreProcedureProfile
Id: vrdr-death-certification
Title: "Death Certification Procedure"
Description: "The prodedure where the certification of death was performed by the certifier (USCoreProcedure)."
* insert boilerplate
* identifier 1..*
* status 1..1
* status only code
* status = #completed (exactly)
* status ^short = "status"
* category 1..1
* category only CodeableConcept
* category = $sct#103693007 "Diagnostic procedure" (exactly)
* category ^short = "category"
* code 1..1
* code only CodeableConcept
* code = $sct#308646001 "Death certification" (exactly)
* code ^short = "code"
* performed[x] 1..1
* performed[x] only dateTime
* performed[x] ^short = "certificationDatetime"
* performer 1..1
* performer.function 1..1
* performer.function from CertifierTypesVS (required)
* performer.actor 1..1
* performer.actor only Reference(Certifier)