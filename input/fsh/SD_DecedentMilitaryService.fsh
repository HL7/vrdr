Profile: DecedentMilitaryService
Parent: Observation
Id: vrdr-decedent-military-service
Title: "Decedent Military Service"
Description: "Decedent Military Service (Observation)"
* insert boilerplate
* status 1..1
* status only code
* status = #final (exactly)
* code 1..1
* code only CodeableConcept
* code = $loinc#55280-2 "Military service Narrative" (exactly)
* subject 1..1
* subject only Reference(Decedent)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $Yes-No-Unknown (required)
* value[x] ^binding.description = "Yes-No-Unknown"
* note 0..1