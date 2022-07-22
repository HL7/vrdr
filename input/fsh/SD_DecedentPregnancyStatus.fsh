Profile: DecedentPregnancyStatus
Parent: Observation
Id: vrdr-decedent-pregnancy-status
Title: "Decedent Pregnancy Status"
Description: "Decedent Pregnancy Status (Observation)"
* insert RequireMetaProfile(DecedentPregnancyStatus)
* status 1..1
* status only code
* status = #final (exactly)
* code 1..1
* code only CodeableConcept
* code = $loinc#69442-2 // "Timing of recent pregnancy in relation to death"
* subject 1..1
* subject only Reference(Decedent)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from PregnancyStatusVS (required)
* value[x].extension contains
    BypassEditFlag named bypassEditFlag 0..1
* value[x].extension[bypassEditFlag].value[x] from EditBypass012VS (required)
* value[x].extension[bypassEditFlag].value[x] only CodeableConcept
