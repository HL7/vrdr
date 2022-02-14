Profile: TobaccoUseContributedToDeath
Parent: Observation
Id: vrdr-tobacco-use-contributed-to-death
Title: "Tobacco Use Contributed To Death"
Description: "Tobacco Use Contributed To Death (Observation)"
* insert RequireMetaProfile(TobaccoUseContributedToDeath)
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