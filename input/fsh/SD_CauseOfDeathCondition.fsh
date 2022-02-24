Profile: CauseOfDeathCondition
Parent: Observation
Id: vrdr-cause-of-death-condition
Title: "Cause Of Death Condition"
Description: "Cause of death (Observation) Part 1, prior to submission of the completed death report."
* insert RequireMetaProfile(CauseOfDeathCondition)
* code = $loinc#69453-9 "Cause of Death" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] ^comment = "The CauseOfDeathCondition.code element has a CodeableConcept datatype. The CodeableConcept datatype has two components - coding and text. When seeking code value assignment from the NCHS the coding component is omitted. The text component conveys the pre-coded natual language text value. Upon return from the NCHS, the coding component conveys the NCHS assigned code value based upon the original text returned in the text component."
* valueCodeableConcept.text 1..1 // COD1X
* valueCodeableConcept.text ^short = "Cause of Death Part 1, Line a,b,c,d"
* valueCodeableConcept.text ^maxLength = 120
* subject 1..1
* subject only Reference(Decedent)
* performer 1..1
* performer only Reference(Certifier)
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    interval 1..1
* component[interval].code 1..1
* component[interval].code = $loinc#69440-6 "Disease onset to death interval" (exactly)
* component[interval].value[x] 1..1
* component[interval].value[x] only Quantity or string
* component[interval].value[x] ^short = "Cause of Death Part 1 Interval, Line a,b,c,d"
* component[interval].valueQuantity.system from UnitsOfAgeVS (required)
