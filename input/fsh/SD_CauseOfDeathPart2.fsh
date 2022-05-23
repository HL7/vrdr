Profile: CauseOfDeathPart2
Parent: Observation
Id: vrdr-cause-of-death-part2
Title: "Cause of Death Part 2"
Description: "Cause of death Part 2 (Observation). Identifies factors contributing to the cause of death as asserted by the death certifier (Observation)"
* insert RequireMetaProfile(CauseOfDeathPart2)
* id 0..1
* code 1..1
* code only CodeableConcept
* code = $loinc#69441-4 // "Other significant causes or conditions of death"
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept.text 1..1
* valueCodeableConcept.text ^short = "Cause of Death Part 2"
* valueCodeableConcept.text ^maxLength = 240
* subject 1..1
* subject only Reference(Decedent)
* performer ^short = "Certifier"
* performer only Reference(Certifier)
