RuleSet: NCHSObservationCommon
* subject 1..1
* subject only Reference(Decedent)
* effective[x] 1..1
* effective[x] only dateTime
* effective[x] ^short = "Date/Time when added to death record"

Profile: AutomatedUnderlyingCauseOfDeath
Parent: Observation
Id: vrdr-automated-underlying-cause-of-death
Title: "Automated Underlying Cause Of Death"
Description: "Automated Underlying Cause Of Death"
* insert RequireMetaProfile(Profile: AutomatedUnderlyingCauseOfDeath)
* code = $loinc#80358-8 "Cause of death underyling.Automated" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept // ACME_UC
* value[x] from $icd10 (required)
* insert NCHSObservationCommon

Profile: ManualUnderlyingCauseOfDeath
Parent: Observation
Id: vrdr-manual-underlying-cause-of-death
Title: "Manual Underlying Cause Of Death"
Description: "Manual Underlying Cause Of Death"
* insert RequireMetaProfile(Profile: ManualUnderlyingCauseOfDeath)
* code = $loinc#80359-3 "Cause of death underyling.Manual" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept // MAN_UC
* value[x] from $icd10 (required)
* subject 1..1
* subject only Reference(Decedent)
* insert NCHSObservationCommon

Profile: RecordAxisCauseOfDeath
Parent: Observation
Id: vrdr-record-axis-cause-of-death
Title: "Record Axis Cause Of Death"
Description: "Record Axis Cause Of Death"
* insert RequireMetaProfile(Profile: RecordAxisCauseOfDeath)
* code = $loinc#80357-7 "Cause of death record axis" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept // MAN_UC
* value[x] from $icd10 (required)
* subject 1..1
* subject only Reference(Decedent)
* insert NCHSObservationCommon
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    position 1..1
* component[position].code 1..1
* component[position].code = #position "Position" (exactly)
* component[position].value[x] 1..1
* component[position].value[x] only integer
* component[position] ^short = "Position"
* component[position].valueInteger ^short = "Position"

Profile: EntityAxisCauseOfDeath
Parent: Observation
Id: vrdr-entity-axis-cause-of-death
Title: "Record Axis Cause Of Death"
Description: "Record Axis Cause Of Death"
* insert RequireMetaProfile(Profile: RecordAxisCauseOfDeath)
* code = $loinc#80356-9 "Cause of Death Entity Axis Code" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept // EAC
* value[x] from $icd10 (required)
* subject 1..1
* subject only Reference(Decedent)
* insert NCHSObservationCommon
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    lineNumber 1..1 and
    position 1..1 and
    eCodeIndicator 0..1
* component[lineNumber].code 1..1
* component[lineNumber].code = #lineNumber "lineNumber" (exactly)
* component[lineNumber].value[x] 1..1
* component[lineNumber].value[x] only integer
* component[lineNumber] ^short = "lineNumber"
* component[lineNumber].valueInteger ^short = "lineNumber"
* component[position].code 1..1
* component[position].code = #position "Position" (exactly)
* component[position].value[x] 1..1
* component[position].value[x] only integer
* component[position] ^short = "position"
* component[position].valueInteger ^short = "Position"
* component[eCodeIndicator].code 1..1
* component[eCodeIndicator].code = #eCodeIndicator "eCodeIndicator" (exactly)
* component[eCodeIndicator].value[x] 1..1
* component[eCodeIndicator].value[x] only boolean
* component[eCodeIndicator] ^short = "Entity Axis Cause of Death order"
* component[eCodeIndicator].valueBoolean ^short = "eCodeIndicator"

Profile: PlaceOfInjury
Parent: Observation
Id: vrdr-place-of-injury
Title: "Place Of Injury"
Description: "Place Of Injury"
* insert RequireMetaProfile(Profile: PlaceOfInjury)
* code = $loinc#11376-1 "Injury location" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept
// * value[x] from $loinc:LL1051-3 -- these are the answers
