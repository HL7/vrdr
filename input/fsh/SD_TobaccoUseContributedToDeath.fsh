Profile: TobaccoUseContributedToDeath
Parent: Observation
Id: vrdr-tobacco-use-contributed-to-death
Title: "VRDR Tobacco Use Contributed To Death"
* insert boilerplate
* id 0..1
* id ^short = "id"
* status 1..1
* status only code
* status = #final (exactly)
* status ^short = "status"
* code 1..1
* code only CodeableConcept
* code = $loinc#69443-0 "Did tobacco use contribute to death" (exactly)
* code ^short = "code"
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "subject"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from ContributoryTobaccoUseVS (required)
* value[x] ^binding.description = "PHVS_ContributoryTobaccoUse_NCHS"