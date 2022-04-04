RuleSet: ParameterSlicing
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter ^slicing.description = "Slicing based on the profile conformance of the sliced element"

RuleSet: ParameterName(name,short,def)
* parameter contains {name} 0..1
* parameter[{name}].name = "{name}"
* parameter[{name}] ^short = "{short}"
* parameter[{name}] ^definition = "{def}"
* parameter[{name}].extension 0..0

RuleSet: ParameterNameType(name, type, short, def)
* insert ParameterName({name},{short}, {def})
* parameter[{name}].value[x] only {type}
* parameter[{name}].value[x] 1..1
* parameter[{name}].resource 0..0
* parameter[{name}].part 0..0
* parameter[{name}].extension 0..0


Profile: CodingStatusValues
Parent: Parameters
Id: vrdr-coding-status-values
Title:  "Coding Status Values"
Description:   "Coding Status Values contains various status flags that result from the coding process"
* insert RequireMetaProfile(CodingStatusValues)
* insert ParameterSlicing
* insert ParameterNameType(shipmentNumber, integer, shipment number, shipment number)
* insert ParameterNameType(receiptDate, date, receipt date, receipt date)
* insert ParameterNameType(coderStatus, integer, coder status, coder status)
* insert ParameterNameType(intentionalReject, CodeableConcept, Intentional reject, Intentional reject)
* insert ParameterNameType(acmeSystemReject, CodeableConcept, ACME System Reject, ACME System Reject)
* insert ParameterNameType(transaxConversion, CodeableConcept, ALIAS: Transax Conversion, Transax Conversion)
* parameter[intentionalReject].value[x] from IntentionalRejectVS
* parameter[intentionalReject].value[x] from SystemRejectVS
* parameter[intentionalReject].value[x] from TransaxConversionVS
* parameter[receiptDate].valueDate.extension contains
    PartialDate named partialDate 0..1


CodeSystem: IntentionalRejectCS
Id: vrdr-intentional-reject-cs
Title: "Intentional Reject CodeSystem"
Description: "Intentional Reject CodeSystem"
* ^caseSensitive = true
* #1 "Reject1" "Reject1"
* #2 "Reject2" "Reject2"
* #3 "Reject3" "Reject3"
* #4 "Reject4" "Reject4"
* #5 "Reject5" "Reject5"
* #9 "Reject9" "Reject9"


ValueSet: IntentionalRejectVS
Id: vrdr-intentional-reject-vs
Title: "Intentional Reject ValueSet"
Description: "Intentional Reject ValueSet"
* codes from system IntentionalRejectCS

CodeSystem: SystemRejectCS
Id: vrdr-system-reject-cs
Title: "System Reject Code System"
Description: "System Reject Code System"
* ^caseSensitive = true
* #0 "Not Rejected" "Not Rejected"
* #1 "MICAR Reject Dictionary Match" "MICAR Reject  Dictionary match"
* #2 "ACME Reject" "ACME Reject"
* #3 "MICAR Reject Rule Application" "MICAR Reject Rule Application"
* #4 "Record Reviewed" "Record Reviewed"

ValueSet: SystemRejectVS
Id: vrdr-system-reject-vs
Title: "System Reject ValueSet"
Description: "System Reject ValueSet"
* codes from system SystemRejectCS

CodeSystem: TransaxConversionCS
Id: vrdr-transax-conversion-cs
Title: "Transax Conversion Code System"
Description: "Transax Conversion Code System"
* ^caseSensitive = true
* #3 "Conversion using non-ambivalent table entries " "Conversion using non-ambivalent table entries"
* #4 "Conversion using ambivalent table entries " "Conversion using ambivalent table entries"
* #5 "Duplicate entity-axis codes deleted; no other action involved " "Duplicate entity-axis codes deleted; no other action involved"
* #6 "Artificial code conversion; no other action " "Artificial code conversion; no other action"

ValueSet: TransaxConversionVS
Id: vrdr-transax-conversion-vs
Title: "System Reject ValueSet"
Description: "System Reject ValueSet"
* codes from system TransaxConversionCS




RuleSet: NCHSObservationCommon
* subject only Reference(Decedent)
* subject ^short = "Decedent"
// * effective[x] 1..1
* effective[x] only dateTime
* effective[x] ^short = "Date/Time when added to death record"

Profile: AutomatedUnderlyingCauseOfDeath
Parent: Observation
Id: vrdr-automated-underlying-cause-of-death
Title: "Automated Underlying Cause Of Death"
Description: "Automated Underlying Cause Of Death"
* insert RequireMetaProfile(Profile: AutomatedUnderlyingCauseOfDeath)
* code = $loinc#80358-5 "Cause of death.underlying [Automated]" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept // ACME_UC
* value[x] from ICD10CausesOfDeathVS
* insert NCHSObservationCommon

Profile: ManualUnderlyingCauseOfDeath
Parent: Observation
Id: vrdr-manual-underlying-cause-of-death
Title: "Manual Underlying Cause Of Death"
Description: "Manual Underlying Cause Of Death"
* insert RequireMetaProfile(Profile: ManualUnderlyingCauseOfDeath)
* code = $loinc#80359-3 "Cause of death.underlying [Manual]" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept // MAN_UC
* value[x] from ICD10CausesOfDeathVS (required)
* subject 1..1
* subject only Reference(Decedent)
* insert NCHSObservationCommon

Profile: RecordAxisCauseOfDeath
Parent: Observation
Id: vrdr-record-axis-cause-of-death
Title: "Record Axis Cause Of Death"
Description: "Record Axis Cause Of Death : Up to 20 of instances of this profile may be included in a coding bundle.  Each instance is labeled with its position (1-20)."
* insert RequireMetaProfile(Profile: RecordAxisCauseOfDeath)
* code = $loinc#80357-7 "Cause of death record axis code [Automated]" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept // MAN_UC
* value[x] from ICD10CausesOfDeathVS (required)
* subject 1..1
* subject only Reference(Decedent)
* insert NCHSObservationCommon
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    position 1..1 and
    wouldBeUnderlyingCauseOfDeathWithoutPregnancy 0..1
* component[wouldBeUnderlyingCauseOfDeathWithoutPregnancy] ^short = "wouldBeUnderlyingCauseOfDeathWithoutPregnancy"
* component[wouldBeUnderlyingCauseOfDeathWithoutPregnancy].valueBoolean ^short = "wouldBeUnderlyingCauseOfDeathWithoutPregnancy"
* component[wouldBeUnderlyingCauseOfDeathWithoutPregnancy].code 1..1
* component[wouldBeUnderlyingCauseOfDeathWithoutPregnancy].code = #position "wouldBeUnderlyingCauseOfDeathWithoutPregnancy" (exactly)
* component[wouldBeUnderlyingCauseOfDeathWithoutPregnancy].value[x] 1..1
* component[wouldBeUnderlyingCauseOfDeathWithoutPregnancy].value[x] only boolean
* component[position] ^short = "Position"
* component[position].valueInteger ^short = "Position"
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
* code = $loinc#80356-9 "Cause of death entity axis code [Automated]" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept // EAC
* value[x] from ICD10CausesOfDeathVS (required)
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
* #0 "While engaged in sports activity"
* #1 "While engaged in leisure activities."
* #2 "While working for income"
* #3 "While engaged in other types of work"
* #4 "While resting, sleeping, eating, or engaging in other vital activities"
* #8 "While engaged in other specified activities."
* #9 "During unspecified activity"

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
* code = $loinc#80626-5 "Activity at time of death [CDC]" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from ActivityAtTimeOfDeathVS (required)


RuleSet: obscodecomponent(code, valueSet)
* component contains {code} 0..1
* component[{code}].code 1..1
* component[{code}].code = #{code} "{code}" (exactly)
* component[{code}].value[x] 1..1
* component[{code}].value[x] only CodeableConcept
* component[{code}] ^short = "{code}"
* component[{code}].value[x] from {valueSet}

RuleSet: primobscodecomponent(code, type)
* component contains {code} 0..1
* component[{code}].code 1..1
* component[{code}].code = #{code} "{code}" (exactly)
* component[{code}].value[x] 1..1
* component[{code}].value[x] only {type}
* component[{code}] ^short = "{code}"




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
* insert obscodecomponent(FirstEditedCode,RaceCodeVS) // First through eighth edited codes
* insert obscodecomponent(SecondEditedCode,RaceCodeVS)
* insert obscodecomponent(ThirdEditedCode,RaceCodeVS)
* insert obscodecomponent(FourthEditedCode,RaceCodeVS)
* insert obscodecomponent(FifthEditedCode,RaceCodeVS)
* insert obscodecomponent(SixthEditedCode,RaceCodeVS)
* insert obscodecomponent(SeventhEditedCode,RaceCodeVS)
* insert obscodecomponent(EighthEditedCode,RaceCodeVS)
* insert obscodecomponent(FirstAmericanIndianCode,RaceCodeVS)
* insert obscodecomponent(SecondAmericanIndianCode,RaceCodeVS)
* insert obscodecomponent(FirstOtherAsianCode,RaceCodeVS)
* insert obscodecomponent(SecondOtherAsianCode,RaceCodeVS)
* insert obscodecomponent(FirstOtherPacificIslanderCode,RaceCodeVS)
* insert obscodecomponent(SecondOtherPacificIslanderCode,RaceCodeVS)
* insert obscodecomponent(FirstOtherRaceCode,RaceCodeVS)
* insert obscodecomponent(SecondOtherRaceCode,RaceCodeVS)
* insert obscodecomponent(RaceRecode40,RaceRecode40VS)
* insert obscodecomponent(HispanicCode,HispanicOriginVS)
* insert obscodecomponent(HispanicCodeForLiteral,HispanicOriginVS)

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

