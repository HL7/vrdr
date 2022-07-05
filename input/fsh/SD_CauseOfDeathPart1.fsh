Profile: CauseOfDeathPart1
Parent: Observation
Id: vrdr-cause-of-death-part1
Title: "Cause Of Death Part 1"
Description: "Cause of death Part 1 (Observation). Cause of death prior to submission of the completed death report.  Line number can be 1-4."
* insert RequireMetaProfile(Profile: CauseOfDeathPart1)
* code = $loinc#69453-9 // "Cause of death [US Standard Certificate of Death]"
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept.text 1..1 // COD1X
* valueCodeableConcept.text ^short = "Cause of Death Part 1, Line a,b,c,d"
* valueCodeableConcept.text ^maxLength = 120
* subject 1..1
* subject only Reference(Decedent)
* performer ^short = "Certifier"
* performer only Reference(Certifier)
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    lineNumber 1..1 and
    interval 0..1   // no point in having a Part1 COD without the cause (value), but possible to have one with no interval
* component[interval].code 1..1
* component[interval].code = $loinc#69440-6 // "Disease onset to death interval"
* component[interval].value[x] 1..1
* component[interval].value[x] only string
* component[interval] ^short = "Cause of Death Part 1 Interval, Line a,b,c,d"
* component[interval].valueString ^short = "Interval"
* component[interval].valueString ^maxLength = 20
* component[lineNumber].code 1..1
* component[lineNumber].code = ComponentCS#lineNumber
* component[lineNumber].value[x] 1..1
* component[lineNumber].value[x] only integer
* component[lineNumber] ^short = "lineNumber"
* component[lineNumber].valueInteger ^short = "lineNumber"
