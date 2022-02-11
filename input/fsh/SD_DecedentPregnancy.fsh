Profile: DecedentPregnancy
Parent: Observation
Id: VRDR-Decedent-Pregnancy
Title: "VRDR Decedent Pregnancy"
* insert boilerplate
* status 1..1
* status only code
* status = #final (exactly)
* status ^short = "status"
* code 1..1
* code only CodeableConcept
* code = $loinc#69442-2 "Timing of recent pregnancy in relation to death" (exactly)
* code ^short = "code"
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "subject"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from PregnancyStatusVS (required)
* value[x] ^binding.description = "PHVS_PregnancyStatus_NCHS"
* value[x].extension ^binding.description = "editBypass012"
* value[x].extension contains
    BypassEditFlag named bypassEditFlag 0..1
* value[x].extension[bypassEditFlag].value[x] from Edit-Bypass-012 (required)