Profile: CodedContentBundle
Parent: Bundle
Id: vrdr-coded-content-bundle
Title: "Coded Content Bundle"
Description: "A bundle containing instances of the resources comprising coded content."
* insert RequireMetaProfile(CodedContentDocument)
* identifier ^short = "Death Certificate Number"
* identifier ^definition = "A unique value used by the NCHS to identify a death record. The NCHS uniquely identifies death records by combining three concepts: the year of death (as a four digit number), the jurisdiction of death (as a two character jurisdiction identifier), and the death certificate number assigned by the jurisdiction (a number with up to six digits, left padded with zeros)."
* identifier.value ^maxLength = 6
* identifier.extension contains
    AuxiliaryStateIdentifier1 named auxiliaryStateIdentifier1 0..1 and
    AuxiliaryStateIdentifier2 named auxiliaryStateIdentifier2 0..1
* type 1..1
* type only code
* type = #collection (exactly)
* entry.resource 1..1 MS // each entry must have a resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the profile"
* insert BundleSlice(  ActivityAtTimeOfDeath,  0, 1,  ActivityAtTimeOfDeath,  ActivityAtTimeOfDeath,  ActivityAtTimeOfDeath)
* insert BundleSlice(  AutomatedUnderlyingCauseOfDeath,  0, 1,  AutomatedUnderlyingCauseOfDeath,  AutomatedUnderlyingCauseOfDeath,  AutomatedUnderlyingCauseOfDeath)
* insert BundleSlice(  ManualUnderlyingCauseOfDeath,  0, 1,  ManualUnderlyingCauseOfDeath,  ManualUnderlyingCauseOfDeath,  ManualUnderlyingCauseOfDeath)
* insert BundleSlice(  CodedRaceAndEthnicity,  0, 1,  CodedRaceAndEthnicity,  CodedRaceAndEthnicity,  CodedRaceAndEthnicity)
* insert BundleSlice(  EntityAxisCauseOfDeath,  0, 20,  EntityAxisCauseOfDeath,  EntityAxisCauseOfDeath,  EntityAxisCauseOfDeath)
* insert BundleSlice(  RecordAxisCauseOfDeath,  0, 20,  RecordAxisCauseOfDeath,  RecordAxisCauseOfDeath,  RecordAxisCauseOfDeath)
* insert BundleSlice(  PlaceOfInjury,  0, 1,  PlaceOfInjury,  PlaceOfInjury,  PlaceOfInjury)
* insert BundleSlice(  CodingStatusValues,  0, 1,  CodingStatusValues,  CodingStatusValues,  CodingStatusValues)



ValueSet: ICD10CausesOfDeathVS
Id: vrdr-icd10-causes-of-death-vs
Title: "ICD10 Causes of Death VS"
Description: "ICD10 Causes of Death VS"
* include codes from system $icd10

ValueSet: HispanicOriginVS
Id: vrdr-hispanic-origin-vs
Title: "HispanicOrigin Value Set"
Description: "NCHS HispanicOrigin Value Set"
* include codes from system HispanicOriginCS
* $v3-NullFlavor#UNK "unknown"

ValueSet: RaceCodeVS
Id: vrdr-race-code-vs
Title: "Race Code Value Set"
Description: "NCHS Race Codes"
* include codes from system RaceCodeCS
* $v3-NullFlavor#UNK "unknown"

ValueSet: RaceRecode40VS
Id: vrdr-race-recode-40-vs
Title: "Race Recode 40 Value Set"
Description: "NCHS Race Recode 40 Valueset"
* include codes from system RaceRecode40CS

CodeSystem: HispanicOriginCS
Id: vrdr-hispanic-origin-cs
Title: "HispanicOrigin CS"
Description: "HispanicOrigin from https://www.cdc.gov/nchs/data/dvs/HispanicCodeTitles.pdf"
* ^caseSensitive = true
// 100-199 Not Hispanic
* #100 "Not Hispanic"
* #200 "Spaniard"
* #201 "Andalusian"
* #202 "Asturian"
* #203 "Castillian"
* #204 "Catalonian"
* #205 "Balearic Islander"
* #206 "Gallego"
* #207 "Valencian"
* #208 "Canarian"
* #209 "Spanish Basque"
// 210 -219 Mexican
* #210 "Mexican"
* #211 "Mexican"
* #212 "Mexican American"
* #213 "Mexicano"
* #214 "Chicano"
* #215 "La Raza"
* #216 "Mexican American Indian"
* #217 "Caribbean"
* #218 "Mexico"
// 220 -249 Central and South America
* #220 "Central and South America"
// 221 -229 Central American
* #221 "Costa Rican"
* #222 "Guatemalan"
* #223 "Honduran"
* #224 "Nicaraguan"
* #225 "Panamanian"
* #226 "Salvadoran"
* #227 "Central American"
* #228 "Central American Indian"
* #229 "Canal Zone"
// 231 -249 South American
* #231 "Argentinean"
* #232 "Bolivian"
* #233 "Chilean"
* #234 "Colombian"
* #235 "Ecuadorian"
* #236 "Paraguayan"
* #237 "Peruvian"
* #238 "Uruguayan"
* #239 "Venezuelan"
* #240 "South American Indian"
* #241 "Criollo"
* #242 "South American"
// 250 -259 Latin American
* #250 "Latin American"
* #251 "Latin"
* #252 "Latino"
// 260 -269 Puerto Rican
* #260 "Puerto Rican"
* #261 "Puerto Rican"
// 270 -274 Cuban
* #270 "Cuban"
* #271 "Cuban"
// 275 -279 Dominican
* #275 "Dominican"
// 280 -299 Other Spanish/Hispanic
* #280 "Other Spanish"
* #281 "Hispanic"
* #282 "Spanish"
* #283 "Californio"
* #284 "Tejano"
* #285 "Nuevo Mexicano"
* #286 "Spanish American"
* #287 "Spanish American Indian"
* #288 "Meso American Indian"
* #289 "Mestizo"
* #291 "Multiple Hispanic Responses"
* #299 "Other Spanish"
// 996 -999 Uncodable, deferred, unknown
* #996 "Uncodable"
* #997 "Deferred"
* #998 "Unknown"
* #999 "First Pass Reject"


