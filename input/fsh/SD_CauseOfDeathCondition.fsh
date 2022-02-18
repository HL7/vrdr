Profile: CauseOfDeathCondition
Parent: USCoreCondition
Id: vrdr-cause-of-death-condition
Title: "Cause Of Death Condition"
Description: "Cause of death (USCoreCondition) prior to submission of the completed death report."
* insert RequireMetaProfile(CauseOfDeathCondition)
* id 0..1
* code 1..1
* code only CodeableConcept
* code ^comment = "The CauseOfDeathCondition.code element has a CodeableConcept datatype. The CodeableConcept datatype has two components - coding and text. When seeking code value assignment from the NCHS the coding component is omitted. The text component conveys the pre-coded natual language text value. Upon return from the NCHS, the coding component conveys the NCHS assigned code value based upon the original text returned in the text component."
* code.text 1..1 // COD1X
* code.text ^short = "Cause of Death Part 1, Interval Line a,b,c,d"
* code.text ^maxLength = 120
* subject 1..1
* subject only Reference(Decedent)
* onset[x] 1..1 // INTERVAL
* onset ^short = "Cause of Death Interval Part 1, Line a,b,c,d"
* onset[x] only Age or string
* asserter 1..1
* asserter only Reference(Certifier)