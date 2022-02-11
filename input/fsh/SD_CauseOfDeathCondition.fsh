Profile: CauseOfDeathCondition
Parent: USCoreCondition
Id: vrdr-cause-of-death-condition
Title: "Cause Of Death Condition"
Description: "Cause of death (USCoreCondition) prior to submission of the completed death report."
* insert boilerplate
* id 0..1
* id ^short = "id"
* code 1..1
* code only CodeableConcept
* code ^label = "CauseOfDeathCondition.code"
* code ^short = "code"
* code ^comment = "The CauseOfDeathCondition.code element has a CodeableConcept datatype. The CodeableConcept datatype has two components - coding and text. When seeking code value assignment from the NCHS the coding component is omitted. The text component conveys the pre-coded natual language text value. Upon return from the NCHS, the coding component conveys the NCHS assigned code value based upon the original text returned in the text component."
* code.text 1..1
* code.text ^maxLength = 120
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "subject"
* onset[x] 1..1
* onset[x] only Age or string
* onset[x] ^short = "onset[x]"
* asserter 1..1
* asserter only Reference(Certifier)
* asserter ^short = "asserter"