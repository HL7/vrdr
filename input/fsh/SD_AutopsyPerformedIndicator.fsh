Profile: AutopsyPerformedIndicator
Parent: Observation
Id: vrdr-autopsy-performed-indicator
Title: "Autopsy Performed Indicator"
* insert boilerplate
* status 1..1
* status only code
* status = #final (exactly)
* status ^short = "status"
* status ^definition = "SHALL contain exactly one [1..1] status=\"\"final\"\" (CONF:4393-412)."
* code 1..1
* code only CodeableConcept
* code = $loinc#85699-7 "Autopsy was performed" (exactly)
* subject 1..1
* subject only Reference(Decedent)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $Yes-No-Unknown (required)
* value[x] ^binding.description = "Yes No Unknown"
* component 0..1
* component ^comment = "Autopsy Results Available"
* component.code 1..1
* component.code only CodeableConcept
* component.code = $loinc#69436-4 "Autopsy results available" (exactly)
* component.value[x] 1..1
* component.value[x] only CodeableConcept
* component.value[x] from $Yes-No-Unknown-NotApplicable (required)
