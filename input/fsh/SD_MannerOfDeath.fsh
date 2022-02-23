Profile: MannerOfDeath
Parent: Observation
Id: vrdr-manner-of-death
Title: "Manner of Death"
Description: "Manner of Death (Observation)"
* insert RequireMetaProfile(MannerOfDeath)
* id 0..1
* status 1..1
* status only code
* status = #final (exactly)
* code 1..1
* code only CodeableConcept
* code = $loinc#69449-7 "Manner of death" (exactly)
* subject 1..1
* subject only Reference(Patient)
* performer 1..1
* performer only Reference(Practitioner)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from MannerOfDeathVS (required)
* value[x] ^binding.description = "Manner of Death"