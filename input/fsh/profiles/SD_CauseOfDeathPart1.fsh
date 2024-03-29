/*
Subject in VRDR is Decedent.  In MDI and BFDR is Patient.  Patient is better ==> more general would be to create a Vital Records Patient or Vital Records Decedent and use it almost everywhere. VRCL uses either.

Performer in VRDR is certifier. US Core Practitioner in MDI; either in VRCL. Performer cardinality is 0..* for VRDR and VRCL, 1..1 for MDI.

component:interval has cardinality 0..1 in VRDR, 1..1 in MDI and VRCL.
*/
Profile: CauseOfDeathPart1
Parent: Observation
Id: vrdr-cause-of-death-part1
Title: "Cause Of Death Part 1"
// Description: "Cause of death Part 1 (Observation). Cause of death prior to submission of the completed death report.  Line number can be 1-4."
Description: "The Cause of Death Part 1 (Observation) profile reflects the ordered causes of death asserted by the death certifier. The cause of death is initially specified with text. Line number can be 1-4 "
// * insert RequireMetaProfile(Profile: CauseOfDeathPart1)
* code = $loinc#69453-9 
  * ^short = "Cause of death [US Standard Certificate of Death]"
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept.text 1..1 // COD1X
* valueCodeableConcept.text ^short = "Cause of Death Part 1, Line a,b,c,d"
* valueCodeableConcept.text ^maxLength = 120
* subject 1..1
* subject only Reference(PatientVitalRecords)
  * ^label = "The decedent"
  * ^short = "The decedent"
* performer ^short = "Certifier"
* performer only Reference(USCorePractitioner)
  * ^label = "Cause of death certifier (coroner or medical examiner)"
  * ^short = "Cause of death certifier (coroner or medical examiner)"
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    lineNumber 1..1 and
    interval 1..1   // require the interval for MDI, but add an optional data absent reason
* component[interval]
  * ^short = "Cause of Death Part 1 Interval, Line a,b,c,d"
  * code 1..1
  * code = $loinc#69440-6 
    * ^short = "Disease onset to death interval"
  * value[x] 1..1
  * value[x] only string or Quantity or CodeableConcept
  * valueString ^short = "Interval - string description"
  * valueString ^maxLength = 20
  * valueQuantity.code from ValueSetUnitsOfAgeVitalRecords (required)
  * valueQuantity ^short = "Interval - quantity with units of time"
  * valueCodeableConcept ^short = "Interval Unknown"
* component[lineNumber]
  * ^short = "lineNumber"
  * code 1..1
  * code = ComponentCS#lineNumber
  * value[x] 1..1
  * value[x] only integer
  * valueInteger ^short = "lineNumber"


