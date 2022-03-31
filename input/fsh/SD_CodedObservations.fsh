RuleSet: NCHSObservationCommon
* subject 0..1  // optional, since these observations may be part of bundles that don't include the decedent
* subject only Reference(Decedent)
* subject ^short = "Decedent"
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
Description: "Record Axis Cause Of Death : Up to 20 of instances of this profile may be included in a coding bundle.  Each instance is labeled with its position (1-20)."
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
Title: "Entity Axis Cause Of Death"
Description: "Entity Axis Cause Of Death:   Up to 20 of instances of this profile may be included in a coding bundle.  Each instance is labeled with its lineNumber, Position and e-code indicator."
* insert RequireMetaProfile(Profile: EntityAxisCauseOfDeath)
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

CodeSystem: ActivityAtTimeOfDeathCS
Id: vrdr-activity-at-time-of-death-cs
Title: "Activity at Time of Death Codesystem"
Description: "Activity at Time of Death Codesystem based on PHVS_ActivityType_NCHS"
* ^caseSensitive = false
* #0 "During unspecified activity"
* #1 "While engaged in leisure activities."
* #2 "While engaged in other specified activities."
* #4 "While engaged in other types of work"
* #5 "While engaged in sports activity"
* #6 "While resting, sleeping, eating, or engaging in other vital activities"
* #7 "While working for income"

ValueSet: ActivityAtTimeOfDeathVS
Id: vrdr-activity-at-time-of-death-vs
Title: "Activity at Time of Death VS"
Description: "Activity at Time of Death"
* include codes from system ActivityAtTimeOfDeathCS
* $v3-NullFlavor#UNK "unknown"

Profile: ActivityAtTimeOfDeath
Parent: Observation
Id: vrdr-activity-at-time-of-death
Title: "Activity at Time of Death"
Description: "Activity at Time of Death"
* insert RequireMetaProfile(Profile: ActivityAtTimeOfDeath)
* code = $loinc#80626-5​ "Activity at time of death [CDC]" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from ActivityAtTimeOfDeathVS (required)


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
* insert obscodecomponent(FirstEditedCode,RaceCodesVS) // First through eighth edited codes
* insert obscodecomponent(SecondEditedCode,RaceCodesVS)
* insert obscodecomponent(ThirdEditedCode,RaceCodesVS)
* insert obscodecomponent(FourthEditedCode,RaceCodesVS)
* insert obscodecomponent(FifthEditedCode,RaceCodesVS)
* insert obscodecomponent(SixthEditedCode,RaceCodesVS)
* insert obscodecomponent(SeventhEditedCode,RaceCodesVS)
* insert obscodecomponent(EighthEditedCode,RaceCodesVS)
* insert obscodecomponent(FirstAmericanIndianCode,RaceCodesVS)
* insert obscodecomponent(SecondAmericanIndianCode,RaceCodesVS)
* insert obscodecomponent(FirstOtherAsianCode,RaceCodesVS)
* insert obscodecomponent(SecondOtherAsianCode,RaceCodesVS)
* insert obscodecomponent(FirstOtherPacificIslanderCode,RaceCodesVS)
* insert obscodecomponent(SecondOtherPacificIslanderCode,RaceCodesVS)
* insert obscodecomponent(FirstOtherRaceCode,RaceCodesVS)
* insert obscodecomponent(SecondOtherRaceCode,RaceCodesVS)
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
* insert primobscodecomponent(AmericanIndianOrAlaskaNative,boolean)
* insert primobscodecomponent(AsianIndian,boolean)
* insert primobscodecomponent(Chinese,boolean)
* insert primobscodecomponent(Filipino,boolean)
* insert primobscodecomponent(Japanese,boolean)
* insert primobscodecomponent(Korean,boolean)
* insert primobscodecomponent(Vietnamese,boolean)
* insert primobscodecomponent(OtherAsian,boolean)
* insert primobscodecomponent(NativeHawaiian,boolean)
* insert primobscodecomponent(GuamanianOrChamorro,boolean)
* insert primobscodecomponent(Samoan,boolean)
* insert primobscodecomponent(OtherPacificIslander,boolean)
* insert primobscodecomponent(OtherRace,boolean)
* insert primobscodecomponent(FirstAmericanIndianOrAlaskaNativeLiteral,string)
* insert primobscodecomponent(SecondAmericanIndianOrAlaskaNativeLiteral,string)
* insert primobscodecomponent(FirstOtherAsianLiteral,string)
* insert primobscodecomponent(SecondOtherAsianLiteral,string)
* insert primobscodecomponent(FirstOtherPacificIslanderLiteral,string)
* insert primobscodecomponent(SecondOtherPacificIslanderLiteral,string)
* insert primobscodecomponent(FirstOtherRaceLiteral,string)
* insert primobscodecomponent(SecondOtherRaceLiteral,string)
* insert obscodecomponent(RACEMVR,$raceMissingValueReason)
* insert obscodecomponent(HispanicMexican,YesNoUnknownVS)
* insert obscodecomponent(HispanicPuertoRican,YesNoUnknownVS)
* insert obscodecomponent(HispanicCuban,YesNoUnknownVS)
* insert obscodecomponent(HispanicOther,YesNoUnknownVS)
* insert primobscodecomponent(HispanicLiteral,string)

