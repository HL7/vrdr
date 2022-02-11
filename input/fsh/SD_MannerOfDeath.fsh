Profile: MannerOfDeath
Parent: Observation
Id: VRDR-Manner-of-Death
Title: "VRDR Manner of Death"
* insert boilerplate
* id 0..1
* id ^short = "id"
* status 1..1
* status only code
* status = #final (exactly)
* status ^short = "status"
* code 1..1
* code only CodeableConcept
* code = $loinc#69449-7 "Manner of death" (exactly)
* code ^short = "code"
* subject 1..1
* subject only Reference(Patient)
* subject ^short = "subject"
* performer 1..1
* performer only Reference(Practitioner)
* performer ^short = "performer"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from MannerOfDeathVS (required)
* value[x] ^binding.description = "Manner of Death"