Profile: ConditionContributingToDeath
Parent: USCoreCondition
Id: vrdr-condition-contributing-to-death
Title: "Condition Contributing To Death"
Description: "Identifies factors contributing to the cause of death as asserted by the death certifier (USCoreCondition)"
* insert RequireMetaProfile(ConditionContributingToDeath)
* id 0..1
* id ^short = "id"
* category 1..1
* category = $sct#16100001 "Death diagnosis" (exactly)
* code 1..1
* code only CodeableConcept
* code ^comment = "The ConditionContributintgToDeath.code element has a CodeableConcept datatype. The CodeableConcept datatype has two components - coding and text. When seeking code value assignment from the NCHS the coding component is omitted. The text component conveys the pre-coded natual language text value. Upon return from the NCHS, the coding component conveys the NCHS assigned code value based upon the original text returned in the text component."
* code.text 1..1
* code.text ^maxLength = 240
* subject only Reference(Decedent)
* asserter 1..1
* asserter only Reference(Certifier)