CodeSystem: RaceCodeCS
Id: vrdr-race-code-cs
Title: "Race Code CS"
Description: "RaceCode from https://www.cdc.gov/nchs/data/dvs/RaceCodeList.pdf"
* ^caseSensitive = true
// WHITE (100-199) White
* #100 "White Checkbox"
* #101 "White"
* #102 "Arab"
* #103 "English"
* #104 "French"
* #105 "German"
* #106 "Irish"
* #107 "Italian"
* #108 "Near Easterner"
* #109 "Polish"
* #110 "Scottish"
* #111 "Armenian"
* #112 "Assyrian"
* #113 "Egyptian"
* #114 "Iranian"
* #115 "Iraqi"
* #116 "Lebanese"
* #117 "Middle East"
* #118 "Palestinian"
* #119 "Syrian"
* #120 "Other Arab"
* #121 "Afghanistani"
* #122 "Israeli"
* #123 "Californio"
* #124 "Cajun"
* #125 "EUROPEAN"
* #126 "PORTUGUESE"
* #127 "ALBANIAN"
* #128 "CROATIAN"
* #129 "CZECH"
* #130 "RUSSIAN"
* #131 "UKRANIAN"
* #132 "CZECHOSLOVAKIAN"
* #133 "BOSNIAN"
* #134 "KOSOVIAN"
* #199 "Multiple WHITE responses"
* #200 "Black or African American"
// BLACK OR AFRICAN AMERICAN (200-299) Black
* #201 "Black"
* #202 "African"
* #203 "African American"
* #204 "AfroAmerican"
* #205 "Nigritian"
* #206 "Negro"
* #207 "Bahamian"
* #208 "Barbadian"
* #209 "Botswana"
* #213 "Ethiopian"
* #214 "Haitian"
* #215 "Jamaican"
* #216 "Liberian"
* #218 "Namibian"
* #219 "Nigerian"
* #220 "Other African"
* #222 "Tobago"
* #223 "Trinidad"
* #224 "West Indies"
* #225 "Zaire"
* #226 "ERITREAN"
* #227 "TOGOLESE"
* #228 "SOMALIAN"
* #299 "Multiple BLACK or AFRICAN AMERICAN responses"
// AMERICAN INDIAN AND ALASKA NATIVE (300-399, A01-R99) American Indian or Alaskan Native
* #300 "American Indian Checkbox"
// ASIAN (400-499)
* #400 "Asian"
* #401 "Asian Indian"
* #402 "Bangladeshi"
* #403 "Bhutanese"
* #404 "Burmese"
* #405 "Cambodian"
// ASIAN (400-499) Chinese
* #411 "Chinese"
* #412 "Taiwanese"
// ASIAN (400-499) Filipino
* #421 "Filipino"
* #422 "Hmong"
* #423 "Indonesian"
// ASIAN (400-499) Japanese
* #431 "Japanese"
// ASIAN (400-499) Korean
* #441 "Korean"
// ASIAN (400-499) Other Asian
* #442 "Laotian"
// ASIAN (400-499) Other Asian
* #443 "Malaysian"
* #444 "Okinawan"
* #445 "Pakistani"
* #446 "Sri Lankan"
* #447 "Thai"
// ASIAN (400-499) Vietnamese
* #451 "Vietnamese"
// ASIAN (400-499) Other Asian
* #461 "Amerasian"
* #462 "Asian"
* #463 "Asiatic"
* #464 "Eurasian"
* #465 "Mongolian"
* #466 "Oriental"
* #467 "Whello"
* #468 "Yello"
* #469 "Indo Chinese"
* #470 "Iwo Jiman"
* #471 "Maldivian"
* #472 "Nepalese"
* #473 "Singaporean"
* #474 "MADAGASCAR"
* #475 "MIEN"
* #476 "TIBETAN"
* #499 "Multiple ASIAN responses"
//  NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER (500-599) Polynesian
* #500 "Native Hawaiian Checkbox"
* #501 "Native Hawaiian"
* #502 "Hawaiian"
* #503 "Part Hawaiian"
* #511 "Samoan"
* #512 "Tahitian"
* #513 "Tongan"
* #514 "Polynesian"
* #515 "Tokelauan"
// NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER (500-599) Micronesian
* #521 "Guamanian"
* #522 "Chamorro"
* #531 "Mariana Islander"
* #532 "Marshallese"
* #533 "Palauan"
// NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER (500-599) Micronesian
* #534 "Carolinian"
* #535 "Kosraean"
* #536 "Micronesian"
* #537 "Pohnpeian"
* #538 "Saipanese"
* #539 "Kirabati"
* #540 "Chuukese"
* #541 "Yapese"
// NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER (500-599) Melanesian
* #542 "Fijian"
* #543 "Melanesian"
* #544 "Papua New Guinean"
* #545 "Solomon Islander"
* #546 "New Hebrides"
// NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER (500-599) Other Pacific Islander
* #547 "Pacific Islander"
* #599 "Multiple NATIVE HAWAIIAN and OTHER PACIFIC ISLANDER responses"
// SOME OTHER RACE (600-999) Some Other Race
* #601 "Argentinean"
* #602 "Bolivian"
* #604 "Central American"
* #605 "Chicano"
* #606 "Chilean"
* #607 "Colombian"
* #608 "Costa Rican"
* #609 "Cuban"
* #610 "Ecuadorian"
* #611 "Salvadoran"
* #612 "Guatemalan"
* #613 "Hispanic"
* #614 "Honduran"
* #615 "Latin American"
* #616 "Mestizo"
* #617 "Mexican"
* #618 "Nicaraguan"
* #619 "Panamanian"
* #620 "Paraguayan"
* #621 "Peruvian"
* #622 "Puerto Rican"
* #623 "Morena"
* #624 "South American"
* #625 "Spanish"
// SOME OTHER RACE (600-999) Some Other Race
* #626 "Spanish American"
* #627 "Sudamericano"
* #628 "Uruguayan"
* #629 "Venezuelan"
* #630 "Spaniard"
* #631 "Tejano"
* #632 "Cayman Islander"
* #633 "Moroccan"
* #634 "North African"
* #635 "United Arab Emirates"
* #636 "South African"
* #637 "Azerbaijani"
* #638 "Aryan"
* #640 "Dominican Republic"
* #641 "Dominica Islander"
* #642 "Belizean"
* #643 "Bermudan"
* #644 "Aruba Islander"
* #645 "Cayenne"
* #646 "Guyanese"
* #647 "Surinam"
* #648 "Sudanese"
* #651 "Brazilian"
* #652 "Brown"
* #653 "Bushwacker"
* #655 "Cape Verdean"
* #656 "Chocolate"
* #657 "Coe Clan"
* #658 "Coffee"
* #659 "Cosmopolitan"
* #660 "Issues"
* #661 "Jackson White"
* #662 "Melungeon"
* #663 "Mixed"
* #664 "Ramp"
* #665 "Wesort"
* #666 "Mulatto"
* #667 "Moor"
* #668 "Biracial"
* #669 "Creole"
* #670 "Indian"
* #671 "Turk"
* #672 "Half Breed"
* #673 "Rainbow"
* #674 "Octoroon"
* #675 "Quadroon"
* #676 "Multiracial"
* #677 "Interracial"
// SOME OTHER RACE (600-999) Some Other Race
* #678 "Multiethnic"
* #679 "Multinational"
* #680 "JEWISH"
* #681 "CANADIAN"
* #682 "FRENCH CANADIAN"
* #683 "IBERIAN"
* #684 "TRIGUENO"
* #685 "MALADA"
* #686 "OTHER SPANISH"
* #699 "OTHER RACE, N.E.C."
* #990 "Multiple SOME OTHER RACE responses 995 American"
// SOME OTHER RACE (600-999) Uncodable, Deferred, Unknown
* #996 "Uncodable"
* #997 "Deferred"
* #998 "UNKNOWN"
* #999 "First Pass Reject"
// AMERICAN INDIAN (A01-M43) Abenaki
* #A01 "Abenaki Nation of Missiquoi"
// AMERICAN INDIAN (A01-M43) Algonquian
* #A05 "Algonquian"
// AMERICAN INDIAN (A01-M43) Apache
* #A09 "Apache"
* #A10 "Chiricahua"
* #A11 "Fort Sill Apache"
* #A12 "Jicarilla Apache"
* #A13 "Lipan Apache"
* #A14 "Mescalero Apache"
* #A15 "Oklahoma Apache"
* #A16 "Payson Tonto Apache"
* #A17 "San Carlos Apache"
* #A18 "White Mountain Apache"
// AMERICAN INDIAN (A01-M43) Arapahoe
* #A24 "Arapahoe"
* #A25 "Northern Arapahoe"
* #A26 "Southern Arapahoe"
* #A27 "Wind River Arapahoe"
// AMERICAN INDIAN (A01-M43) Arikara
* #A31 "Arikara"
// AMERICAN INDIAN (A01-M43) Assiniboine
* #A34 "Assiniboine"
* #A35 "Fort Peck Assiniboine"
* #A36 "Fort Belknap Assiniboine"
// AMERICAN INDIAN (A01-M43) Assiniboine Sioux
* #A38 "Assiniboine Sioux"
* #A39 "Fort Peck Assiniboine and Sioux"
// AMERICAN INDIAN (A01-M43) Bannock
* #A42 "Bannock"
// AMERICAN INDIAN (A01-M43) Blackfeet
* #A45 "Blackfeet"
// AMERICAN INDIAN (A01-M43) Brotherton
* #A51 "Brotherton"
// AMERICAN INDIAN (A01-M43) Burt Lake Band
* #A54 "Burt Lake Band"
// AMERICAN INDIAN (A01-M43) Caddo
* #A56 "Caddo"
* #A57 "Caddo Indian Tribe of Oklahoma"
* #A58 "Caddo Adais Indians"
// AMERICAN INDIAN (A01-M43) Cahuilla
* #A61 "Agua Caliente Band of Cahuilla Indians"
* #A62 "Augustine"
* #A63 "Cabazon Band of Cahuilla Mission Indians"
* #A64 "Cahuilla"
* #A65 "Los Coyotes Band of Cahuilla Mission Indians"
* #A66 "Morongo Band of Cahuilla Mission Indians"
* #A67 "Santa Rosa Cahuilla"
* #A68 "Torres Martinez Band of Cahuilla Mission Indians"
* #A69 "Ramona Band or Village of Cahuilla Mission Indians"
// AMERICAN INDIAN (A01-M43) California Tribes
* #A74 "CALIFORNIA TRIBES N.E.C."
* #A75 "Cahto Indian Tribe of the Laytonville Rancheria"
* #A76 "Chimariko"
* #A77 "Coast Miwok"
* #A78 "MISSION BAND"
* #A79 "Kawaiisu"
* #A80 "Kem River Paiute Council"
* #A81 "Mattole"
* #A82 "Red Wood"
* #A83 "Santa Rosa Indian Community"
* #A84 "Takelma"
* #A85 "Wappo"
* #A86 "Yana"
* #A87 "Yuki"
* #A88 "Bear River Band of Rohnerville Rancheria"
* #A89 "DIGGER"
* #A90 "WIKCHAMNI"
// AMERICAN INDIAN (A01-M43) Tolowa
* #A91 "Smith River Rancheria"
// AMERICAN INDIAN (A01-M43) Canadian and Latin America
* #A94 "Canadian Indian"
* #A95 "Central American Indian"
* #A96 "French American Indian"
* #A97 "Mexican American Indian"
* #A98 "South American Indian"
* #A99 "Spanish American Indian"
// AMERICAN INDIAN (A01-M43) Catawba
* #B04 "Catawba Indian Nation"
// AMERICAN INDIAN (A01-M43) Cayuse
* #B07 "Cayuse"
// AMERICAN INDIAN (A01-M43) Chehalis
* #B11 "Chehalis"
// AMERICAN INDIAN (A01-M43) Chemakuan
* #B14 "Chemakuan"
* #B15 "Hoh Indian Tribe"
* #B16 "Quileute"
// AMERICAN INDIAN (A01-M43) Chemehuevi
* #B19 "Chemehuevi"
// AMERICAN INDIAN (A01-M43) Cherokee
* #B21 "Cherokee"
* #B22 "Cherokee Alabama"
* #B23 "Cherokees of Northeast Alabama"
* #B24 "Cherokees of Southeast Alabama"
* #B25 "Georgia Eastern Cherokee"
* #B26 "Echota Cherokee"
* #B27 "Etowah Cherokee"
* #B28 "Northern Cherokee Nation of Missouri and Arkansas"
* #B29 "Tuscola"
* #B30 "United Keetoowah Band of Cherokee"
* #B31 "Western Cherokee"
* #B32 "Southeastern Cherokee Council"
* #B33 "Sac River Band of the Chickamauga Cherokee"
* #B34 "White River Band of the Chickamauga Cherokee"
* #B35 "Four Winds Cherokee"
* #B36 "Cherokee of Georgia"
// AMERICAN INDIAN (A01-M43) Cherokee Shawnee
* #B37 "Cherokee Shawnee"
// AMERICAN INDIAN (A01-M43) Cheyenne
* #B40 "Cheyenne"
* #B41 "Northern Cheyenne"
* #B42 "Southern Cheyenne"
// AMERICAN INDIAN (A01-M43) Cheyenne-Arapaho
* #B46 "Cheyenne Arapaho"
// AMERICAN INDIAN (A01-M43) Chickahominy
* #B49 "Chickahominy Indian Tribe"
* #B50 "Chickahominy Eastern Band"
* #B51 "WESTERN CHICKAHOMINY"
// AMERICAN INDIAN (A01-M43) Chickasaw
* #B53 "Chickasaw"
// AMERICAN INDIAN (A01-M43) Chinook
* #B57 "Chinook"
* #B58 "Clatsop"
// AMERICAN INDIAN (A01-M43) Chinook
* #B59 "Columbia River Chinook"
* #B60 "Kathlamet"
* #B61 "Upper Chinook"
* #B62 "Wakiakum Chinook"
* #B63 "Willapa Chinook"
* #B64 "Wishram"
// AMERICAN INDIAN (A01-M43) Chippewa
* #B67 "Bad River Band of the Lake Superior Tribe"
* #B68 "Bay Mills Indian Community of the Sault Ste. Marie Band"
* #B69 "Bois Forte Nett Lake Band of Chippewa"
* #B70 "Burt Lake Chippewa"
* #B71 "Chippewa"
* #B72 "Fond du Lac"
* #B73 "Grand Portage"
* #B74 "Grand Traverse Band of Ottawa and Chippewa Indians"
* #B75 "Keweenaw Bay Indian Community of the L'Anse and Ontonagon Bands"
* #B76 "Lac Court Oreilles Band of Lake Superior Chippewa"
* #B77 "Lac du Flambeau"
* #B78 "Lac Vieux Desert Band of Lake Superior Chippewa"
* #B79 "Lake Superior"
* #B80 "Leech Lake"
* #B81 "Little Shell Chippewa"
* #B82 "Mille Lacs"
* #B83 "Minnesota Chippewa"
* #B84 "Ontonagon"
* #B85 "Red Cliff Band of Lake Superior Chippewa"
* #B86 "Red Lake Band of Chippewa Indians"
* #B87 "Saginaw Chippewa"
* #B88 "St. Croix Chippewa"
* #B89 "Sault Ste. Marie Chippewa"
* #B90 "Sokoagon Chippewa"
* #B91 "Turtle Mountain Band"
* #B92 "White Earth"
* #B93 "Swan Creek Black River Confederate Tribe"
// AMERICAN INDIAN (A01-M43) Chippewa Cree
* #C02 "Rocky Boy's Chippewa Cree"
// AMERICAN INDIAN (A01-M43) Chitimacha
* #C05 "Chitimacha Tribe of Louisiana"
// AMERICAN INDIAN (A01-M43) Choctaw
* #C08 "Choctaw"
* #C09 "Clifton Choctaw"
// AMERICAN INDIAN (A01-M43) Choctaw
* #C10 "Jena Band of Choctaw"
* #C11 "Mississippi Band of Choctaw"
* #C12 "Mowa Band of Choctaw"
* #C13 "Oklahoma Choctaw"
// AMERICAN INDIAN (A01-M43) Choctaw-Apache
* #C17 "Choctaw Apache Community of Ebarb"
// AMERICAN INDIAN (A01-M43) Chumash
* #C20 "Chumash"
* #C21 "Santa Ynez"
* #C22 "San Luis Rey Mission Indian"
// AMERICAN INDIAN (A01-M43) Clear Lake
* #C25 "Clear Lake"
// AMERICAN INDIAN (A01-M43) Coeur D'Alene
* #C26 "Coeur D'Alene"
// AMERICAN INDIAN (A01-M43) Coharie
* #C29 "Coharie"
// AMERICAN INDIAN (A01-M43) Colorado River Indian
* #C32 "Colorado River"
// AMERICAN INDIAN (A01-M43) Colville
* #C35 "Colville"
// AMERICAN INDIAN (A01-M43) Comanche
* #C39 "Comanche"
* #C40 "Oklahoma Comanche"
// AMERICAN INDIAN (A01-M43) Coos, Lower Umpqua, and Siuslaw
* #C44 "Coos Lower Umpqua and Siuslaw"
// AMERICAN INDIAN (A01-M43) Coos
* #C46 "Coos"
// AMERICAN INDIAN (A01-M43) Coquille
* #C47 "Coquille"
* #C48 "Costanoan"
// AMERICAN INDIAN (A01-M43) Coushatta
* #C52 "Alabama Coushatta Tribes of Texas"
* #C53 "Coushatta"
// AMERICAN INDIAN (A01-M43) Cowlitz
* #C56 "Cowlitz"
// AMERICAN INDIAN (A01-M43) Cree
* #C59 "Cree"
// AMERICAN INDIAN (A01-M43) Creek
* #C64 "Alabama Creek"
* #C65 "Alabama Quassarte Tribal Town"
* #C66 "Muscogee Creek Nation"
* #C67 "Eastern Creek"
* #C68 "Eastern Muscogee"
* #C69 "Kialegee Tribal Town"
* #C70 "Lower Muscogee Creek Tama Tribal Town"
* #C71 "Machis Lower Creek Indian"
* #C72 "Poarch Band"
* #C73 "Principal Creek Indian Nation"
* #C74 "Star Clan of Muskogee Creeks"
* #C75 "Thiopthlocco Tribal Town"
* #C76 "Tuckabachee"
// AMERICAN INDIAN (A01-M43) Croatan
* #C81 "Croatan"
// AMERICAN INDIAN (A01-M43) Crow
* #C82 "Crow"
// AMERICAN INDIAN (A01-M43) Cumberland
* #C87 "Cumberland County Association for Indian People"
// AMERICAN INDIAN (A01-M43) Cupeno
* #C89 "Agua Caliente"
* #C90 "Cupeno"
// AMERICAN INDIAN (A01-M43) Delaware
* #C93 "Delaware"
* #C94 "Delaware Tribe of Indians, Oklahoma"
* #C95 "Lenni Lanape"
* #C96 "Munsee"
* #C97 "Delaware Tribe of Western Oklahoma"
* #C98 "Ramapough Mountain"
* #C99 "Sand Hill Band of Delaware Indians"
// AMERICAN INDIAN (A01-M43) Diegueno
* #D05 "Barona Group of Capitan Grande Band"
* #D06 "Campo Band of Diegueno Mission Indians"
* #D07 "Capitan Grande Band of Diegueno Mission Indians"
* #D08 "Cuyapaipe"
* #D09 "Diegueno"
* #D10 "La Posta Band of Diegueno Mission Indians"
* #D11 "Manzanita"
* #D12 "Mesa Grande Band of Diegueno Mission Indians"
* #D13 "San Pasqual Band of Diegueno Mission Indians"
* #D14 "Santa Ysabel Band of Diegueno Mission Indians"
* #D15 "Sycuan Band of Diegueno Mission Indians"
* #D16 "Viejas Group of Capitan Grande Band"
* #D17 "Inaja Band of Diegueno Mission Indians of the Inaja and Cosmit Reservation"
* #D18 "Jarnul Indian Village"
// AMERICAN INDIAN (A01-M43) Eastern Tribes
* #D20 "Attacapa"
* #D21 "Biloxi"
* #D22 "Georgetown"
* #D24 "Nansemond Indian Tribe"
* #D25 "Natchez"
* #D26 "Nausu Waiwash"
// AMERICAN INDIAN (A01-M43) Nipmuc
* #D27 "Nipmuc"
// AMERICAN INDIAN (A01-M43) Eastern Tribes
* #D28 "Golden Hill Paugussett"
* #D29 "Pocomoke Acohonock"
* #D30 "Southeastern Indians"
* #D31 "Susquehanock"
* #D33 "Tunica Biloxi"
* #D34 "Waccamaw Siouan"
* #D36 "Wicomico"
* #D37 "Mehemn Indian Tribe"
// AMERICAN INDIAN (A01-M43) Esselen
* #D42 "Esselen"
// AMERICAN INDIAN (A01-M43) Forts Belknap and Berthold
* #D44 "Fort Belknap"
* #D45 "FORT BERTHOLD"
// AMERICAN INDIAN (A01-M43)
* #Three "Affiliated Tribes of North Dakota"
* #D46 "Three Affiliated Tribes of North Dakota"
// AMERICAN INDIAN (A01-M43) Fort McDowell
* #D49 "Fort McDowell MohaveApache Community"
// AMERICAN INDIAN (A01-M43) Fort Hall
* #D51 "ShoshoneBannock Tribes of the Fort Hall Reservation"
// AMERICAN INDIAN (A01-M43) Gabrieleno
* #D55 "Gabrieleno"
// AMERICAN INDIAN (A01-M43) Grand Ronde
* #D57 "Grand Ronde"
// AMERICAN INDIAN (A01-M43) Gilford
* #D58 "Guilford Native American Association"
// AMERICAN INDIAN (A01-M43) Gros Ventres
* #D60 "Atsina"
* #D61 "Gros Ventres"
* #D62 "Fort Belknap Gros Ventres"
// AMERICAN INDIAN (A01-M43) Haliwa-Saponi
* #D64 "HaliwaSaponi"
// AMERICAN INDIAN (A01-M43) Hidatsa
* #D67 "Hidatsa"
// AMERICAN INDIAN (A01-M43) Hoopa
* #D70 "Hoopa Valley Tribe"
* #D71 "Trinity"
// AMERICAN INDIAN (A01-M43) Hoopa
* #D72 "Whilkut"
// AMERICAN INDIAN (A01-M43) Hoopa Extension
* #D76 "Hoopa Extension"
// AMERICAN INDIAN (A01-M43) Houma
* #D78 "United Houma Nation"
// AMERICAN INDIAN (A01-M43) Iowa
* #D87 "Iowa"
* #D88 "Iowa of Kansas and Nebraska"
* #D89 "Iowa of Oklahoma"
// AMERICAN INDIAN (A01-M43) Indians of Person County
* #D91 "Indians of Person County"
// AMERICAN INDIAN (A01-M43) Iroquois
* #D93 "Cayuga Nation"
* #D94 "Iroquois"
* #D95 "Mohawk"
* #D96 "Oneida Nation of New York"
* #D97 "Onondaga"
* #D98 "Seneca"
* #D99 "Seneca Nation"
* #E01 "SenecaCayuga"
* #E02 "Tonawanda Band of Seneca"
* #E03 "Tuscarora"
* #E04 "Wyandotte"
// AMERICAN INDIAN (A01-M43) Juaneno (Acjachemem)
* #E10 "Juaneno"
// AMERICAN INDIAN (A01-M43) Kalispel
* #E13 "Kalispel Indian Community"
// AMERICAN INDIAN (A01-M43) Karuk
* #E17 "Karuk Tribe of California"
// AMERICAN INDIAN (A01-M43) Kaw
* #E21 "Kaw"
// AMERICAN INDIAN (A01-M43) Kickapoo
* #E24 "Kickapoo"
* #E25 "Oklahoma Kickapoo"
* #E26 "Texas Kickapoo"
// AMERICAN INDIAN (A01-M43) Kiowa
* #E30 "Kiowa"
* #E31 "Oklahoma Kiowa"
// AMERICAN INDIAN (A01-M43) S'Klallam
* #E37 "Jamestown S'Klallam"
* #E38 "Klallam"
* #E39 "Lower Elwha Tribal Community"
* #E40 "Port Gamble Klallam"
// AMERICAN INDIAN (A01-M43) Klamath
* #E44 "Klamath"
// AMERICAN INDIAN (A01-M43) Konkow
* #E48 "Konkow"
// AMERICAN INDIAN (A01-M43) Kootenai
* #E50 "Kootenai"
// AMERICAN INDIAN (A01-M43) Lassik
* #E53 "Lassik"
// AMERICAN INDIAN (A01-M43) Long Island
* #E59 "Matinecock"
* #E60 "Montauk"
* #E61 "Poospatuck"
* #E62 "Setauket"
* #E63 "LONG ISLAND"
// AMERICAN INDIAN (A01-M43) Luiseno
* #E66 "La Jolla Band of Luiseno Mission Indians"
* #E67 "Luiseno"
* #E68 "Pala Band of Luiseno Mission Indians"
* #E69 "Pauma Band of Luiseno Mission Indians"
* #E70 "Pechanga Band of Luiseno Mission Indians"
* #E71 "Soboba"
* #E72 "TwentyNine Palms Band of Luiseno Mission Indians"
// AMERICAN INDIAN (A01-M43) Luiseno
* #E73 "Temecula"
* #E74 "Rincon Band of Luiseno Mission Indians"
// AMERICAN INDIAN (A01-M43) Lumbee
* #E78 "Lumbee"
// AMERICAN INDIAN (A01-M43) Lummi
* #E84 "Lummi"
// AMERICAN INDIAN (A01-M43) Maidu
* #E87 "Mooretown Rancheria of Maidu Indians"
* #E88 "Maidu"
* #E89 "Mountain Maidu"
* #E90 "Nisenen"
* #E91 "Mechoopda Indian Tribe of Chico Rancheria, California"
* #E92 "Berry Creek Rancheria of Maidu Indians"
* #E93 "Enterprise Rancheria"
* #E94 "Greenville Rancheria"
// AMERICAN INDIAN (A01-M43) Makah
* #E95 "Makah"
// AMERICAN INDIAN (A01-M43) Maliseet
* #F01 "Maliseet"
* #F02 "Houlton Band of Maliseet Indians"
// AMERICAN INDIAN (A01-M43) Mandan
* #F05 "Mandan"
// AMERICAN INDIAN (A01-M43) Mattaponi
* #F09 "Mattaponi Indian Tribe"
* #F10 "Upper Mattaponi Tribe"
// AMERICAN INDIAN (A01-M43) Menominee
* #F11 "Menominee"
// AMERICAN INDIAN (A01-M43) Metrolina
* #F15 "Metrolina Nadve American Association"
// AMERICAN INDIAN (A01-M43) Miami
* #F17 "Illinois Miami"
* #F18 "Indiana Miami"
* #F19 "Miami"
* #F20 "Oklahoma Miami"
// AMERICAN INDIAN (A01-M43) Miccosukee
* #F24 "Miccosukee"
// AMERICAN INDIAN (A01-M43) Micmac
* #F27 "Aroostook Band"
* #F28 "Micmac"
// AMERICAN INDIAN (A01-M43) Mission Indians
* #F31 "Mission Indians"
* #F32 "Cahuilla Band of Mission Indians"
// AMERICAN INDIAN (A01-M43) Miwok
* #F34 "Ione Band of Miwok Indians"
* #F35 "Shingle Springs Band of Miwok Indians"
// AMERICAN INDIAN (A01-M43) Me-Wuk
* #F36 "MeWuk"
* #F37 "Jackson Rancheria of MeWuk Indians of California"
* #F38 "Tuolumne Band of MeWuk Indians of California"
* #F39 "Buena Vista Rancheria of MeWuk Indians of California"
* #F40 "Chicken Ranch Rancheria of MeWuk Indians"
* #F41 "Sheep Ranch Rancheria of MeWuk Indians"
// AMERICAN INDIAN (A01-M43) Modoc
* #F42 "Modoc"
* #F43 "Oklahoma Modoc"
// AMERICAN INDIAN (A01-M43) Mohegan
* #F46 "Mohegan"
* #F47 "Monacan Indian Nation"
// AMERICAN INDIAN (A01-M43) Mono
* #F49 "Mono"
* #F50 "North Fork Rancheria"
* #F51 "Cold Springs Rancheria"
* #F52 "Big Sandy Rancheria"
// AMERICAN INDIAN (A01-M43) Nanticode
* #F53 "Nanticoke"
// AMERICAN INDIAN (A01-M43) Nanticode Lenni-Lenape
* #F56 "Nanticoke LenniLenape"
// AMERICAN INDIAN (A01-M43) Narragansett
* #F57 "Narragansett"
// AMERICAN INDIAN (A01-M43) Navajo
* #F62 "Alamo Navajo"
* #F63 "Tohajiileehee Navajo"
* #F64 "Navajo"
* #F65 "Ramah Navajo"
// AMERICAN INDIAN (A01-M43) Nez Perce
* #F71 "Nez Perce"
// AMERICAN INDIAN (A01-M43) Nipmuc
* #F75 "Hassanamisco Band of the Nipmuc Nation"
* #F76 "Chaubunagungameg Nipmuc"
// AMERICAN INDIAN (A01-M43) Nomlaki
* #F77 "Nomlaki"
* #F78 "Paskenta Band of Nomlaki Indians"
// AMERICAN INDIAN (A01-M43) Northwest Tribes
* #F80 "Alsea"
* #F81 "Celilo"
* #F82 "Columbia"
* #F83 "Kalapuya"
* #F84 "Molalla"
* #F85 "Talakamish"
* #F86 "Tenino"
* #F87 "Tillamook"
* #F88 "Wenatchee"
// AMERICAN INDIAN (A01-M43) Omaha
* #F95 "Omaha"
// AMERICAN INDIAN (A01-M43) Oneida Tribe
* #F99 "Oneida Tribe of Wisconsin"
// AMERICAN INDIAN (A01-M43) Oregon Athabaskan
* #G01 "Oregon Athabaskan"
// AMERICAN INDIAN (A01-M43) Osage
* #G04 "Osage"
// AMERICAN INDIAN (A01-M43) Otoe-Missouria
* #G10 "OtoeMissouria"
// AMERICAN INDIAN (A01-M43) Ottawa
* #G14 "Burt Lake Ottawa"
* #G15 "Little River Band of Ottawa Indians of Michigan"
* #G16 "Oklahoma Ottawa"
* #G17 "Ottawa"
* #G18 "Little Traverse Bay Bands of Ottawa Indians of Michigan"
* #G19 "Grand River Band of Ottawa Indians"
// AMERICAN INDIAN (A01-M43) Paiute
* #G24 "Bridgeport Paiute Indian Colony"
* #G25 "Burns Paiute Tribe"
* #G26 "Cedarville Rancheria"
* #G27 "Fort Bidwell"
* #G28 "Fort Independence"
* #G29 "Kaibab Band of Paiute Indians"
* #G30 "Las Vegas Tribe of the Las Vegas Indian Colony"
* #G32 "Lovelock Paiute Tribe of the Lovelock Indian Colony"
* #G33 "Malheur Paiute"
* #G34 "Moapa Band of Paiute"
* #G35 "Northern Paiute"
* #G37 "Paiute"
* #G38 "Pyramid Lake"
* #G39 "San Juan Southern Paiute"
* #G40 "Southern Paiute"
* #G41 "Summit Lake"
* #G42 "Utu Utu Gwaitu Paiute"
* #G43 "Walker River"
* #G44 "Yerington Paiute"
* #G45 "Yahooskin Band of Snake"
* #G47 "Susanville"
* #G48 "Winnemucca"
// AMERICAN INDIAN (A01-M43) Pamunkey
* #G50 "Pamunkey Indian Tribe"
// AMERICAN INDIAN (A01-M43) Passamaquoddy
* #G53 "Indian Township"
* #G54 "Passamaquoddy"
* #G55 "Pleasant Point Passamaquoddy"
// AMERICAN INDIAN (A01-M43) Pawnee
* #G61 "Oklahoma Pawnee"
* #G62 "Pawnee"
// AMERICAN INDIAN (A01-M43) Penobscot
* #G68 "Penobscot"
// AMERICAN INDIAN (A01-M43) Peoria
* #G72 "Oklahoma Peoria"
* #G73 "Peoria"
// AMERICAN INDIAN (A01-M43) Pequot
* #G77 "Mashantucket Pequot"
* #G78 "Pequot"
* #G79 "Paucatuck Eastern Pequot"
// AMERICAN INDIAN (A01-M43) Pima
* #G84 "Gila River Indian Community"
* #G85 "Pima"
* #G86 "Salt River PimaMaricopa"
// AMERICAN INDIAN (A01-M43) Piscataway
* #G92 "Piscataway"
// AMERICAN INDIAN (A01-M43) Pit River
* #G96 "Pit River Tribe of California"
* #G97 "Alturas Indian Rancheria"
* #G98 "Redding Rancheria"
// AMERICAN INDIAN (A01-M43) Pomo and Pit River Indians
* #G99 "Big Valley Rancheria of Pomo and Pit River Indians"
// AMERICAN INDIAN (A01-M43) Pomo
* #H01 "Central Pomo"
* #H02 "Dry Creek"
* #H03 "Eastern Pomo"
* #H04 "Kashia Band of Pomo Indians of the Stewarts Point Rancheria"
* #H05 "Northern Pomo"
* #H06 "Pomo"
* #H07 "Scotts Valley Band"
* #H08 "Stonyford"
* #H09 "Elem Indian Colony of the Sulphur Bank"
* #H10 "Sherwood Valley Rancheria of Pomo Indians of California"
* #H11 "Guidiville Rancheria of California"
* #H12 "Lytton Rancheria of California"
* #H13 "Cloverdale Rancheria"
* #H14 "Coyote Valley Band"
// AMERICAN INDIAN (A01-M43) Ponca
* #H15 "Nebraska Ponca"
* #H16 "Oklahoma Ponca"
* #H17 "Ponca"
// AMERICAN INDIAN (A01-M43) Potawatomi
* #H21 "Citizen Potawatomi Nation"
* #H22 "Forest County"
* #H23 "Hannahville Indian Community of Wisconsin Potawatomi"
* #H24 "Huron Potawatomi"
* #H25 "Pokagon Band of Potawatomi Indians"
* #H26 "Potawatomi"
* #H27 "Prairie Band of Potawatomi Indians"
* #H28 "Wisconsin Potawatomi"
// AMERICAN INDIAN (A01-M43) Powhatan
* #H34 "Powhatan"
// AMERICAN INDIAN (A01-M43) Pueblo
* #H38 "Acoma"
* #H39 "Arizona Tewa"
* #H40 "Cochiti"
* #H41 "Hopi"
* #H42 "Isleta"
* #H43 "Jemez"
* #H44 "Keres"
* #H45 "Laguna"
* #H46 "Nambe"
* #H47 "Picuris"
* #H48 "Piro"
// AMERICAN INDIAN (A01-M43) Pueblo
* #H49 "Pojoaque"
* #H50 "Pueblo"
* #H51 "San Felipe"
* #H52 "San Ildefonso"
* #H53 "San Juan Pueblo"
* #H54 "SAN JUAN DE"
* #H55 "San Juan"
* #H56 "Sandia"
* #H57 "Santa Ana"
* #H58 "Santa Clara"
* #H59 "Santo Domingo"
* #H60 "Taos"
* #H61 "Tesuque"
* #H62 "Tewa"
* #H63 "Ysleta Del Sur Pueblo of Texas"
* #H64 "Zia"
* #H65 "Zuni"
// AMERICAN INDIAN (A01-M43) Pomo
* #H66 "Hopland Band of Pomo Indians"
* #H67 "Manchester Band of Pomo Indians of the ManchesterPoint Arena Racheria"
* #H68 "Middletown Rancheria of Pomo Indians"
* #H69 "Pinoleville Rancheria of Pomo Indians"
// AMERICAN INDIAN (A01-M43) Puget Sount Salish
* #H70 "Marietta Band of Nooksack"
* #H71 "Duwamish"
* #H72 "Kikiallus"
* #H73 "Lower Skagit"
* #H74 "Muckleshoot"
* #H75 "Nisqually"
* #H76 "Nooksack"
* #H77 "Port Madison"
* #H78 "Puget Sound Salish"
* #H79 "Puyaliup"
* #H80 "Samish"
* #H81 "SaukSuiattle"
* #H82 "Skokomish"
* #H83 "Skykomish"
* #H84 "Snohomish"
* #H85 "Snoqualmie"
* #H86 "Squaxin Island"
* #H87 "Steilacoom"
* #H88 "Stillaguamish"
* #H89 "Suquamish"
* #H90 "Swinomish"
// AMERICAN INDIAN (A01-M43) Puget Sount Salish
* #H91 "Tulalip"
* #H92 "Upper Skagit"
// AMERICAN INDIAN (A01-M43) Pomo
* #H93 "Potter Valley Rancheria of Pomo Indians"
* #H94 "Redwood Valley Rancheria of Pomo Indians"
* #H95 "Robinson Rancheria of Pomo Indians"
* #H96 "Upper Lake Band of Pomo Indians of Upper Lake Rancheria"
// AMERICAN INDIAN (A01-M43) Quapaw
* #H97 "Quapaw"
// AMERICAN INDIAN (A01-M43) Tiqua
* #I01 "TIGUA"
// AMERICAN INDIAN (A01-M43) Quinault
* #J01 "Quinault"
// AMERICAN INDIAN (A01-M43) Rappahaonnock
* #J05 "Rappahannock Indian Tribe"
// AMERICAN INDIAN (A01-M43) Reno-Sparks
* #J07 "RenoSparks"
// AMERICAN INDIAN (A01-M43) Round Valley
* #J14 "Round Valley"
// AMERICAN INDIAN (A01-M43) Sac and Fox
* #J19 "Sac and Fox Tribe of the Mississippi in Iowa"
* #J20 "Sac and Fox Nation of Missouri in Kansas and Nebraska"
* #J21 "Sac and Fox Nation, Oklahoma"
* #J22 "Sac and Fox"
// AMERICAN INDIAN (A01-M43) Salinan
* #J28 "Salinan"
// AMERICAN INDIAN (A01-M43) Salish
* #J31 "Salish"
// AMERICAN INDIAN (A01-M43) Salish and Kootenai
* #J35 "Salish and Kootenai"
* #J36 "Pondre Band of Salish and Kootenai"
// AMERICAN INDIAN (A01-M43) Schaghticoke
* #J39 "Schaghticoke"
// AMERICAN INDIAN (A01-M43) Seminole
* #J47 "Big Cypress"
* #J48 "Brighton"
* #J49 "Florida Seminole"
* #J50 "Hollywood Seminole"
* #J51 "Oklahoma Seminole"
* #J52 "Seminole"
* #J53 "Dania Seminole"
* #J54 "Tampa Seminole"
// AMERICAN INDIAN (A01-M43) Serrano
* #J58 "San Manual Band"
* #J59 "Serrano"
// AMERICAN INDIAN (A01-M43) Shasta
* #J62 "Shasta"
* #J63 "Quartz Valley"
// AMERICAN INDIAN (A01-M43) Shawnee
* #J66 "Absentee Shawnee Tribe of Indians of Oklahoma"
* #J67 "Eastern Shawnee"
* #J68 "Shawnee"
* #J69 "Piqua Sept of Ohio Shawnee"
// AMERICAN INDIAN (A01-M43) Shinnecock
* #J74 "Shinnecock"
// AMERICAN INDIAN (A01-M43) Shoalwater Bay
* #J78 "Shoalwater Bay"
// AMERICAN INDIAN (A01-M43) Shoshone
* #J81 "Duckwater"
* #J82 "Ely"
* #J83 "Goshute"
* #J84 "PANAMINT"
// AMERICAN INDIAN (A01-M43) Shoshone
* #J85 "Shoshone"
* #J86 "Skull Valley Band of Goshute Indians"
* #J88 "Death Valley TimbiSha Shoshone"
* #J89 "Northwestern Band of Shoshoni Nation of Utah"
* #J90 "Wind River Shoshone"
* #J91 "Yomba"
// AMERICAN INDIAN (A01-M43)
* #Te-Moak "Tribes of Western Shoshone Ind. of Nevada"
* #J93 "TeMoak Tribes of Western Shoshone Indians"
* #J94 "Battle Mountain"
* #J95 "Elko"
* #J96 "South Fork"
* #J97 "Wells Band"
* #J98 "Ruby Valley"
* #J99 "Odgers Ranch"
// AMERICAN INDIAN (A01-M43) Paiute-Shoshone
* #K01 "Duck Valley"
* #K02 "Fallen"
* #K03 "Fort McDermitt Paiute and Shoshone Tribes"
* #K04 "Shoshone Paiute"
* #K05 "Bishop"
* #K06 "Lone Pine"
* #K07 "Big Pine Band of Owens Valley PaiuteShoshone"
// AMERICAN INDIAN (A01-M43) Siletz
* #K10 "Confederated Tribes of the Siletz Reservation"
// AMERICAN INDIAN (A01-M43) Sioux
* #K16 "Blackfoot Sioux"
* #K17 "Brule Sioux"
* #K18 "Cheyenne River Sioux"
* #K19 "Crow Creek Sioux"
* #K20 "Dakota Sioux"
* #K21 "Flandreau Santee Sioux"
* #K22 "Fort Peck Sioux"
* #K23 "Lake Traverse Sioux"
* #K24 "Lower Brule Sioux"
* #K25 "Lower Sioux Indian Community of Minnesota Mdewakanton Sioux"
* #K26 "Mdewakanton Sioux"
* #K27 "Miniconjou"
* #K28 "Oglala Sioux"
* #K29 "Pine Ridge Sioux"
* #K30 "Pipestone Sioux"
* #K31 "Prairie Island Sioux"
// AMERICAN INDIAN (A01-M43) Sioux
* #K32 "Shakopee Mdewakanton Sioux Community"
* #K33 "Rosebud Sioux"
* #K34 "Sans Arc Sioux"
* #K35 "Santee Sioux of Nebraska"
* #K36 "Sioux"
* #K37 "SissetonWahpeton"
* #K38 "Sisseton Sioux"
* #K39 "Spirit Lake Sioux"
* #K40 "Standing Rock Sioux"
* #K41 "Teton Sioux"
* #K42 "Two Kettle Sioux"
* #K43 "Upper Sioux"
* #K44 "Wahpekute Sioux"
* #K45 "Wahpeton Sioux"
* #K46 "Wazhaza Sioux"
* #K47 "Yankton Sioux"
* #K48 "Yanktonai Sioux"
// AMERICAN INDIAN (A01-M43) Siuslaw
* #K54 "Siuslaw"
// AMERICAN INDIAN (A01-M43) Spokane
* #K59 "Spokane"
// AMERICAN INDIAN (A01-M43) Stockbridge-Munsee
* #K67 "StockbridgeMunsee Community of Mohican Indians of Wisconsin"
// AMERICAN INDIAN (A01-M43) Tohono O'Odham
* #K77 "AkChin"
* #K78 "Gila Bend"
* #K79 "San Xavier"
* #K80 "Sells"
* #K81 "Tohono O'Odham"
// AMERICAN INDIAN (A01-M43) Tolowa
* #K87 "Tolowa"
* #K88 "Big Lagoon Rancheria"
* #K89 "Elk Valley Rancheria"
// AMERICAN INDIAN (A01-M43) Tonkawa
* #K90 "Tonkawa"
// AMERICAN INDIAN (A01-M43) Trinidad
* #K93 "CherAe Indian Community of Trinidad Rancheria"
// AMERICAN INDIAN (A01-M43) Tygh
* #K94 "Tygh"
// AMERICAN INDIAN (A01-M43) Umatilla
* #K97 "Umatilla"
// AMERICAN INDIAN (A01-M43) Umpqua
* #L01 "Cow Creek Umpqua"
* #L02 "Umpqua"
// AMERICAN INDIAN (A01-M43) Ute
* #L06 "Alien Canyon"
* #L07 "Uintah Ute"
* #L08 "Ute Mountain"
* #L09 "Ute"
* #L10 "Southern Ute"
// AMERICAN INDIAN (A01-M43) Wailaki
* #L15 "Wailaki"
// AMERICAN INDIAN (A01-M43) Walla-Walla
* #L19 "WallaWalla"
// AMERICAN INDIAN (A01-M43) Wampanoag
* #L22 "Gay Head Wampanoag"
* #L23 "Mashpee Wampanoag"
* #L24 "Wampanoag"
* #L25 "Seaconeke Wampanoag"
* #L26 "Pocasset Wampanoag"
// AMERICAN INDIAN (A01-M43) Warm Springs
* #L28 "Warm Springs"
// AMERICAN INDIAN (A01-M43) Wascopum
* #L34 "Wascopum"
// AMERICAN INDIAN (A01-M43) Washoe
* #L38 "Alpine"
* #L39 "Carson Colony"
* #L40 "Dresslerville Colony"
* #L41 "Washoe"
* #L42 "Stewart Community"
* #L43 "Woodsfords Community"
// AMERICAN INDIAN (A01-M43) Wichita
* #L47 "Wichita"
* #L48 "Keechi"
* #L49 "Waco"
* #L50 "Tawakonie"
// AMERICAN INDIAN (A01-M43) Wind River
* #L52 "Wind River"
// AMERICAN INDIAN (A01-M43) Winnebago
* #L55 "HoChunk Nation of Wisconsin"
* #L56 "Nebraska Winnebago"
* #L57 "Winnebago"
// AMERICAN INDIAN (A01-M43) Wintun
* #L66 "Wintun"
* #L67 "Cachil Dehe Band of Wintun Indians of the Colusa Rancheria"
* #L68 "Cortina Indian Rancheria of Wintun Indians"
* #L69 "Rumsey Indian Rancheria of Wintun Indians"
// AMERICAN INDIAN (A01-M43) WinTun-Wailaki
* #L71 "Grindstone Indian Rancheria of WintunWailaki Indians"
// AMERICAN INDIAN (A01-M43) Wiyot
* #L72 "Table Bluff"
* #L73 "Wiyot"
* #L74 "Blue Lake Rancheria"
// AMERICAN INDIAN (A01-M43) Yakama
* #L79 "Yakama"
// AMERICAN INDIAN (A01-M43) Yakama Cowlitz
* #L85 "Yakama Cowlitz"
// AMERICAN INDIAN (A01-M43) Yaqui
* #L91 "Barrio Libre"
* #L92 "Pascua Yaqui"
* #L93 "Yaqui"
// AMERICAN INDIAN (A01-M43) Yavapai Apache
* #M01 "Yavapai Apache"
// AMERICAN INDIAN (A01-M43) Yokuts
* #M07 "Picayune Rancheria of Chukchansi Indians"
* #M08 "Tachi"
* #M09 "Tule River"
* #M10 "Yokuts"
* #M11 "Table Mountain Rancheria"
// AMERICAN INDIAN (A01-M43) Yuchi
* #M16 "Yuchi"
* #M17 "Tia"
* #M18 "Wilono"
* #M19 "Anstohini"
// AMERICAN INDIAN (A01-M43) Yuman
* #M22 "Cocopah Tribe of Arizona"
* #M23 "Havasupai"
* #M24 "Hualapai"
* #M25 "Maricopa"
* #M26 "Fort Mojave Indian Tribe of Arizona"
* #M27 "Quechan"
* #M28 "YavapaiPrescott Tribe of the Yavapai Reservation"
* #M29 "YUMAN"
// AMERICAN INDIAN (A01-M43) Yurok
* #M34 "Resighini Rancheria"
* #M35 "Yurok"
* #M36 "COAST YUROK"
// AMERICAN INDIAN (A01-M43) Other Tribes or Not Specified
* #M41 "American Indian"
* #M42 "Tribal Response, NEC"
* #M43 "KUTENAI INDIAN"
// ALASKA INDIAN TRIBES (M44-N66) Alaska Indian Tribes
* #M44 "Alaska Indian"
// ALASKA INDIAN TRIBES (M44-N66) Alaska Native
* #M47 "Alaska Native"
* #M48 "Other Alaskan, NEC"
// ALASKA INDIAN TRIBES (M44-N66) Alaskan Athabascans
* #M52 "Ahtna"
* #M53 "Alaskan Athabascan"
* #M54 "Alatna Village"
* #M55 "Alexander"
* #M56 "Allakaket Village"
* #M57 "Alanvik"
* #M58 "Anvik Village"
* #M59 "Arctic Village"
* #M60 "Beaver Village"
* #M61 "Birch Crcek Village"
* #M62 "Native Village of Cantwell"
* #M63 "Chalkyitsik Village"
* #M64 "Chickaloon Native Village"
* #M65 "Native Village of Chistochina"
* #M66 "Native Village of Chitina"
* #M67 "Circle Native Community"
* #M68 "COOK INLET"
* #M69 "COPPER CENTER"
* #M70 "Copper River"
* #M71 "Village of Dot Lake"
* #M72 "Doyon"
* #M73 "Native Village of Eagle"
* #M74 "Ekiutna Native Village"
* #M75 "Evansville Village"
* #M76 "Native Village of Fort Yukon"
* #M77 "Native Village of Gakona"
* #M78 "Galena Village"
* #M79 "Organized Village of Grayling"
* #M80 "Gulkana Village"
* #M81 "Healy Lake Village"
* #M82 "Holy Cross Village"
* #M83 "Hughes Village"
* #M84 "Huslia Village"
* #M85 "Village of Iliamna"
* #M86 "Village ofKaltag"
* #M87 "Native Village of Kluti Kaah"
* #M88 "Knik Tribe"
* #M89 "Koyukuk Native Village"
* #M90 "Lake Minchumina"
* #M91 "Lime Village"
* #M92 "McGrath Native Village"
* #M93 "Manley Hot Springs Village"
* #M94 "Mentasta Traditional Council"
// ALASKA INDIAN TRIBES (M44-N66) Alaskan Athabascans
* #M95 "Native Village of Minto"
* #M96 "Nenana Native Association"
* #M97 "Nikolai Village"
* #M98 "Ninilchik Village Traditional Council"
* #M99 "Nondalton Village"
* #N01 "Northway Village"
* #N02 "Nulato Village"
* #N03 "Pedro Bay Village"
* #N04 "Rampart Village"
* #N05 "Native Village of Ruby"
* #N06 "Village of Salamatoff"
* #N07 "Seldovia Village Tribe"
* #N08 "Slana"
* #N09 "Shageluk Native Village"
* #N10 "Native Village of Stevens"
* #N11 "Village of Stony River"
* #N12 "Takotna Village"
* #N13 "Native Village of Tanacross"
* #N14 "Tanaina"
* #N15 "Native Village of Tanana"
* #N16 "Tanana Chiefs"
* #N17 "Native Village of Tazlina"
* #N18 "Telida Village"
* #N19 "Native Village of Tetlin"
* #N20 "Tok"
* #N21 "Native Village of Tyonek"
* #N22 "Village of Venetie"
* #N23 "Wiseman"
* #N24 "Kenaitze Indian Tribe"
// ALASKA INDIAN TRIBES (M44-N66) Tlingit-Haida
* #N27 "TLINGIT-HAIDA"
* #N28 "Angoon Community Association"
* #N29 "Central Council of the Tlingit and Haida Indian Tribes"
* #N30 "Chilkat Indian Village"
* #N31 "Chilkoot Indian Association"
* #N32 "Craig Community Association"
* #N33 "Douglas Indian Association"
* #N34 "Haida"
* #N35 "Hoonah Indian Association"
* #N36 "Hydaburg Cooperative Association"
* #N37 "Organized Village of Kake"
* #N38 "Organized Village of Kasaan"
* #N40 "Ketchikan Indian Corporation"
* #N41 "Klawock Cooperative Association"
* #N43 "Pelican"
* #N44 "Petersburg Indian Association"
// ALASKA INDIAN TRIBES (M44-N66) Tlingit-Haida
* #N45 "Organized Village of Saxman"
* #N46 "Sitka Tribe of Alaska"
* #N47 "Tenakee Springs"
* #N48 "Tlingit"
* #N49 "Wrangell Cooperative Association"
* #N50 "Yakutat Tlingit Tribe"
* #N51 "Juneau"
// ALASKA INDIAN TRIBES (M44-N66) Tsimshian
* #N56 "Metlakatia Indian Community, Annette Island Reserve"
* #N57 "Tsimshian"
// ALASKA INDIAN TRIBES (M44-N66) Sealaska
* #N59 "Sealaska"
* #N60 "Sealaska Corporation"
// ALASKA INDIAN TRIBES (M44-N66) Southeast Alaska
* #N64 "Southeast Alaska"
* #N65 "Skagway Village"
// ESKIMO TRIBES (N67-R10) Eskimo Tribes
* #N67 "American Eskimo"
* #N68 "Eskimo"
* #N69 "Greenland Eskimo"
* #N75 "Inuit"
// ESKIMO TRIBES (N67-R10) Inupiat Eskimo
* #N78 "INUPIAT ESKIMO"
* #N79 "Native Village of Ambler"
* #N80 "Anaktuvuk"
* #N81 "Village of Anaktuvuk Pass"
* #N82 "Inupiat Community of the Arctic Slope"
* #N83 "Arctic Slope Corporation"
* #N84 "Atqasuk Village"
* #N85 "Native Village of Barrow hilipiat Traditional Government"
* #N86 "Bering Straits Inupiat"
* #N87 "Native Village of Brevig Mission"
* #N88 "Native Village ofBuckland"
* #N89 "Chinik Eskimo Community"
* #N90 "Native Village of Council"
* #N91 "Native Village of Deering"
* #N92 "Native Village of Elim"
* #N93 "GOLOVIN"
* #N94 "Native Village of Diomede"
// ESKIMO TRIBES (N67-R10) Inupiat Eskimo
* #N95 "Inupiaq"
* #N96 "Inupiat"
* #N97 "Kaktovik Village"
* #N98 "Kawerak"
* #N99 "Native Village of Kiana"
* #P01 "Native Village of Kivalina"
* #P02 "Native Village of Kobuk"
* #P03 "Native Village of Kotzebue"
* #P04 "Native Village of Koyuk"
* #P05 "Kwiguk"
* #P06 "Mauneluk Inupiat"
* #P07 "Nana Inupiat"
* #P08 "Native Village of Noatak"
* #P09 "Nome Eskimo Community"
* #P10 "Noorvik Native Community"
* #P11 "Native Village of Nuiqsut"
* #P12 "Native Village of Point Hope"
* #P13 "Native Village of Point Lay"
* #P14 "Native Village of Selawik"
* #P15 "Native Village of Shaktoolik"
* #P16 "Native Village of Shishmaref"
* #P17 "Native Village of Shungnak"
* #P18 "Village of Solomon"
* #P19 "Native Village of Teller"
* #P20 "Native Village of Unalakleet"
* #P21 "Village of Wainwright"
* #P22 "Village of Wales"
* #P23 "Village of White Mountain"
* #P24 "White Mountain Inupiat"
* #P25 "Native Village of Mary's Igloo"
* #P26 "King Island Native Community"
// ESKIMO TRIBES (N67-R10) Siberian Eskimo
* #P29 "SIBERIAN ESKIMO"
* #P30 "Native Village of Gambell"
* #P31 "Native Village of Savoonga"
* #P32 "Siberian Yupik"
// ESKIMO TRIBES (N67-R10) Cupiks Eskimo
* #P36 "Chevak Native Village"
* #P37 "Native Village of Mekoryuk"
// ESKIMO TRIBES (N67-R10) Yup'ik
* #P38 "Akiachak Native Community"
* #P39 "Akiak Native Community"
// ESKIMO TRIBES (N67-R10) Yup'ik
* #P40 "Village of Alakanuk"
* #P41 "Native Village of Aleknagik"
* #P42 "Yupiit of Andreafski"
* #P43 "Village of Aniak"
* #P44 "Village of Atmautluak"
* #P45 "Orutsararmuit Native Village"
* #P46 "Village of Bill Moore's Slough Bay"
* #P47 "Bristol Bay"
* #P48 "Calista"
* #P49 "Village of Chefomak"
* #P50 "Native of Hamilton"
* #P51 "Native Village of Chuathbaluk"
* #P52 "Village of Clark's Point"
* #P53 "Village of Crooked Creek"
* #P54 "Curyung Tribal Council"
* #P55 "Native Village of Eek"
* #P56 "Native Village of Ekuk"
* #P57 "Ekwok Village"
* #P58 "Emmonak Village"
* #P59 "Native Village of Goodnews Bay"
* #P60 "Native Village of Hooper Bay"
* #P61 "Iqurmuit Traditional Council"
* #P62 "Village of Kalskag"
* #P63 "Native Village of Kasigluk"
* #P64 "Native Village of Kipnuk"
* #P65 "New Koliganek Village Council"
* #P66 "Native Village of Kongiganak"
* #P67 "Village of Kotlik"
* #P68 "Organized Village of Kwethluk"
* #P69 "Native Village of Kwigillingok"
* #P70 "Levelock Village"
* #P71 "Village of Lower Kalskag"
* #P72 "Manokotak Village"
* #P73 "Native Village of Marshall"
* #P74 "Village of Ohogamiut"
* #P75 "Asa'carsarmiut Tribe"
* #P76 "Naknek Native Village"
* #P77 "Native Village of Napaimute"
* #P78 "Native Village of Napakiak"
* #P79 "Native Village of Napaskiak"
* #P80 "Newhalen Village"
* #P81 "New Stuyahok Village"
* #P82 "Newtek Village"
* #P83 "Native Village of Nightmute"
* #P84 "Native Village of Nunapitchuk"
* #P85 "Oscarville Traditional Village"
* #P86 "Pilot Station Traditional Village"
* #P87 "Native Village of Pitkas Point"
// ESKIMO TRIBES (N67-R10) Yup'ik
* #P88 "Platinum Traditional Village"
* #P89 "Portage Creek Village"
* #P90 "Native Village of Kwinhagak"
* #P91 "Village of Red Devil"
* #P92 "Native Village of Saint Michael"
* #P93 "Native Village of Scammon Bay"
* #P94 "Native Village of Sheldon's Point"
* #P95 "Village of Sleetmute"
* #P96 "Stebbins Community Association"
* #P97 "Traditional Village ofTogiak"
* #P98 "Native Village of Toksook Bay"
* #P99 "Tuluksak Native Community"
* #Q01 "MOUNTAIN VILLAGE"
* #R01 "Native Village of Tuntutuliak"
* #R02 "Native Village of Tununak"
* #R03 "Twin Hills Village"
* #R04 "Yup'ik"
* #R05 "Yup'ik Eskimo"
* #R06 "Native Village of Georgetown"
* #R07 "Algaaciq Native Village"
* #R08 "Umkumiute Native Village"
* #R09 "Chuloonawick Native Village"
// ALEUT TRIBES (R11-R99) Aleut
* #R11 "Aleut"
// ALEUT TRIBES (R11-R99) Alutiiq Aleut
* #R15 "ALUTIIQ ALEUT"
* #R16 "Alutiiq"
* #R17 "Village of Afognak"
* #R18 "Native Village of Tatitlek"
* #R19 "Ugashik Village"
// ALEUT TRIBES (R11-R99) Bristol Bay Aleut
* #R28 "Bristol Bay Aleut"
* #R29 "Native Village of Chignik"
* #R30 "Chignik Lake Village"
* #R31 "Egegik Village"
* #R32 "Igiugig Village"
* #R33 "Ivanoff Bay Village"
* #R34 "King Salmon"
* #R35 "Kokhanok Village"
* #R36 "Native Village of Perryville"
* #R37 "Native Village of Pilot Point"
* #R38 "Native Village of Port Heiden"
// ALEUT TRIBES (R11-R99) Chugach Aleut
* #R43 "Native Village of Chanega"
* #R44 "Chugach Aleut"
* #R45 "Chugach Corporation"
* #R46 "Native Village of Nanwaiek"
* #R47 "Native Village of Port Graham"
// ALEUT TRIBES (R11-R99) Eyak
* #R51 "Eyak"
// ALEUT TRIBES (R11-R99) Koniag Aleut
* #R55 "Native Village of Akhiok"
* #R56 "Agdaagux Tribe of King Cove"
* #R57 "Native Village of Karluk"
* #R58 "Native Village of Kanatak"
* #R59 "Kodiak"
* #R60 "Koniag Aleut"
* #R61 "Native Village of Larsen Bay"
* #R62 "Village of Old Harbor"
* #R63 "Native Village of Ouzinkie"
* #R64 "Native Village of Port Lions"
* #R65 "Lesnoi Village"
// ALEUT TRIBES (R11-R99) Sugpiaq
* #R67 "Sugpiaq"
// ALEUT TRIBES (R11-R99) Suqpigaq
* #R71 "Suqpigaq"
// ALEUT TRIBES (R11-R99) Unangan Aleut
* #R74 "UNANGAN ALEUT"
* #R75 "Native Village of Akutan"
* #R76 "Aleut Corporation"
* #R77 "Aleutian"
* #R78 "Aleutian Islander"
* #R79 "Native Village of Atka"
* #R80 "Native Village of Belkofski"
* #R81 "Native Village of Chignikn Lagoon"
* #R82 "King Cove"
* #R83 "Native Village of False Pass"
* #R84 "Native Village of Nelson Lagoon"
* #R85 "Native Village of Nikolski"
* #R86 "Pauloff Harbor Village"
* #R87 "Qagan Toyagungin Tribe of Sand Point Village"
* #R88 "Qawalangin Tribe of Unalaska"
// ALEUT TRIBES (R11-R99) Unangan Aleut
* #R89 "Saint George"
* #R90 "Saint Paul"
* #R91 "Sand Point"
* #R92 "South Naknek Village"
* #R93 "Unangan"
* #R94 "Unalaska"
* #R95 "Native Village of Unga"
* #R96 "Kaguyak Village"


