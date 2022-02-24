Profile: ConditionContributingToDeath
Parent: Observation
Id: vrdr-condition-contributing-to-death
Title: "Condition Contributing To Death"
Description: "Cause of Death Part2: Identifies factors contributing to the cause of death as asserted by the death certifier (USCoreCondition)"
* insert RequireMetaProfile(ConditionContributingToDeath)
* id 0..1
* code 1..1
* code only CodeableConcept
* code = $loinc#69441-4 "Other significant causes or conditions of death" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] ^comment = "The ConditionContributintgToDeath.code element has a CodeableConcept datatype. The CodeableConcept datatype has two components - coding and text. When seeking code value assignment from the NCHS the coding component is omitted. The text component conveys the pre-coded natual language text value. Upon return from the NCHS, the coding component conveys the NCHS assigned code value based upon the original text returned in the text component."
* valueCodeableConcept.text 1..1
* valueCodeableConcept.text ^short = "Cause of Death Part 2"
* valueCodeableConcept.text ^maxLength = 240
* subject 1..1
* subject only Reference(Decedent)
* performer 1..1
* performer only Reference(Certifier)
