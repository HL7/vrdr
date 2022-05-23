Profile: DecedentMilitaryService
Parent: Observation
Id: vrdr-decedent-military-service
Title: "Decedent Military Service"
Description: "Decedent Military Service (Observation)"
* insert RequireMetaProfile(DecedentMilitaryService)
* status 1..1
* status only code
* status = #final (exactly)
* code = $loinc#55280-2 // "Military service Narrative"
* subject 1..1
* subject only Reference(Decedent)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from YesNoUnknownVS (required)