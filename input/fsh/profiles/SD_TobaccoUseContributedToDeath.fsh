Profile: TobaccoUseContributedToDeath
Parent: Observation
Id: vrdr-tobacco-use-contributed-to-death
Title: "Tobacco Use Contributed To Death"
Description: "Tobacco Use Contributed To Death (Observation)"
* insert RequireMetaProfile(TobaccoUseContributedToDeathNew)
* id 0..1
* status 1..1
* status only code
* status = #final (exactly)
* code 1..1
  * ^short = "Did tobacco use contribute to death"
* code only CodeableConcept
* code = $loinc#69443-0 "Did tobacco use contribute to death"
* subject 1..1
* subject only Reference(PatientVitalRecords) //generalized to PatientVitalRecords
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from ContributoryTobaccoUseVS (required)
  * ^binding.description = "A set of codes that reflect the extent to which tobacco use contributed to the person's death."