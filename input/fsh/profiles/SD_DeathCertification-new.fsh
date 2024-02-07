Profile: DeathCertification
Parent: USCoreProcedureProfile
Id: vrdr-death-certification
Title: "Death Certification Procedure"
Description: "Death Certification Procedure (USCoreProcedure). The procedure where the certification of death was performed by the certifier (USCoreProcedure)."
* insert RequireMetaProfile(DeathCertification)
// * status only code
// * status = #completed (exactly)
// This category code is deprecated by SNOMEDCT.   No real need for category.   Relaxing this constraint.
// * category 1..1
// * category only CodeableConcept
// * category = $sct#103693007 // "Diagnostic procedure"
* code 1..1
* code only CodeableConcept
* code = $sct#308646001 // "Death certification"
// * performed[x] 1..1
* performed[x] only dateTime
* performed[x] ^short = "certification Datetime"
//* performer 1..1
* performer.function 1..1
* performer.function from CertifierTypesVS (required)
* performer.actor only Reference(PractitionerVitalRecords)
