


Profile: AutomatedUnderlyingCauseOfDeath
Parent: Observation
Id: vrdr-automated-underlying-cause-of-death
Title: "Automated Underlying Cause Of Death"
Description: "Automated Underlying Cause Of Death (Observation)"
* insert RequireMetaProfile(Profile: AutomatedUnderlyingCauseOfDeath)
* code = $loinc#80358-5
  * ^short = "Cause of death.underlying [Automated]"
* value[x] 1..1
* value[x] only CodeableConcept // ACME_UC
* value[x] from ICD10CausesOfDeathVS
* insert NCHSObservationCommon

Profile: ManualUnderlyingCauseOfDeath
Parent: Observation
Id: vrdr-manual-underlying-cause-of-death
Title: "Manual Underlying Cause Of Death"
Description: "Manual Underlying Cause Of Death (Observation)"
* insert RequireMetaProfile(Profile: ManualUnderlyingCauseOfDeath)
* code = $loinc#80359-3
  * ^short = "Cause of death.underlying [Manual]"
* value[x] 1..1
* value[x] only CodeableConcept // MAN_UC
* value[x] from ICD10CausesOfDeathVS (required)
* subject only Reference(PatientVitalRecords)
* insert NCHSObservationCommon

Profile: RecordAxisCauseOfDeath
Parent: Observation
Id: vrdr-record-axis-cause-of-death
Title: "Record Axis Cause Of Death"
Description: "Record Axis Cause Of Death (Observation): Up to 20 of instances of this profile may be included in a coding bundle.  
Each instance is labeled with its position (1-20), forming an ordered collection of codes.

Record axis codes eliminate contradictions and repetitive codes to create a more concise and 
consistent set of codes than provided by the Entity Axis codes. They may combine or modify codes to better reflect the 
overall medical certification on the death certificate."
* code = $loinc#80357-7
  * ^short = "Cause of death record axis code [Automated]"
* value[x] 1..1
* value[x] only CodeableConcept // MAN_UC
* value[x] from ICD10CausesOfDeathVS (required)
* subject 1..1
* subject only Reference(PatientVitalRecords)
* insert NCHSObservationCommon
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    position 1..1 and
    wouldBeUnderlyingCauseOfDeathWithoutPregnancy 0..1
* component[position] ^short = "Position"
* component[position].code 1..1
* component[position].code = ComponentCS#position
* component[position].value[x] 1..1
* component[position].value[x] only integer
* component[wouldBeUnderlyingCauseOfDeathWithoutPregnancy] ^short = "Would be Underlying Cause of Death Without Pregnancy"
* component[wouldBeUnderlyingCauseOfDeathWithoutPregnancy].valueBoolean ^short = "Position"
* component[wouldBeUnderlyingCauseOfDeathWithoutPregnancy].code 1..1
* component[wouldBeUnderlyingCauseOfDeathWithoutPregnancy].code = ComponentCS#wouldBeUnderlyingCauseOfDeathWithoutPregnancy
* component[wouldBeUnderlyingCauseOfDeathWithoutPregnancy].value[x] 1..1
* component[wouldBeUnderlyingCauseOfDeathWithoutPregnancy].value[x] only boolean



Profile: EntityAxisCauseOfDeath
Parent: Observation
Id: vrdr-entity-axis-cause-of-death
Title: "Entity Axis Cause Of Death"
Description: "Entity Axis Cause Of Death (Observation):   Up to 20 of instances of this profile may be included in a coding bundle.  
Each instance is labeled with its lineNumber, Position and e-code indicator.

Entity Axis codes represent the raw data as originally reported on the death certificate by the certifier, maintaining the order and position of conditions as they appeared on the death certificate.
They include codes for all causes of death listed, including duplicate codes and potentially contradictory information."
* insert RequireMetaProfile(Profile: EntityAxisCauseOfDeath)
* code = $loinc#80356-9
  * ^short = "Cause of death entity axis code [Automated]"
* value[x] 1..1
* value[x] only CodeableConcept // EAC
* value[x] from ICD10CausesOfDeathVS (required)
* subject only Reference(PatientVitalRecords)
* insert NCHSObservationCommon
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    lineNumber 1..1 and
    position 1..1 and
    eCodeIndicator 0..1
* component[lineNumber].code 1..1
* component[lineNumber].code = ComponentCS#lineNumber
* component[lineNumber].value[x] 1..1
* component[lineNumber].value[x] only integer
* component[lineNumber] ^short = "lineNumber"
* component[lineNumber].valueInteger ^short = "lineNumber"
* component[position].code 1..1
* component[position].code = ComponentCS#position
* component[position].value[x] 1..1
* component[position].value[x] only integer
* component[position] ^short = "position"
* component[position].valueInteger ^short = "Position"
* component[eCodeIndicator].code 1..1
* component[eCodeIndicator].code = ComponentCS#eCodeIndicator
* component[eCodeIndicator].value[x] 1..1
* component[eCodeIndicator].value[x] only boolean
* component[eCodeIndicator] ^short = "Entity Axis Cause of Death order"
* component[eCodeIndicator].valueBoolean ^short = "eCodeIndicator"