Profile: CodedContentDocument
Parent: Bundle
Id: vrdr-coded-content-document
Title: "Coded Content Document"
Description: "A bundle containing instances of the resources comprising coded content."
* insert RequireMetaProfile(CodedContentDocument)
* identifier ^short = "Death Certificate Number"
* identifier ^definition = "A unique value used by the NCHS to identify a death record. The NCHS uniquely identifies death records by combining three concepts: the year of death (as a four digit number), the jurisdiction of death (as a two character jurisdiction identifier), and the death certificate number assigned by the jurisdiction (a number with up to six digits, left padded with zeros). "
* identifier.value ^maxLength = 6
* identifier.extension contains
    AuxiliaryStateIdentifier1 named auxiliaryStateIdentifier1 0..1 and
    AuxiliaryStateIdentifier2 named auxiliaryStateIdentifier2 0..1
* type 1..1
* type only code
* type = #document (exactly)
* entry.resource 1..1 MS // each entry must have a resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the profile"
* insert BundleSlice(  AutomatedUnderlyingCauseOfDeath,  0, 1,  AutomatedUnderlyingCauseOfDeath,  AutomatedUnderlyingCauseOfDeath,  AutomatedUnderlyingCauseOfDeath)
* insert BundleSlice(  ManualUnderlyingCauseOfDeath,  0, 1,  ManualUnderlyingCauseOfDeath,  ManualUnderlyingCauseOfDeath,  ManualUnderlyingCauseOfDeath)
* insert BundleSlice(  CodedRaceAndEthnicity,  0, 1,  CodedRaceAndEthnicity,  CodedRaceAndEthnicity,  CodedRaceAndEthnicity)
* insert BundleSlice(  EntityAxisCauseOfDeath,  0, 20,  EntityAxisCauseOfDeath,  EntityAxisCauseOfDeath,  EntityAxisCauseOfDeath)
* insert BundleSlice(  RecordAxisCauseOfDeath,  0, 20,  RecordAxisCauseOfDeath,  RecordAxisCauseOfDeath,  RecordAxisCauseOfDeath)
* insert BundleSlice(  PlaceOfInjury,  0, 1,  PlaceOfInjury,  PlaceOfInjury,  PlaceOfInjury)
* insert BundleSlice(  ActivityAtTimeOfDeath,  0, 1,  ActivityAtTimeOfDeath,  ActivityAtTimeOfDeath,  ActivityAtTimeOfDeath)
