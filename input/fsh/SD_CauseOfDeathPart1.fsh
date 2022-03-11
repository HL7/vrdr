Profile: CauseOfDeathPart1
Parent: Observation
Id: vrdr-cause-of-death-part1
Title: "Cause Of Death Part 1"
Description: "Cause of death prior to submission of the completed death report."
* insert RequireMetaProfile(Profile: CauseOfDeathPart1)
* code = $loinc#69453-9 "Cause of death [US Standard Certificate of Death]" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept
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
* component[interval].value[x] only string
* component[interval] ^short = "Cause of Death Part 1 Interval, Line a,b,c,d"
* component[interval].valueString ^short = "Interval"
* component[interval].valueString ^maxLength = 20