CodeSystem: RaceRecode40CS
Id: vrdr-race-recode-40-cs
Title: "Race Recode 40 CS"
Description: "Race Recode 40"
* ^caseSensitive = true
* #01 "White"
* #02 "Black"
* #03 "American Indian or Alaskan Native (AIAN)"
* #04 "Asian Indian"
* #05 "Chinese"
* #06 "Filipino"
* #07 "Japanese"
* #08 "Korean"
* #09 "Vietnamese"
* #10 "Other or Multiple Asian"
* #11 "Hawaiian"
* #12 "Guamanian"
* #13 "Samoan"
* #14 "Other or Multiple Pacific Islander"
* #15 "Black and White"
* #16 "Black and AIAN"
* #17 "Black and Asian"
* #18 "AIAN and NHOPI"
* #19 "NHOPI and White"
* #20 "AIAN and Asian"
* #21 "AIAN and NHOPI"
* #22 "Asian and White"
* #23 "Asian and NHOPI"
* #24 "NHOPI and White"
* #25 "Black, AIAN and White"
* #26 "Black, AIAN and Asian"
* #27 "Black, AIAN and NHOPI"
* #28 "Black, Asian and White"
* #29 "Black, Asian and NHOPI"
* #30 "Black, NHOPI and White"
* #31 "AIAN, Asian and White"
* #32 "AIAN, NHOPI and White"
* #33 "AIAN, Asian and NHOPI"
* #34 "Asian, NHOPI and White"
* #35 "Black, AIAN, Asian and White"
* #36 "Black, AIAN, Asian and NHOPI"
* #37 "Black, AIAN, NHOPI and White"
* #38 "Black, Asian, NHOPI and White"
* #39 "AIAN, Asian, NHOPI and White"
* #40 "Black, AIAN, Asian, NHOPI and White"
* #99 "Unknown and Other Race"
