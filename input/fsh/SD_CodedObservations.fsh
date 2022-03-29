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
* value[x] from http://loinc.org/vs/LL1051-3 (required)


RuleSet: obscodecomponent(code, valueSet)
* component contains {code} 1..1
* component[{code}].code 1..1
* component[{code}].code = #{code} "{code}" (exactly)
* component[{code}].value[x] 1..1
* component[{code}].value[x] only CodeableConcept
* component[{code}] ^short = "{code}"
* component[{code}].value[x] from {valueSet}

RuleSet: primobscodecomponent(code, type)
* component contains {code} 1..1
* component[{code}].code 1..1
* component[{code}].code = #{code} "{code}" (exactly)
* component[{code}].value[x] 1..1
* component[{code}].value[x] only {type}
* component[{code}] ^short = "{code}"


ValueSet: RaceCodesVS
Id: vrdr-race-codes-vs
Description: "Race Codes VS"
Title: "Race Codes VS"
* $v2-0136#Y "Yes"
* $v2-0136#N "No"
* $v3-NullFlavor#UNK "unknown"
* $v3-NullFlavor#NA "not applicable"


Profile: CodedRaceAndEthnicity
Parent: Observation
Id: vrdr-coded-race-and-ethnicity
Title: "Coded Race and Ethnicity"
Description: "Coded (from NCHS) Race and Ethnicity"
* insert RequireMetaProfile(Profile: CodedRaceAndEthnicity)
* code = #codedraceandethnicity "Coded Race and Ethnicity" (exactly)
* value[x] 0..0
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* insert obscodecomponent(RACE1E,RaceCodesVS)
* insert obscodecomponent(RACE2E,RaceCodesVS)
* insert obscodecomponent(RACE8E,RaceCodesVS)
* insert obscodecomponent(RACE16C,RaceCodesVS)
* insert obscodecomponent(RACE23C,RaceCodesVS)
* insert obscodecomponent(RECODE40,RaceCodesVS)
* insert obscodecomponent(DETHNICE,RaceCodesVS)
* insert obscodecomponent(DETHNIC5C,RaceCodesVS)

Profile: InputRaceAndEthnicity
Parent: Observation
Id: vrdr-input-race-and-ethnicity
Title: "Input Race and Ethnicity"
Description: "Input (from EDRS) Race and Ethnicity"
* insert RequireMetaProfile(Profile: InputRaceAndEthnicity)
* code = #inputraceandethnicity "Input Race and Ethnicity" (exactly)
* value[x] 0..0
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* insert primobscodecomponent(White,boolean)
* insert primobscodecomponent(BlackOrAfricanAmerican,boolean)
* insert primobscodecomponent(OtherRaceLiteral,string)
* insert obscodecomponent(RACEMVR,$raceMissingValueReason)



// * insert Extension(White, 0, 1, White, White, boolean)
// * insert Extension(BlackOrAfricanAmerican, 0, 1, Black Or African American, Black Or African American, boolean)
// * insert Extension(AmericanIndianOrAlaskaNative, 0, 1, American Indian Or Alaska Native, American Indian Or Alaska Native, boolean)
// * insert Extension(AsianIndian, 0, 1, Asian Indian, Asian Indian, boolean)
// * insert Extension(Chinese, 0, 1, Chinese, CHinese, boolean)
// * insert Extension(Filipino, 0, 1, Filipino, Filipino, boolean)
// * insert Extension(Japanese, 0, 1, Japanese, Japanese, boolean)
// * insert Extension(Korean, 0, 1, Korean, Korean, boolean)
// * insert Extension(Vietnamese, 0, 1, Vietnamese,Vietnamese, boolean)
// * insert Extension(OtherAsian, 0, 1, Other Asian, OtherAsian, boolean)
// * insert Extension(NativeHawaiian, 0, 1, Native Hawaiian, Native Hawaiian, boolean)
// * insert Extension(GuamanianOrChamorro, 0, 1, Guamanian Or Chamorro, Guamanian Or Chamorro, boolean)
// * insert Extension(Samoan, 0, 1, Samoan, Samoan, boolean)
// * insert Extension(OtherPacificIslander, 0, 1, Other Pacific Islander, Other Pacific Islander, boolean)
// * insert Extension(OtherRace, 0, 1, Other Race, Other Race, boolean)
// * insert Extension(AmericanIndianOrAlaskaNativeLiteral, 0, 2, American Indian Or Alaska Native Literal, American Indian Or Alaska Native Literal, string)
// * insert Extension(OtherAsianLiteral, 0, 2, Other Asian Literal, Other Asian Literal, string)
// * insert Extension(OtherPacificIslanderLiteral, 0, 2, Other Pacific Islander Literal, Other Pacific Islander Literal, string)
// * insert Extension(OtherRaceLiteral, 0, 2, Other Race Literal, Other Race Literal, string)
// * insert Extension(MissingValueReason, 0, 1, Missing Value Reason, MissingValueReason, Coding)
