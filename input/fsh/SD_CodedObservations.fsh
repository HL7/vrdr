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
* insert ParameterNameType(shipmentNumber, string, shipment number, shipment number)
* insert ParameterNameType(receiptDate, date, receipt date, receipt date)
* insert ParameterNameType(coderStatus, integer, coder status, coder status)
* insert ParameterNameType(intentionalReject, CodeableConcept, Intentional reject, Intentional reject)
* insert ParameterNameType(acmeSystemReject, CodeableConcept, ACME System Reject, ACME System Reject)
* insert ParameterNameType(transaxConversion, CodeableConcept, ALIAS: Transax Conversion, Transax Conversion)
* parameter[intentionalReject].value[x] from IntentionalRejectVS
* parameter[acmeSystemReject].value[x] from SystemRejectVS
* parameter[transaxConversion].value[x] from TransaxConversionVS
* parameter[receiptDate].valueDate.extension contains
    PartialDate named partialDate 0..1

ValueSet: IntentionalRejectVS
Id: vrdr-intentional-reject-vs
Title: "Intentional Reject ValueSet"
Description: "Intentional Reject ValueSet.

Mapping to IJE codes [here](ConceptMap-IntentionalRejectCM.html)."
* IntentionalRejectCS#1 "Reject1"
* IntentionalRejectCS#2 "Reject2"
* IntentionalRejectCS#3 "Reject3"
* IntentionalRejectCS#4 "Reject4"
* IntentionalRejectCS#5 "Reject5"
* IntentionalRejectCS#9 "Reject9"

ValueSet: SystemRejectVS
Id: vrdr-system-reject-vs
Title: "System Reject ValueSet"
Description: "System Reject ValueSet.

Mapping to IJE codes [here](ConceptMap-SystemRejectCM.html)."
* SystemRejectCS#0 "Not Rejected"
* SystemRejectCS#1 "MICAR Reject Dictionary Match"
* SystemRejectCS#2 "ACME Reject"
* SystemRejectCS#3 "MICAR Reject Rule Application"
* SystemRejectCS#4 "Record Reviewed"


ValueSet: TransaxConversionVS
Id: vrdr-transax-conversion-vs
Title: "Transax Conversion ValueSet"
Description: "Transax Conversion ValueSet.

Mapping to IJE codes [here](ConceptMap-TransaxConversionCM.html)."
* TransaxConversionCS#3 "Conversion using non-ambivalent table entries"
* TransaxConversionCS#4 "Conversion using ambivalent table entries"
* TransaxConversionCS#5 "Duplicate entity-axis codes deleted; no other action involved"
* TransaxConversionCS#6 "Artificial code conversion; no other action"


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
Description: "Automated Underlying Cause Of Death (Observation)"
* insert RequireMetaProfile(Profile: AutomatedUnderlyingCauseOfDeath)
* code = $loinc#80358-5
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
Description: "Record Axis Cause Of Death (Observation): Up to 20 of instances of this profile may be included in a coding bundle.  Each instance is labeled with its position (1-20)."
* code = $loinc#80357-7
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
Description: "Entity Axis Cause Of Death (Observation):   Up to 20 of instances of this profile may be included in a coding bundle.  Each instance is labeled with its lineNumber, Position and e-code indicator."
* insert RequireMetaProfile(Profile: EntityAxisCauseOfDeath)
* code = $loinc#80356-9
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
* component[eCodeIndicator].code = #eCodeIndicator
* component[eCodeIndicator].value[x] 1..1
* component[eCodeIndicator].value[x] only boolean
* component[eCodeIndicator] ^short = "Entity Axis Cause of Death order"
* component[eCodeIndicator].valueBoolean ^short = "eCodeIndicator"

Profile: PlaceOfInjury
Parent: Observation
Id: vrdr-place-of-injury
Title: "Place Of Injury"
Description: "Place Of Injury  (Observation)"
* insert RequireMetaProfile(Profile: PlaceOfInjury)
* code = $loinc#11376-1
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from PlaceOfInjuryVS (required)


ValueSet: ActivityAtTimeOfDeathVS
Id: vrdr-activity-at-time-of-death-vs
Title: "Activity at Time of Death VS"
Description: "Activity at Time of Death.

Mapping to IJE codes [here](ConceptMap-ActivityAtTimeOfDeathCM.html)."
* ActivityAtTimeOfDeathCS#0 "While engaged in sports activity"
* ActivityAtTimeOfDeathCS#1 "While engaged in leisure activities."
* ActivityAtTimeOfDeathCS#2 "While working for income"
* ActivityAtTimeOfDeathCS#3 "While engaged in other types of work"
* ActivityAtTimeOfDeathCS#4 "While resting, sleeping, eating, or engaging in other vital activities"
* ActivityAtTimeOfDeathCS#8 "While engaged in other specified activities."
* ActivityAtTimeOfDeathCS#9 "During unspecified activity"
* $v3-NullFlavor#UNK "unknown"

Profile: ActivityAtTimeOfDeath
Parent: Observation
Id: vrdr-activity-at-time-of-death
Title: "Activity at Time of Death"
Description: "Activity at Time of Death (Observation)"
* insert RequireMetaProfile(Profile: ActivityAtTimeOfDeath)
* code = $loinc#80626-5
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from ActivityAtTimeOfDeathVS (required)


RuleSet: obscodecomponent(code, valueSet)
* component contains {code} 0..1
* component[{code}].code 1..1
* component[{code}].code = ComponentCS#{code}
* component[{code}].value[x] 1..1
* component[{code}].value[x] only CodeableConcept
* component[{code}] ^short = "{code}"
* component[{code}].value[x] from {valueSet}

RuleSet: primobscodecomponent(code, type)
* component contains {code} 0..1
* component[{code}].code 1..1
* component[{code}].code = ComponentCS#{code}
* component[{code}].value[x] 1..1
* component[{code}].value[x] only {type}
* component[{code}] ^short = "{code}"

Profile: CodedRaceAndEthnicity
Parent: Observation
Id: vrdr-coded-race-and-ethnicity
Title: "Coded Race and Ethnicity"
Description: "Coded (from NCHS) Race and Ethnicity (Observation)"
* insert RequireMetaProfile(Profile: CodedRaceAndEthnicity)
* code = ObservationsCS#codedraceandethnicity
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
Description: "Input (from EDRS) Race and Ethnicity (Observation)"
* insert RequireMetaProfile(Profile: InputRaceAndEthnicity)
* code = ObservationsCS#inputraceandethnicity
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



ValueSet: ICD10CausesOfDeathVS
Id: vrdr-icd10-causes-of-death-vs
Title: "ICD10 Causes of Death VS"
Description: "ICD10 Causes of Death VS"
* include codes from system $icd10

ValueSet: HispanicOriginVS
Id: vrdr-hispanic-origin-vs
Title: "HispanicOrigin Value Set"
Description: "NCHS HispanicOrigin Value Set.


Mapping to IJE codes [here](ConceptMap-HispanicOriginCM.html)."
//* include codes from system HispanicOriginCS
* HispanicOriginCS#100 "Not Hispanic"
* HispanicOriginCS#200 "Spaniard"
* HispanicOriginCS#201 "Andalusian"
* HispanicOriginCS#202 "Asturian"
* HispanicOriginCS#203 "Castillian"
* HispanicOriginCS#204 "Catalonian"
* HispanicOriginCS#205 "Balearic Islander"
* HispanicOriginCS#206 "Gallego"
* HispanicOriginCS#207 "Valencian"
* HispanicOriginCS#208 "Canarian"
* HispanicOriginCS#209 "Spanish Basque"
// 210 -219 Mexican
* HispanicOriginCS#210 "Mexican"
* HispanicOriginCS#211 "Mexican-2"
* HispanicOriginCS#212 "Mexican American"
* HispanicOriginCS#213 "Mexicano"
* HispanicOriginCS#214 "Chicano"
* HispanicOriginCS#215 "La Raza"
* HispanicOriginCS#216 "Mexican American Indian"
* HispanicOriginCS#217 "Caribbean"
* HispanicOriginCS#218 "Mexico"
// 220 -249 Central and South America
* HispanicOriginCS#220 "Central and South America"
// 221 -229 Central American
* HispanicOriginCS#221 "Costa Rican"
* HispanicOriginCS#222 "Guatemalan"
* HispanicOriginCS#223 "Honduran"
* HispanicOriginCS#224 "Nicaraguan"
* HispanicOriginCS#225 "Panamanian"
* HispanicOriginCS#226 "Salvadoran"
* HispanicOriginCS#227 "Central American"
* HispanicOriginCS#228 "Central American Indian"
* HispanicOriginCS#229 "Canal Zone"
// 231 -249 South American
* HispanicOriginCS#231 "Argentinean"
* HispanicOriginCS#232 "Bolivian"
* HispanicOriginCS#233 "Chilean"
* HispanicOriginCS#234 "Colombian"
* HispanicOriginCS#235 "Ecuadorian"
* HispanicOriginCS#236 "Paraguayan"
* HispanicOriginCS#237 "Peruvian"
* HispanicOriginCS#238 "Uruguayan"
* HispanicOriginCS#239 "Venezuelan"
* HispanicOriginCS#240 "South American Indian"
* HispanicOriginCS#241 "Criollo"
* HispanicOriginCS#242 "South American"
// 250 -259 Latin American
* HispanicOriginCS#250 "Latin American"
* HispanicOriginCS#251 "Latin"
* HispanicOriginCS#252 "Latino"
// 260 -269 Puerto Rican
* HispanicOriginCS#260 "Puerto Rican"
* HispanicOriginCS#261 "Puerto Rican-2"
// 270 -274 Cuban
* HispanicOriginCS#270 "Cuban"
* HispanicOriginCS#271 "Cuban-2"
// 275 -279 Dominican
* HispanicOriginCS#275 "Dominican"
// 280 -299 Other Spanish/Hispanic
* HispanicOriginCS#280 "Other Spanish"
* HispanicOriginCS#281 "Hispanic"
* HispanicOriginCS#282 "Spanish"
* HispanicOriginCS#283 "Californio"
* HispanicOriginCS#284 "Tejano"
* HispanicOriginCS#285 "Nuevo Mexicano"
* HispanicOriginCS#286 "Spanish American"
* HispanicOriginCS#287 "Spanish American Indian"
* HispanicOriginCS#288 "Meso American Indian"
* HispanicOriginCS#289 "Mestizo"
* HispanicOriginCS#291 "Multiple Hispanic Responses"
* HispanicOriginCS#299 "Other Spanish 2"
// 996 -999 Uncodable, deferred, unknown
* HispanicOriginCS#996 "Uncodable"
* HispanicOriginCS#997 "Deferred"
* HispanicOriginCS#998 "Unknown"
* HispanicOriginCS#999 "First Pass Reject"

ValueSet: RaceCodeVS
Id: vrdr-race-code-vs
Title: "Race Code Value Set"
Description: "NCHS Race Codes.

Mapping to IJE codes [here](ConceptMap-RaceCodeCM.html)."
//* include codes from system RaceCodeCS
* RaceCodeCS#100 "White Checkbox"
* RaceCodeCS#101 "White"
* RaceCodeCS#102 "Arab"
* RaceCodeCS#103 "English"
* RaceCodeCS#104 "French"
* RaceCodeCS#105 "German"
* RaceCodeCS#106 "Irish"
* RaceCodeCS#107 "Italian"
* RaceCodeCS#108 "Near Easterner"
* RaceCodeCS#109 "Polish"
* RaceCodeCS#110 "Scottish"
* RaceCodeCS#111 "Armenian"
* RaceCodeCS#112 "Assyrian"
* RaceCodeCS#113 "Egyptian"
* RaceCodeCS#114 "Iranian"
* RaceCodeCS#115 "Iraqi"
* RaceCodeCS#116 "Lebanese"
* RaceCodeCS#117 "Middle East"
* RaceCodeCS#118 "Palestinian"
* RaceCodeCS#119 "Syrian"
* RaceCodeCS#120 "Other Arab"
* RaceCodeCS#121 "Afghanistani"
* RaceCodeCS#122 "Israeli"
* RaceCodeCS#123 "Californio"
* RaceCodeCS#124 "Cajun"
* RaceCodeCS#125 "EUROPEAN"
* RaceCodeCS#126 "PORTUGUESE"
* RaceCodeCS#127 "ALBANIAN"
* RaceCodeCS#128 "CROATIAN"
* RaceCodeCS#129 "CZECH"
* RaceCodeCS#130 "RUSSIAN"
* RaceCodeCS#131 "UKRANIAN"
* RaceCodeCS#132 "CZECHOSLOVAKIAN"
* RaceCodeCS#133 "BOSNIAN"
* RaceCodeCS#134 "KOSOVIAN"
* RaceCodeCS#199 "Multiple WHITE responses"
* RaceCodeCS#200 "Black or African American"
// BLACK OR AFRICAN AMERICAN (200-299) Black
* RaceCodeCS#201 "Black"
* RaceCodeCS#202 "African"
* RaceCodeCS#203 "African American"
* RaceCodeCS#204 "AfroAmerican"
* RaceCodeCS#205 "Nigritian"
* RaceCodeCS#206 "Negro"
* RaceCodeCS#207 "Bahamian"
* RaceCodeCS#208 "Barbadian"
* RaceCodeCS#209 "Botswana"
* RaceCodeCS#213 "Ethiopian"
* RaceCodeCS#214 "Haitian"
* RaceCodeCS#215 "Jamaican"
* RaceCodeCS#216 "Liberian"
* RaceCodeCS#218 "Namibian"
* RaceCodeCS#219 "Nigerian"
* RaceCodeCS#220 "Other African"
* RaceCodeCS#222 "Tobago"
* RaceCodeCS#223 "Trinidad"
* RaceCodeCS#224 "West Indies"
* RaceCodeCS#225 "Zaire"
* RaceCodeCS#226 "ERITREAN"
* RaceCodeCS#227 "TOGOLESE"
* RaceCodeCS#228 "SOMALIAN"
* RaceCodeCS#299 "Multiple BLACK or AFRICAN AMERICAN responses"
// AMERICAN INDIAN AND ALASKA NATIVE (300-399, A01-R99) American Indian or Alaskan Native
* RaceCodeCS#300 "American Indian Checkbox"
// ASIAN (400-499)
* RaceCodeCS#400 "Asian"
* RaceCodeCS#401 "Asian Indian"
* RaceCodeCS#402 "Bangladeshi"
* RaceCodeCS#403 "Bhutanese"
* RaceCodeCS#404 "Burmese"
* RaceCodeCS#405 "Cambodian"
// ASIAN (400-499) Chinese
* RaceCodeCS#411 "Chinese"
* RaceCodeCS#412 "Taiwanese"
// ASIAN (400-499) Filipino
* RaceCodeCS#421 "Filipino"
* RaceCodeCS#422 "Hmong"
* RaceCodeCS#423 "Indonesian"
// ASIAN (400-499) Japanese
* RaceCodeCS#431 "Japanese"
// ASIAN (400-499) Korean
* RaceCodeCS#441 "Korean"
// ASIAN (400-499) Other Asian
* RaceCodeCS#442 "Laotian"
// ASIAN (400-499) Other Asian
* RaceCodeCS#443 "Malaysian"
* RaceCodeCS#444 "Okinawan"
* RaceCodeCS#445 "Pakistani"
* RaceCodeCS#446 "Sri Lankan"
* RaceCodeCS#447 "Thai"
// ASIAN (400-499) Vietnamese
* RaceCodeCS#451 "Vietnamese"
// ASIAN (400-499) Other Asian
* RaceCodeCS#461 "Amerasian"
* RaceCodeCS#462 "Asian2"
* RaceCodeCS#463 "Asiatic"
* RaceCodeCS#464 "Eurasian"
* RaceCodeCS#465 "Mongolian"
* RaceCodeCS#466 "Oriental"
* RaceCodeCS#467 "Whello"
* RaceCodeCS#468 "Yello"
* RaceCodeCS#469 "Indo Chinese"
* RaceCodeCS#470 "Iwo Jiman"
* RaceCodeCS#471 "Maldivian"
* RaceCodeCS#472 "Nepalese"
* RaceCodeCS#473 "Singaporean"
* RaceCodeCS#474 "MADAGASCAR"
* RaceCodeCS#475 "MIEN"
* RaceCodeCS#476 "TIBETAN"
* RaceCodeCS#499 "Multiple ASIAN responses"
//  NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER (500-599) Polynesian
* RaceCodeCS#500 "Native Hawaiian Checkbox"
* RaceCodeCS#501 "Native Hawaiian"
* RaceCodeCS#502 "Hawaiian"
* RaceCodeCS#503 "Part Hawaiian"
* RaceCodeCS#511 "Samoan"
* RaceCodeCS#512 "Tahitian"
* RaceCodeCS#513 "Tongan"
* RaceCodeCS#514 "Polynesian"
* RaceCodeCS#515 "Tokelauan"
// NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER (500-599) Micronesian
* RaceCodeCS#521 "Guamanian"
* RaceCodeCS#522 "Chamorro"
* RaceCodeCS#531 "Mariana Islander"
* RaceCodeCS#532 "Marshallese"
* RaceCodeCS#533 "Palauan"
// NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER (500-599) Micronesian
* RaceCodeCS#534 "Carolinian"
* RaceCodeCS#535 "Kosraean"
* RaceCodeCS#536 "Micronesian"
* RaceCodeCS#537 "Pohnpeian"
* RaceCodeCS#538 "Saipanese"
* RaceCodeCS#539 "Kirabati"
* RaceCodeCS#540 "Chuukese"
* RaceCodeCS#541 "Yapese"
// NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER (500-599) Melanesian
* RaceCodeCS#542 "Fijian"
* RaceCodeCS#543 "Melanesian"
* RaceCodeCS#544 "Papua New Guinean"
* RaceCodeCS#545 "Solomon Islander"
* RaceCodeCS#546 "New Hebrides"
// NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER (500-599) Other Pacific Islander
* RaceCodeCS#547 "Pacific Islander"
* RaceCodeCS#599 "Multiple NATIVE HAWAIIAN and OTHER PACIFIC ISLANDER responses"
// SOME OTHER RACE (600-999) Some Other Race
* RaceCodeCS#601 "Argentinean"
* RaceCodeCS#602 "Bolivian"
* RaceCodeCS#604 "Central American"
* RaceCodeCS#605 "Chicano"
* RaceCodeCS#606 "Chilean"
* RaceCodeCS#607 "Colombian"
* RaceCodeCS#608 "Costa Rican"
* RaceCodeCS#609 "Cuban"
* RaceCodeCS#610 "Ecuadorian"
* RaceCodeCS#611 "Salvadoran"
* RaceCodeCS#612 "Guatemalan"
* RaceCodeCS#613 "Hispanic"
* RaceCodeCS#614 "Honduran"
* RaceCodeCS#615 "Latin American"
* RaceCodeCS#616 "Mestizo"
* RaceCodeCS#617 "Mexican"
* RaceCodeCS#618 "Nicaraguan"
* RaceCodeCS#619 "Panamanian"
* RaceCodeCS#620 "Paraguayan"
* RaceCodeCS#621 "Peruvian"
* RaceCodeCS#622 "Puerto Rican"
* RaceCodeCS#623 "Morena"
* RaceCodeCS#624 "South American"
* RaceCodeCS#625 "Spanish"
// SOME OTHER RACE (600-999) Some Other Race
* RaceCodeCS#626 "Spanish American"
* RaceCodeCS#627 "Sudamericano"
* RaceCodeCS#628 "Uruguayan"
* RaceCodeCS#629 "Venezuelan"
* RaceCodeCS#630 "Spaniard"
* RaceCodeCS#631 "Tejano"
* RaceCodeCS#632 "Cayman Islander"
* RaceCodeCS#633 "Moroccan"
* RaceCodeCS#634 "North African"
* RaceCodeCS#635 "United Arab Emirates"
* RaceCodeCS#636 "South African"
* RaceCodeCS#637 "Azerbaijani"
* RaceCodeCS#638 "Aryan"
* RaceCodeCS#640 "Dominican Republic"
* RaceCodeCS#641 "Dominica Islander"
* RaceCodeCS#642 "Belizean"
* RaceCodeCS#643 "Bermudan"
* RaceCodeCS#644 "Aruba Islander"
* RaceCodeCS#645 "Cayenne"
* RaceCodeCS#646 "Guyanese"
* RaceCodeCS#647 "Surinam"
* RaceCodeCS#648 "Sudanese"
* RaceCodeCS#651 "Brazilian"
* RaceCodeCS#652 "Brown"
* RaceCodeCS#653 "Bushwacker"
* RaceCodeCS#655 "Cape Verdean"
* RaceCodeCS#656 "Chocolate"
* RaceCodeCS#657 "Coe Clan"
* RaceCodeCS#658 "Coffee"
* RaceCodeCS#659 "Cosmopolitan"
* RaceCodeCS#660 "Issues"
* RaceCodeCS#661 "Jackson White"
* RaceCodeCS#662 "Melungeon"
* RaceCodeCS#663 "Mixed"
* RaceCodeCS#664 "Ramp"
* RaceCodeCS#665 "Wesort"
* RaceCodeCS#666 "Mulatto"
* RaceCodeCS#667 "Moor"
* RaceCodeCS#668 "Biracial"
* RaceCodeCS#669 "Creole"
* RaceCodeCS#670 "Indian"
* RaceCodeCS#671 "Turk"
* RaceCodeCS#672 "Half Breed"
* RaceCodeCS#673 "Rainbow"
* RaceCodeCS#674 "Octoroon"
* RaceCodeCS#675 "Quadroon"
* RaceCodeCS#676 "Multiracial"
* RaceCodeCS#677 "Interracial"
// SOME OTHER RACE (600-999) Some Other Race
* RaceCodeCS#678 "Multiethnic"
* RaceCodeCS#679 "Multinational"
* RaceCodeCS#680 "JEWISH"
* RaceCodeCS#681 "CANADIAN"
* RaceCodeCS#682 "FRENCH CANADIAN"
* RaceCodeCS#683 "IBERIAN"
* RaceCodeCS#684 "TRIGUENO"
* RaceCodeCS#685 "MALADA"
* RaceCodeCS#686 "OTHER SPANISH"
* RaceCodeCS#699 "OTHER RACE, N.E.C."
* RaceCodeCS#990 "Multiple SOME OTHER RACE responses 995 American"
// SOME OTHER RACE (600-999) Uncodable, Deferred, Unknown
* RaceCodeCS#996 "Uncodable"
* RaceCodeCS#997 "Deferred"
* RaceCodeCS#998 "UNKNOWN"
* RaceCodeCS#999 "First Pass Reject"
// AMERICAN INDIAN (A01-M43) Abenaki
* RaceCodeCS#A01 "Abenaki Nation of Missiquoi"
// AMERICAN INDIAN (A01-M43) Algonquian
* RaceCodeCS#A05 "Algonquian"
// AMERICAN INDIAN (A01-M43) Apache
* RaceCodeCS#A09 "Apache"
* RaceCodeCS#A10 "Chiricahua"
* RaceCodeCS#A11 "Fort Sill Apache"
* RaceCodeCS#A12 "Jicarilla Apache"
* RaceCodeCS#A13 "Lipan Apache"
* RaceCodeCS#A14 "Mescalero Apache"
* RaceCodeCS#A15 "Oklahoma Apache"
* RaceCodeCS#A16 "Payson Tonto Apache"
* RaceCodeCS#A17 "San Carlos Apache"
* RaceCodeCS#A18 "White Mountain Apache"
// AMERICAN INDIAN (A01-M43) Arapahoe
* RaceCodeCS#A24 "Arapahoe"
* RaceCodeCS#A25 "Northern Arapahoe"
* RaceCodeCS#A26 "Southern Arapahoe"
* RaceCodeCS#A27 "Wind River Arapahoe"
// AMERICAN INDIAN (A01-M43) Arikara
* RaceCodeCS#A31 "Arikara"
// AMERICAN INDIAN (A01-M43) Assiniboine
* RaceCodeCS#A34 "Assiniboine"
* RaceCodeCS#A35 "Fort Peck Assiniboine"
* RaceCodeCS#A36 "Fort Belknap Assiniboine"
// AMERICAN INDIAN (A01-M43) Assiniboine Sioux
* RaceCodeCS#A38 "Assiniboine Sioux"
* RaceCodeCS#A39 "Fort Peck Assiniboine and Sioux"
// AMERICAN INDIAN (A01-M43) Bannock
* RaceCodeCS#A42 "Bannock"
// AMERICAN INDIAN (A01-M43) Blackfeet
* RaceCodeCS#A45 "Blackfeet"
// AMERICAN INDIAN (A01-M43) Brotherton
* RaceCodeCS#A51 "Brotherton"
// AMERICAN INDIAN (A01-M43) Burt Lake Band
* RaceCodeCS#A54 "Burt Lake Band"
// AMERICAN INDIAN (A01-M43) Caddo
* RaceCodeCS#A56 "Caddo"
* RaceCodeCS#A57 "Caddo Indian Tribe of Oklahoma"
* RaceCodeCS#A58 "Caddo Adais Indians"
// AMERICAN INDIAN (A01-M43) Cahuilla
* RaceCodeCS#A61 "Agua Caliente Band of Cahuilla Indians"
* RaceCodeCS#A62 "Augustine"
* RaceCodeCS#A63 "Cabazon Band of Cahuilla Mission Indians"
* RaceCodeCS#A64 "Cahuilla"
* RaceCodeCS#A65 "Los Coyotes Band of Cahuilla Mission Indians"
* RaceCodeCS#A66 "Morongo Band of Cahuilla Mission Indians"
* RaceCodeCS#A67 "Santa Rosa Cahuilla"
* RaceCodeCS#A68 "Torres Martinez Band of Cahuilla Mission Indians"
* RaceCodeCS#A69 "Ramona Band or Village of Cahuilla Mission Indians"
// AMERICAN INDIAN (A01-M43) California Tribes
* RaceCodeCS#A74 "CALIFORNIA TRIBES N.E.C."
* RaceCodeCS#A75 "Cahto Indian Tribe of the Laytonville Rancheria"
* RaceCodeCS#A76 "Chimariko"
* RaceCodeCS#A77 "Coast Miwok"
* RaceCodeCS#A78 "MISSION BAND"
* RaceCodeCS#A79 "Kawaiisu"
* RaceCodeCS#A80 "Kem River Paiute Council"
* RaceCodeCS#A81 "Mattole"
* RaceCodeCS#A82 "Red Wood"
* RaceCodeCS#A83 "Santa Rosa Indian Community"
* RaceCodeCS#A84 "Takelma"
* RaceCodeCS#A85 "Wappo"
* RaceCodeCS#A86 "Yana"
* RaceCodeCS#A87 "Yuki"
* RaceCodeCS#A88 "Bear River Band of Rohnerville Rancheria"
* RaceCodeCS#A89 "DIGGER"
* RaceCodeCS#A90 "WIKCHAMNI"
// AMERICAN INDIAN (A01-M43) Tolowa
* RaceCodeCS#A91 "Smith River Rancheria"
// AMERICAN INDIAN (A01-M43) Canadian and Latin America
* RaceCodeCS#A94 "Canadian Indian"
* RaceCodeCS#A95 "Central American Indian"
* RaceCodeCS#A96 "French American Indian"
* RaceCodeCS#A97 "Mexican American Indian"
* RaceCodeCS#A98 "South American Indian"
* RaceCodeCS#A99 "Spanish American Indian"
// AMERICAN INDIAN (A01-M43) Catawba
* RaceCodeCS#B04 "Catawba Indian Nation"
// AMERICAN INDIAN (A01-M43) Cayuse
* RaceCodeCS#B07 "Cayuse"
// AMERICAN INDIAN (A01-M43) Chehalis
* RaceCodeCS#B11 "Chehalis"
// AMERICAN INDIAN (A01-M43) Chemakuan
* RaceCodeCS#B14 "Chemakuan"
* RaceCodeCS#B15 "Hoh Indian Tribe"
* RaceCodeCS#B16 "Quileute"
// AMERICAN INDIAN (A01-M43) Chemehuevi
* RaceCodeCS#B19 "Chemehuevi"
// AMERICAN INDIAN (A01-M43) Cherokee
* RaceCodeCS#B21 "Cherokee"
* RaceCodeCS#B22 "Cherokee Alabama"
* RaceCodeCS#B23 "Cherokees of Northeast Alabama"
* RaceCodeCS#B24 "Cherokees of Southeast Alabama"
* RaceCodeCS#B25 "Georgia Eastern Cherokee"
* RaceCodeCS#B26 "Echota Cherokee"
* RaceCodeCS#B27 "Etowah Cherokee"
* RaceCodeCS#B28 "Northern Cherokee Nation of Missouri and Arkansas"
* RaceCodeCS#B29 "Tuscola"
* RaceCodeCS#B30 "United Keetoowah Band of Cherokee"
* RaceCodeCS#B31 "Western Cherokee"
* RaceCodeCS#B32 "Southeastern Cherokee Council"
* RaceCodeCS#B33 "Sac River Band of the Chickamauga Cherokee"
* RaceCodeCS#B34 "White River Band of the Chickamauga Cherokee"
* RaceCodeCS#B35 "Four Winds Cherokee"
* RaceCodeCS#B36 "Cherokee of Georgia"
// AMERICAN INDIAN (A01-M43) Cherokee Shawnee
* RaceCodeCS#B37 "Cherokee Shawnee"
// AMERICAN INDIAN (A01-M43) Cheyenne
* RaceCodeCS#B40 "Cheyenne"
* RaceCodeCS#B41 "Northern Cheyenne"
* RaceCodeCS#B42 "Southern Cheyenne"
// AMERICAN INDIAN (A01-M43) Cheyenne-Arapaho
* RaceCodeCS#B46 "Cheyenne Arapaho"
// AMERICAN INDIAN (A01-M43) Chickahominy
* RaceCodeCS#B49 "Chickahominy Indian Tribe"
* RaceCodeCS#B50 "Chickahominy Eastern Band"
* RaceCodeCS#B51 "WESTERN CHICKAHOMINY"
// AMERICAN INDIAN (A01-M43) Chickasaw
* RaceCodeCS#B53 "Chickasaw"
// AMERICAN INDIAN (A01-M43) Chinook
* RaceCodeCS#B57 "Chinook"
* RaceCodeCS#B58 "Clatsop"
// AMERICAN INDIAN (A01-M43) Chinook
* RaceCodeCS#B59 "Columbia River Chinook"
* RaceCodeCS#B60 "Kathlamet"
* RaceCodeCS#B61 "Upper Chinook"
* RaceCodeCS#B62 "Wakiakum Chinook"
* RaceCodeCS#B63 "Willapa Chinook"
* RaceCodeCS#B64 "Wishram"
// AMERICAN INDIAN (A01-M43) Chippewa
* RaceCodeCS#B67 "Bad River Band of the Lake Superior Tribe"
* RaceCodeCS#B68 "Bay Mills Indian Community of the Sault Ste. Marie Band"
* RaceCodeCS#B69 "Bois Forte Nett Lake Band of Chippewa"
* RaceCodeCS#B70 "Burt Lake Chippewa"
* RaceCodeCS#B71 "Chippewa"
* RaceCodeCS#B72 "Fond du Lac"
* RaceCodeCS#B73 "Grand Portage"
* RaceCodeCS#B74 "Grand Traverse Band of Ottawa and Chippewa Indians"
* RaceCodeCS#B75 "Keweenaw Bay Indian Community of the L'Anse and Ontonagon Bands"
* RaceCodeCS#B76 "Lac Court Oreilles Band of Lake Superior Chippewa"
* RaceCodeCS#B77 "Lac du Flambeau"
* RaceCodeCS#B78 "Lac Vieux Desert Band of Lake Superior Chippewa"
* RaceCodeCS#B79 "Lake Superior"
* RaceCodeCS#B80 "Leech Lake"
* RaceCodeCS#B81 "Little Shell Chippewa"
* RaceCodeCS#B82 "Mille Lacs"
* RaceCodeCS#B83 "Minnesota Chippewa"
* RaceCodeCS#B84 "Ontonagon"
* RaceCodeCS#B85 "Red Cliff Band of Lake Superior Chippewa"
* RaceCodeCS#B86 "Red Lake Band of Chippewa Indians"
* RaceCodeCS#B87 "Saginaw Chippewa"
* RaceCodeCS#B88 "St. Croix Chippewa"
* RaceCodeCS#B89 "Sault Ste. Marie Chippewa"
* RaceCodeCS#B90 "Sokoagon Chippewa"
* RaceCodeCS#B91 "Turtle Mountain Band"
* RaceCodeCS#B92 "White Earth"
* RaceCodeCS#B93 "Swan Creek Black River Confederate Tribe"
// AMERICAN INDIAN (A01-M43) Chippewa Cree
* RaceCodeCS#C02 "Rocky Boy's Chippewa Cree"
// AMERICAN INDIAN (A01-M43) Chitimacha
* RaceCodeCS#C05 "Chitimacha Tribe of Louisiana"
// AMERICAN INDIAN (A01-M43) Choctaw
* RaceCodeCS#C08 "Choctaw"
* RaceCodeCS#C09 "Clifton Choctaw"
// AMERICAN INDIAN (A01-M43) Choctaw
* RaceCodeCS#C10 "Jena Band of Choctaw"
* RaceCodeCS#C11 "Mississippi Band of Choctaw"
* RaceCodeCS#C12 "Mowa Band of Choctaw"
* RaceCodeCS#C13 "Oklahoma Choctaw"
// AMERICAN INDIAN (A01-M43) Choctaw-Apache
* RaceCodeCS#C17 "Choctaw Apache Community of Ebarb"
// AMERICAN INDIAN (A01-M43) Chumash
* RaceCodeCS#C20 "Chumash"
* RaceCodeCS#C21 "Santa Ynez"
* RaceCodeCS#C22 "San Luis Rey Mission Indian"
// AMERICAN INDIAN (A01-M43) Clear Lake
* RaceCodeCS#C25 "Clear Lake"
// AMERICAN INDIAN (A01-M43) Coeur D'Alene
* RaceCodeCS#C26 "Coeur D'Alene"
// AMERICAN INDIAN (A01-M43) Coharie
* RaceCodeCS#C29 "Coharie"
// AMERICAN INDIAN (A01-M43) Colorado River Indian
* RaceCodeCS#C32 "Colorado River"
// AMERICAN INDIAN (A01-M43) Colville
* RaceCodeCS#C35 "Colville"
// AMERICAN INDIAN (A01-M43) Comanche
* RaceCodeCS#C39 "Comanche"
* RaceCodeCS#C40 "Oklahoma Comanche"
// AMERICAN INDIAN (A01-M43) Coos, Lower Umpqua, and Siuslaw
* RaceCodeCS#C44 "Coos Lower Umpqua and Siuslaw"
// AMERICAN INDIAN (A01-M43) Coos
* RaceCodeCS#C46 "Coos"
// AMERICAN INDIAN (A01-M43) Coquille
* RaceCodeCS#C47 "Coquille"
* RaceCodeCS#C48 "Costanoan"
// AMERICAN INDIAN (A01-M43) Coushatta
* RaceCodeCS#C52 "Alabama Coushatta Tribes of Texas"
* RaceCodeCS#C53 "Coushatta"
// AMERICAN INDIAN (A01-M43) Cowlitz
* RaceCodeCS#C56 "Cowlitz"
// AMERICAN INDIAN (A01-M43) Cree
* RaceCodeCS#C59 "Cree"
// AMERICAN INDIAN (A01-M43) Creek
* RaceCodeCS#C64 "Alabama Creek"
* RaceCodeCS#C65 "Alabama Quassarte Tribal Town"
* RaceCodeCS#C66 "Muscogee Creek Nation"
* RaceCodeCS#C67 "Eastern Creek"
* RaceCodeCS#C68 "Eastern Muscogee"
* RaceCodeCS#C69 "Kialegee Tribal Town"
* RaceCodeCS#C70 "Lower Muscogee Creek Tama Tribal Town"
* RaceCodeCS#C71 "Machis Lower Creek Indian"
* RaceCodeCS#C72 "Poarch Band"
* RaceCodeCS#C73 "Principal Creek Indian Nation"
* RaceCodeCS#C74 "Star Clan of Muskogee Creeks"
* RaceCodeCS#C75 "Thiopthlocco Tribal Town"
* RaceCodeCS#C76 "Tuckabachee"
// AMERICAN INDIAN (A01-M43) Croatan
* RaceCodeCS#C81 "Croatan"
// AMERICAN INDIAN (A01-M43) Crow
* RaceCodeCS#C82 "Crow"
// AMERICAN INDIAN (A01-M43) Cumberland
* RaceCodeCS#C87 "Cumberland County Association for Indian People"
// AMERICAN INDIAN (A01-M43) Cupeno
* RaceCodeCS#C89 "Agua Caliente"
* RaceCodeCS#C90 "Cupeno"
// AMERICAN INDIAN (A01-M43) Delaware
* RaceCodeCS#C93 "Delaware"
* RaceCodeCS#C94 "Delaware Tribe of Indians, Oklahoma"
* RaceCodeCS#C95 "Lenni Lanape"
* RaceCodeCS#C96 "Munsee"
* RaceCodeCS#C97 "Delaware Tribe of Western Oklahoma"
* RaceCodeCS#C98 "Ramapough Mountain"
* RaceCodeCS#C99 "Sand Hill Band of Delaware Indians"
// AMERICAN INDIAN (A01-M43) Diegueno
* RaceCodeCS#D05 "Barona Group of Capitan Grande Band"
* RaceCodeCS#D06 "Campo Band of Diegueno Mission Indians"
* RaceCodeCS#D07 "Capitan Grande Band of Diegueno Mission Indians"
* RaceCodeCS#D08 "Cuyapaipe"
* RaceCodeCS#D09 "Diegueno"
* RaceCodeCS#D10 "La Posta Band of Diegueno Mission Indians"
* RaceCodeCS#D11 "Manzanita"
* RaceCodeCS#D12 "Mesa Grande Band of Diegueno Mission Indians"
* RaceCodeCS#D13 "San Pasqual Band of Diegueno Mission Indians"
* RaceCodeCS#D14 "Santa Ysabel Band of Diegueno Mission Indians"
* RaceCodeCS#D15 "Sycuan Band of Diegueno Mission Indians"
* RaceCodeCS#D16 "Viejas Group of Capitan Grande Band"
* RaceCodeCS#D17 "Inaja Band of Diegueno Mission Indians of the Inaja and Cosmit Reservation"
* RaceCodeCS#D18 "Jarnul Indian Village"
// AMERICAN INDIAN (A01-M43) Eastern Tribes
* RaceCodeCS#D20 "Attacapa"
* RaceCodeCS#D21 "Biloxi"
* RaceCodeCS#D22 "Georgetown"
* RaceCodeCS#D24 "Nansemond Indian Tribe"
* RaceCodeCS#D25 "Natchez"
* RaceCodeCS#D26 "Nausu Waiwash"
// AMERICAN INDIAN (A01-M43) Nipmuc
* RaceCodeCS#D27 "Nipmuc"
// AMERICAN INDIAN (A01-M43) Eastern Tribes
* RaceCodeCS#D28 "Golden Hill Paugussett"
* RaceCodeCS#D29 "Pocomoke Acohonock"
* RaceCodeCS#D30 "Southeastern Indians"
* RaceCodeCS#D31 "Susquehanock"
* RaceCodeCS#D33 "Tunica Biloxi"
* RaceCodeCS#D34 "Waccamaw Siouan"
* RaceCodeCS#D36 "Wicomico"
* RaceCodeCS#D37 "Mehemn Indian Tribe"
// AMERICAN INDIAN (A01-M43) Esselen
* RaceCodeCS#D42 "Esselen"
// AMERICAN INDIAN (A01-M43) Forts Belknap and Berthold
* RaceCodeCS#D44 "Fort Belknap"
* RaceCodeCS#D45 "FORT BERTHOLD"
// AMERICAN INDIAN (A01-M43)
// Three "Affiliated Tribes of North Dakota"
* RaceCodeCS#D46 "Three Affiliated Tribes of North Dakota"
// AMERICAN INDIAN (A01-M43) Fort McDowell
* RaceCodeCS#D49 "Fort McDowell MohaveApache Community"
// AMERICAN INDIAN (A01-M43) Fort Hall
* RaceCodeCS#D51 "ShoshoneBannock Tribes of the Fort Hall Reservation"
// AMERICAN INDIAN (A01-M43) Gabrieleno
* RaceCodeCS#D55 "Gabrieleno"
// AMERICAN INDIAN (A01-M43) Grand Ronde
* RaceCodeCS#D57 "Grand Ronde"
// AMERICAN INDIAN (A01-M43) Gilford
* RaceCodeCS#D58 "Guilford Native American Association"
// AMERICAN INDIAN (A01-M43) Gros Ventres
* RaceCodeCS#D60 "Atsina"
* RaceCodeCS#D61 "Gros Ventres"
* RaceCodeCS#D62 "Fort Belknap Gros Ventres"
// AMERICAN INDIAN (A01-M43) Haliwa-Saponi
* RaceCodeCS#D64 "HaliwaSaponi"
// AMERICAN INDIAN (A01-M43) Hidatsa
* RaceCodeCS#D67 "Hidatsa"
// AMERICAN INDIAN (A01-M43) Hoopa
* RaceCodeCS#D70 "Hoopa Valley Tribe"
* RaceCodeCS#D71 "Trinity"
// AMERICAN INDIAN (A01-M43) Hoopa
* RaceCodeCS#D72 "Whilkut"
// AMERICAN INDIAN (A01-M43) Hoopa Extension
* RaceCodeCS#D76 "Hoopa Extension"
// AMERICAN INDIAN (A01-M43) Houma
* RaceCodeCS#D78 "United Houma Nation"
// AMERICAN INDIAN (A01-M43) Iowa
* RaceCodeCS#D87 "Iowa"
* RaceCodeCS#D88 "Iowa of Kansas and Nebraska"
* RaceCodeCS#D89 "Iowa of Oklahoma"
// AMERICAN INDIAN (A01-M43) Indians of Person County
* RaceCodeCS#D91 "Indians of Person County"
// AMERICAN INDIAN (A01-M43) Iroquois
* RaceCodeCS#D93 "Cayuga Nation"
* RaceCodeCS#D94 "Iroquois"
* RaceCodeCS#D95 "Mohawk"
* RaceCodeCS#D96 "Oneida Nation of New York"
* RaceCodeCS#D97 "Onondaga"
* RaceCodeCS#D98 "Seneca"
* RaceCodeCS#D99 "Seneca Nation"
* RaceCodeCS#E01 "SenecaCayuga"
* RaceCodeCS#E02 "Tonawanda Band of Seneca"
* RaceCodeCS#E03 "Tuscarora"
* RaceCodeCS#E04 "Wyandotte"
// AMERICAN INDIAN (A01-M43) Juaneno (Acjachemem)
* RaceCodeCS#E10 "Juaneno"
// AMERICAN INDIAN (A01-M43) Kalispel
* RaceCodeCS#E13 "Kalispel Indian Community"
// AMERICAN INDIAN (A01-M43) Karuk
* RaceCodeCS#E17 "Karuk Tribe of California"
// AMERICAN INDIAN (A01-M43) Kaw
* RaceCodeCS#E21 "Kaw"
// AMERICAN INDIAN (A01-M43) Kickapoo
* RaceCodeCS#E24 "Kickapoo"
* RaceCodeCS#E25 "Oklahoma Kickapoo"
* RaceCodeCS#E26 "Texas Kickapoo"
// AMERICAN INDIAN (A01-M43) Kiowa
* RaceCodeCS#E30 "Kiowa"
* RaceCodeCS#E31 "Oklahoma Kiowa"
// AMERICAN INDIAN (A01-M43) S'Klallam
* RaceCodeCS#E37 "Jamestown S'Klallam"
* RaceCodeCS#E38 "Klallam"
* RaceCodeCS#E39 "Lower Elwha Tribal Community"
* RaceCodeCS#E40 "Port Gamble Klallam"
// AMERICAN INDIAN (A01-M43) Klamath
* RaceCodeCS#E44 "Klamath"
// AMERICAN INDIAN (A01-M43) Konkow
* RaceCodeCS#E48 "Konkow"
// AMERICAN INDIAN (A01-M43) Kootenai
* RaceCodeCS#E50 "Kootenai"
// AMERICAN INDIAN (A01-M43) Lassik
* RaceCodeCS#E53 "Lassik"
// AMERICAN INDIAN (A01-M43) Long Island
* RaceCodeCS#E59 "Matinecock"
* RaceCodeCS#E60 "Montauk"
* RaceCodeCS#E61 "Poospatuck"
* RaceCodeCS#E62 "Setauket"
* RaceCodeCS#E63 "LONG ISLAND"
// AMERICAN INDIAN (A01-M43) Luiseno
* RaceCodeCS#E66 "La Jolla Band of Luiseno Mission Indians"
* RaceCodeCS#E67 "Luiseno"
* RaceCodeCS#E68 "Pala Band of Luiseno Mission Indians"
* RaceCodeCS#E69 "Pauma Band of Luiseno Mission Indians"
* RaceCodeCS#E70 "Pechanga Band of Luiseno Mission Indians"
* RaceCodeCS#E71 "Soboba"
* RaceCodeCS#E72 "TwentyNine Palms Band of Luiseno Mission Indians"
// AMERICAN INDIAN (A01-M43) Luiseno
* RaceCodeCS#E73 "Temecula"
* RaceCodeCS#E74 "Rincon Band of Luiseno Mission Indians"
// AMERICAN INDIAN (A01-M43) Lumbee
* RaceCodeCS#E78 "Lumbee"
// AMERICAN INDIAN (A01-M43) Lummi
* RaceCodeCS#E84 "Lummi"
// AMERICAN INDIAN (A01-M43) Maidu
* RaceCodeCS#E87 "Mooretown Rancheria of Maidu Indians"
* RaceCodeCS#E88 "Maidu"
* RaceCodeCS#E89 "Mountain Maidu"
* RaceCodeCS#E90 "Nisenen"
* RaceCodeCS#E91 "Mechoopda Indian Tribe of Chico Rancheria, California"
* RaceCodeCS#E92 "Berry Creek Rancheria of Maidu Indians"
* RaceCodeCS#E93 "Enterprise Rancheria"
* RaceCodeCS#E94 "Greenville Rancheria"
// AMERICAN INDIAN (A01-M43) Makah
* RaceCodeCS#E95 "Makah"
// AMERICAN INDIAN (A01-M43) Maliseet
* RaceCodeCS#F01 "Maliseet"
* RaceCodeCS#F02 "Houlton Band of Maliseet Indians"
// AMERICAN INDIAN (A01-M43) Mandan
* RaceCodeCS#F05 "Mandan"
// AMERICAN INDIAN (A01-M43) Mattaponi
* RaceCodeCS#F09 "Mattaponi Indian Tribe"
* RaceCodeCS#F10 "Upper Mattaponi Tribe"
// AMERICAN INDIAN (A01-M43) Menominee
* RaceCodeCS#F11 "Menominee"
// AMERICAN INDIAN (A01-M43) Metrolina
* RaceCodeCS#F15 "Metrolina Nadve American Association"
// AMERICAN INDIAN (A01-M43) Miami
* RaceCodeCS#F17 "Illinois Miami"
* RaceCodeCS#F18 "Indiana Miami"
* RaceCodeCS#F19 "Miami"
* RaceCodeCS#F20 "Oklahoma Miami"
// AMERICAN INDIAN (A01-M43) Miccosukee
* RaceCodeCS#F24 "Miccosukee"
// AMERICAN INDIAN (A01-M43) Micmac
* RaceCodeCS#F27 "Aroostook Band"
* RaceCodeCS#F28 "Micmac"
// AMERICAN INDIAN (A01-M43) Mission Indians
* RaceCodeCS#F31 "Mission Indians"
* RaceCodeCS#F32 "Cahuilla Band of Mission Indians"
// AMERICAN INDIAN (A01-M43) Miwok
* RaceCodeCS#F34 "Ione Band of Miwok Indians"
* RaceCodeCS#F35 "Shingle Springs Band of Miwok Indians"
// AMERICAN INDIAN (A01-M43) Me-Wuk
* RaceCodeCS#F36 "MeWuk"
* RaceCodeCS#F37 "Jackson Rancheria of MeWuk Indians of California"
* RaceCodeCS#F38 "Tuolumne Band of MeWuk Indians of California"
* RaceCodeCS#F39 "Buena Vista Rancheria of MeWuk Indians of California"
* RaceCodeCS#F40 "Chicken Ranch Rancheria of MeWuk Indians"
* RaceCodeCS#F41 "Sheep Ranch Rancheria of MeWuk Indians"
// AMERICAN INDIAN (A01-M43) Modoc
* RaceCodeCS#F42 "Modoc"
* RaceCodeCS#F43 "Oklahoma Modoc"
// AMERICAN INDIAN (A01-M43) Mohegan
* RaceCodeCS#F46 "Mohegan"
* RaceCodeCS#F47 "Monacan Indian Nation"
// AMERICAN INDIAN (A01-M43) Mono
* RaceCodeCS#F49 "Mono"
* RaceCodeCS#F50 "North Fork Rancheria"
* RaceCodeCS#F51 "Cold Springs Rancheria"
* RaceCodeCS#F52 "Big Sandy Rancheria"
// AMERICAN INDIAN (A01-M43) Nanticode
* RaceCodeCS#F53 "Nanticoke"
// AMERICAN INDIAN (A01-M43) Nanticode Lenni-Lenape
* RaceCodeCS#F56 "Nanticoke LenniLenape"
// AMERICAN INDIAN (A01-M43) Narragansett
* RaceCodeCS#F57 "Narragansett"
// AMERICAN INDIAN (A01-M43) Navajo
* RaceCodeCS#F62 "Alamo Navajo"
* RaceCodeCS#F63 "Tohajiileehee Navajo"
* RaceCodeCS#F64 "Navajo"
* RaceCodeCS#F65 "Ramah Navajo"
// AMERICAN INDIAN (A01-M43) Nez Perce
* RaceCodeCS#F71 "Nez Perce"
// AMERICAN INDIAN (A01-M43) Nipmuc
* RaceCodeCS#F75 "Hassanamisco Band of the Nipmuc Nation"
* RaceCodeCS#F76 "Chaubunagungameg Nipmuc"
// AMERICAN INDIAN (A01-M43) Nomlaki
* RaceCodeCS#F77 "Nomlaki"
* RaceCodeCS#F78 "Paskenta Band of Nomlaki Indians"
// AMERICAN INDIAN (A01-M43) Northwest Tribes
* RaceCodeCS#F80 "Alsea"
* RaceCodeCS#F81 "Celilo"
* RaceCodeCS#F82 "Columbia"
* RaceCodeCS#F83 "Kalapuya"
* RaceCodeCS#F84 "Molalla"
* RaceCodeCS#F85 "Talakamish"
* RaceCodeCS#F86 "Tenino"
* RaceCodeCS#F87 "Tillamook"
* RaceCodeCS#F88 "Wenatchee"
// AMERICAN INDIAN (A01-M43) Omaha
* RaceCodeCS#F95 "Omaha"
// AMERICAN INDIAN (A01-M43) Oneida Tribe
* RaceCodeCS#F99 "Oneida Tribe of Wisconsin"
// AMERICAN INDIAN (A01-M43) Oregon Athabaskan
* RaceCodeCS#G01 "Oregon Athabaskan"
// AMERICAN INDIAN (A01-M43) Osage
* RaceCodeCS#G04 "Osage"
// AMERICAN INDIAN (A01-M43) Otoe-Missouria
* RaceCodeCS#G10 "OtoeMissouria"
// AMERICAN INDIAN (A01-M43) Ottawa
* RaceCodeCS#G14 "Burt Lake Ottawa"
* RaceCodeCS#G15 "Little River Band of Ottawa Indians of Michigan"
* RaceCodeCS#G16 "Oklahoma Ottawa"
* RaceCodeCS#G17 "Ottawa"
* RaceCodeCS#G18 "Little Traverse Bay Bands of Ottawa Indians of Michigan"
* RaceCodeCS#G19 "Grand River Band of Ottawa Indians"
// AMERICAN INDIAN (A01-M43) Paiute
* RaceCodeCS#G24 "Bridgeport Paiute Indian Colony"
* RaceCodeCS#G25 "Burns Paiute Tribe"
* RaceCodeCS#G26 "Cedarville Rancheria"
* RaceCodeCS#G27 "Fort Bidwell"
* RaceCodeCS#G28 "Fort Independence"
* RaceCodeCS#G29 "Kaibab Band of Paiute Indians"
* RaceCodeCS#G30 "Las Vegas Tribe of the Las Vegas Indian Colony"
* RaceCodeCS#G32 "Lovelock Paiute Tribe of the Lovelock Indian Colony"
* RaceCodeCS#G33 "Malheur Paiute"
* RaceCodeCS#G34 "Moapa Band of Paiute"
* RaceCodeCS#G35 "Northern Paiute"
* RaceCodeCS#G37 "Paiute"
* RaceCodeCS#G38 "Pyramid Lake"
* RaceCodeCS#G39 "San Juan Southern Paiute"
* RaceCodeCS#G40 "Southern Paiute"
* RaceCodeCS#G41 "Summit Lake"
* RaceCodeCS#G42 "Utu Utu Gwaitu Paiute"
* RaceCodeCS#G43 "Walker River"
* RaceCodeCS#G44 "Yerington Paiute"
* RaceCodeCS#G45 "Yahooskin Band of Snake"
* RaceCodeCS#G47 "Susanville"
* RaceCodeCS#G48 "Winnemucca"
// AMERICAN INDIAN (A01-M43) Pamunkey
* RaceCodeCS#G50 "Pamunkey Indian Tribe"
// AMERICAN INDIAN (A01-M43) Passamaquoddy
* RaceCodeCS#G53 "Indian Township"
* RaceCodeCS#G54 "Passamaquoddy"
* RaceCodeCS#G55 "Pleasant Point Passamaquoddy"
// AMERICAN INDIAN (A01-M43) Pawnee
* RaceCodeCS#G61 "Oklahoma Pawnee"
* RaceCodeCS#G62 "Pawnee"
// AMERICAN INDIAN (A01-M43) Penobscot
* RaceCodeCS#G68 "Penobscot"
// AMERICAN INDIAN (A01-M43) Peoria
* RaceCodeCS#G72 "Oklahoma Peoria"
* RaceCodeCS#G73 "Peoria"
// AMERICAN INDIAN (A01-M43) Pequot
* RaceCodeCS#G77 "Mashantucket Pequot"
* RaceCodeCS#G78 "Pequot"
* RaceCodeCS#G79 "Paucatuck Eastern Pequot"
// AMERICAN INDIAN (A01-M43) Pima
* RaceCodeCS#G84 "Gila River Indian Community"
* RaceCodeCS#G85 "Pima"
* RaceCodeCS#G86 "Salt River PimaMaricopa"
// AMERICAN INDIAN (A01-M43) Piscataway
* RaceCodeCS#G92 "Piscataway"
// AMERICAN INDIAN (A01-M43) Pit River
* RaceCodeCS#G96 "Pit River Tribe of California"
* RaceCodeCS#G97 "Alturas Indian Rancheria"
* RaceCodeCS#G98 "Redding Rancheria"
// AMERICAN INDIAN (A01-M43) Pomo and Pit River Indians
* RaceCodeCS#G99 "Big Valley Rancheria of Pomo and Pit River Indians"
// AMERICAN INDIAN (A01-M43) Pomo
* RaceCodeCS#H01 "Central Pomo"
* RaceCodeCS#H02 "Dry Creek"
* RaceCodeCS#H03 "Eastern Pomo"
* RaceCodeCS#H04 "Kashia Band of Pomo Indians of the Stewarts Point Rancheria"
* RaceCodeCS#H05 "Northern Pomo"
* RaceCodeCS#H06 "Pomo"
* RaceCodeCS#H07 "Scotts Valley Band"
* RaceCodeCS#H08 "Stonyford"
* RaceCodeCS#H09 "Elem Indian Colony of the Sulphur Bank"
* RaceCodeCS#H10 "Sherwood Valley Rancheria of Pomo Indians of California"
* RaceCodeCS#H11 "Guidiville Rancheria of California"
* RaceCodeCS#H12 "Lytton Rancheria of California"
* RaceCodeCS#H13 "Cloverdale Rancheria"
* RaceCodeCS#H14 "Coyote Valley Band"
// AMERICAN INDIAN (A01-M43) Ponca
* RaceCodeCS#H15 "Nebraska Ponca"
* RaceCodeCS#H16 "Oklahoma Ponca"
* RaceCodeCS#H17 "Ponca"
// AMERICAN INDIAN (A01-M43) Potawatomi
* RaceCodeCS#H21 "Citizen Potawatomi Nation"
* RaceCodeCS#H22 "Forest County"
* RaceCodeCS#H23 "Hannahville Indian Community of Wisconsin Potawatomi"
* RaceCodeCS#H24 "Huron Potawatomi"
* RaceCodeCS#H25 "Pokagon Band of Potawatomi Indians"
* RaceCodeCS#H26 "Potawatomi"
* RaceCodeCS#H27 "Prairie Band of Potawatomi Indians"
* RaceCodeCS#H28 "Wisconsin Potawatomi"
// AMERICAN INDIAN (A01-M43) Powhatan
* RaceCodeCS#H34 "Powhatan"
// AMERICAN INDIAN (A01-M43) Pueblo
* RaceCodeCS#H38 "Acoma"
* RaceCodeCS#H39 "Arizona Tewa"
* RaceCodeCS#H40 "Cochiti"
* RaceCodeCS#H41 "Hopi"
* RaceCodeCS#H42 "Isleta"
* RaceCodeCS#H43 "Jemez"
* RaceCodeCS#H44 "Keres"
* RaceCodeCS#H45 "Laguna"
* RaceCodeCS#H46 "Nambe"
* RaceCodeCS#H47 "Picuris"
* RaceCodeCS#H48 "Piro"
// AMERICAN INDIAN (A01-M43) Pueblo
* RaceCodeCS#H49 "Pojoaque"
* RaceCodeCS#H50 "Pueblo"
* RaceCodeCS#H51 "San Felipe"
* RaceCodeCS#H52 "San Ildefonso"
* RaceCodeCS#H53 "San Juan Pueblo"
* RaceCodeCS#H54 "SAN JUAN DE"
* RaceCodeCS#H55 "San Juan"
* RaceCodeCS#H56 "Sandia"
* RaceCodeCS#H57 "Santa Ana"
* RaceCodeCS#H58 "Santa Clara"
* RaceCodeCS#H59 "Santo Domingo"
* RaceCodeCS#H60 "Taos"
* RaceCodeCS#H61 "Tesuque"
* RaceCodeCS#H62 "Tewa"
* RaceCodeCS#H63 "Ysleta Del Sur Pueblo of Texas"
* RaceCodeCS#H64 "Zia"
* RaceCodeCS#H65 "Zuni"
// AMERICAN INDIAN (A01-M43) Pomo
* RaceCodeCS#H66 "Hopland Band of Pomo Indians"
* RaceCodeCS#H67 "Manchester Band of Pomo Indians of the ManchesterPoint Arena Racheria"
* RaceCodeCS#H68 "Middletown Rancheria of Pomo Indians"
* RaceCodeCS#H69 "Pinoleville Rancheria of Pomo Indians"
// AMERICAN INDIAN (A01-M43) Puget Sount Salish
* RaceCodeCS#H70 "Marietta Band of Nooksack"
* RaceCodeCS#H71 "Duwamish"
* RaceCodeCS#H72 "Kikiallus"
* RaceCodeCS#H73 "Lower Skagit"
* RaceCodeCS#H74 "Muckleshoot"
* RaceCodeCS#H75 "Nisqually"
* RaceCodeCS#H76 "Nooksack"
* RaceCodeCS#H77 "Port Madison"
* RaceCodeCS#H78 "Puget Sound Salish"
* RaceCodeCS#H79 "Puyaliup"
* RaceCodeCS#H80 "Samish"
* RaceCodeCS#H81 "SaukSuiattle"
* RaceCodeCS#H82 "Skokomish"
* RaceCodeCS#H83 "Skykomish"
* RaceCodeCS#H84 "Snohomish"
* RaceCodeCS#H85 "Snoqualmie"
* RaceCodeCS#H86 "Squaxin Island"
* RaceCodeCS#H87 "Steilacoom"
* RaceCodeCS#H88 "Stillaguamish"
* RaceCodeCS#H89 "Suquamish"
* RaceCodeCS#H90 "Swinomish"
// AMERICAN INDIAN (A01-M43) Puget Sount Salish
* RaceCodeCS#H91 "Tulalip"
* RaceCodeCS#H92 "Upper Skagit"
// AMERICAN INDIAN (A01-M43) Pomo
* RaceCodeCS#H93 "Potter Valley Rancheria of Pomo Indians"
* RaceCodeCS#H94 "Redwood Valley Rancheria of Pomo Indians"
* RaceCodeCS#H95 "Robinson Rancheria of Pomo Indians"
* RaceCodeCS#H96 "Upper Lake Band of Pomo Indians of Upper Lake Rancheria"
// AMERICAN INDIAN (A01-M43) Quapaw
* RaceCodeCS#H97 "Quapaw"
// AMERICAN INDIAN (A01-M43) Tiqua
* RaceCodeCS#I01 "TIGUA"
// AMERICAN INDIAN (A01-M43) Quinault
* RaceCodeCS#J01 "Quinault"
// AMERICAN INDIAN (A01-M43) Rappahaonnock
* RaceCodeCS#J05 "Rappahannock Indian Tribe"
// AMERICAN INDIAN (A01-M43) Reno-Sparks
* RaceCodeCS#J07 "RenoSparks"
// AMERICAN INDIAN (A01-M43) Round Valley
* RaceCodeCS#J14 "Round Valley"
// AMERICAN INDIAN (A01-M43) Sac and Fox
* RaceCodeCS#J19 "Sac and Fox Tribe of the Mississippi in Iowa"
* RaceCodeCS#J20 "Sac and Fox Nation of Missouri in Kansas and Nebraska"
* RaceCodeCS#J21 "Sac and Fox Nation, Oklahoma"
* RaceCodeCS#J22 "Sac and Fox"
// AMERICAN INDIAN (A01-M43) Salinan
* RaceCodeCS#J28 "Salinan"
// AMERICAN INDIAN (A01-M43) Salish
* RaceCodeCS#J31 "Salish"
// AMERICAN INDIAN (A01-M43) Salish and Kootenai
* RaceCodeCS#J35 "Salish and Kootenai"
* RaceCodeCS#J36 "Pondre Band of Salish and Kootenai"
// AMERICAN INDIAN (A01-M43) Schaghticoke
* RaceCodeCS#J39 "Schaghticoke"
// AMERICAN INDIAN (A01-M43) Seminole
* RaceCodeCS#J47 "Big Cypress"
* RaceCodeCS#J48 "Brighton"
* RaceCodeCS#J49 "Florida Seminole"
* RaceCodeCS#J50 "Hollywood Seminole"
* RaceCodeCS#J51 "Oklahoma Seminole"
* RaceCodeCS#J52 "Seminole"
* RaceCodeCS#J53 "Dania Seminole"
* RaceCodeCS#J54 "Tampa Seminole"
// AMERICAN INDIAN (A01-M43) Serrano
* RaceCodeCS#J58 "San Manual Band"
* RaceCodeCS#J59 "Serrano"
// AMERICAN INDIAN (A01-M43) Shasta
* RaceCodeCS#J62 "Shasta"
* RaceCodeCS#J63 "Quartz Valley"
// AMERICAN INDIAN (A01-M43) Shawnee
* RaceCodeCS#J66 "Absentee Shawnee Tribe of Indians of Oklahoma"
* RaceCodeCS#J67 "Eastern Shawnee"
* RaceCodeCS#J68 "Shawnee"
* RaceCodeCS#J69 "Piqua Sept of Ohio Shawnee"
// AMERICAN INDIAN (A01-M43) Shinnecock
* RaceCodeCS#J74 "Shinnecock"
// AMERICAN INDIAN (A01-M43) Shoalwater Bay
* RaceCodeCS#J78 "Shoalwater Bay"
// AMERICAN INDIAN (A01-M43) Shoshone
* RaceCodeCS#J81 "Duckwater"
* RaceCodeCS#J82 "Ely"
* RaceCodeCS#J83 "Goshute"
* RaceCodeCS#J84 "PANAMINT"
// AMERICAN INDIAN (A01-M43) Shoshone
* RaceCodeCS#J85 "Shoshone"
* RaceCodeCS#J86 "Skull Valley Band of Goshute Indians"
* RaceCodeCS#J88 "Death Valley TimbiSha Shoshone"
* RaceCodeCS#J89 "Northwestern Band of Shoshoni Nation of Utah"
* RaceCodeCS#J90 "Wind River Shoshone"
* RaceCodeCS#J91 "Yomba"
// AMERICAN INDIAN (A01-M43)
// Te-Moak "Tribes of Western Shoshone Ind. of Nevada"
* RaceCodeCS#J93 "TeMoak Tribes of Western Shoshone Indians"
* RaceCodeCS#J94 "Battle Mountain"
* RaceCodeCS#J95 "Elko"
* RaceCodeCS#J96 "South Fork"
* RaceCodeCS#J97 "Wells Band"
* RaceCodeCS#J98 "Ruby Valley"
* RaceCodeCS#J99 "Odgers Ranch"
// AMERICAN INDIAN (A01-M43) Paiute-Shoshone
* RaceCodeCS#K01 "Duck Valley"
* RaceCodeCS#K02 "Fallen"
* RaceCodeCS#K03 "Fort McDermitt Paiute and Shoshone Tribes"
* RaceCodeCS#K04 "Shoshone Paiute"
* RaceCodeCS#K05 "Bishop"
* RaceCodeCS#K06 "Lone Pine"
* RaceCodeCS#K07 "Big Pine Band of Owens Valley PaiuteShoshone"
// AMERICAN INDIAN (A01-M43) Siletz
* RaceCodeCS#K10 "Confederated Tribes of the Siletz Reservation"
// AMERICAN INDIAN (A01-M43) Sioux
* RaceCodeCS#K16 "Blackfoot Sioux"
* RaceCodeCS#K17 "Brule Sioux"
* RaceCodeCS#K18 "Cheyenne River Sioux"
* RaceCodeCS#K19 "Crow Creek Sioux"
* RaceCodeCS#K20 "Dakota Sioux"
* RaceCodeCS#K21 "Flandreau Santee Sioux"
* RaceCodeCS#K22 "Fort Peck Sioux"
* RaceCodeCS#K23 "Lake Traverse Sioux"
* RaceCodeCS#K24 "Lower Brule Sioux"
* RaceCodeCS#K25 "Lower Sioux Indian Community of Minnesota Mdewakanton Sioux"
* RaceCodeCS#K26 "Mdewakanton Sioux"
* RaceCodeCS#K27 "Miniconjou"
* RaceCodeCS#K28 "Oglala Sioux"
* RaceCodeCS#K29 "Pine Ridge Sioux"
* RaceCodeCS#K30 "Pipestone Sioux"
* RaceCodeCS#K31 "Prairie Island Sioux"
// AMERICAN INDIAN (A01-M43) Sioux
* RaceCodeCS#K32 "Shakopee Mdewakanton Sioux Community"
* RaceCodeCS#K33 "Rosebud Sioux"
* RaceCodeCS#K34 "Sans Arc Sioux"
* RaceCodeCS#K35 "Santee Sioux of Nebraska"
* RaceCodeCS#K36 "Sioux"
* RaceCodeCS#K37 "SissetonWahpeton"
* RaceCodeCS#K38 "Sisseton Sioux"
* RaceCodeCS#K39 "Spirit Lake Sioux"
* RaceCodeCS#K40 "Standing Rock Sioux"
* RaceCodeCS#K41 "Teton Sioux"
* RaceCodeCS#K42 "Two Kettle Sioux"
* RaceCodeCS#K43 "Upper Sioux"
* RaceCodeCS#K44 "Wahpekute Sioux"
* RaceCodeCS#K45 "Wahpeton Sioux"
* RaceCodeCS#K46 "Wazhaza Sioux"
* RaceCodeCS#K47 "Yankton Sioux"
* RaceCodeCS#K48 "Yanktonai Sioux"
// AMERICAN INDIAN (A01-M43) Siuslaw
* RaceCodeCS#K54 "Siuslaw"
// AMERICAN INDIAN (A01-M43) Spokane
* RaceCodeCS#K59 "Spokane"
// AMERICAN INDIAN (A01-M43) Stockbridge-Munsee
* RaceCodeCS#K67 "StockbridgeMunsee Community of Mohican Indians of Wisconsin"
// AMERICAN INDIAN (A01-M43) Tohono O'Odham
* RaceCodeCS#K77 "AkChin"
* RaceCodeCS#K78 "Gila Bend"
* RaceCodeCS#K79 "San Xavier"
* RaceCodeCS#K80 "Sells"
* RaceCodeCS#K81 "Tohono O'Odham"
// AMERICAN INDIAN (A01-M43) Tolowa
* RaceCodeCS#K87 "Tolowa"
* RaceCodeCS#K88 "Big Lagoon Rancheria"
* RaceCodeCS#K89 "Elk Valley Rancheria"
// AMERICAN INDIAN (A01-M43) Tonkawa
* RaceCodeCS#K90 "Tonkawa"
// AMERICAN INDIAN (A01-M43) Trinidad
* RaceCodeCS#K93 "CherAe Indian Community of Trinidad Rancheria"
// AMERICAN INDIAN (A01-M43) Tygh
* RaceCodeCS#K94 "Tygh"
// AMERICAN INDIAN (A01-M43) Umatilla
* RaceCodeCS#K97 "Umatilla"
// AMERICAN INDIAN (A01-M43) Umpqua
* RaceCodeCS#L01 "Cow Creek Umpqua"
* RaceCodeCS#L02 "Umpqua"
// AMERICAN INDIAN (A01-M43) Ute
* RaceCodeCS#L06 "Alien Canyon"
* RaceCodeCS#L07 "Uintah Ute"
* RaceCodeCS#L08 "Ute Mountain"
* RaceCodeCS#L09 "Ute"
* RaceCodeCS#L10 "Southern Ute"
// AMERICAN INDIAN (A01-M43) Wailaki
* RaceCodeCS#L15 "Wailaki"
// AMERICAN INDIAN (A01-M43) Walla-Walla
* RaceCodeCS#L19 "WallaWalla"
// AMERICAN INDIAN (A01-M43) Wampanoag
* RaceCodeCS#L22 "Gay Head Wampanoag"
* RaceCodeCS#L23 "Mashpee Wampanoag"
* RaceCodeCS#L24 "Wampanoag"
* RaceCodeCS#L25 "Seaconeke Wampanoag"
* RaceCodeCS#L26 "Pocasset Wampanoag"
// AMERICAN INDIAN (A01-M43) Warm Springs
* RaceCodeCS#L28 "Warm Springs"
// AMERICAN INDIAN (A01-M43) Wascopum
* RaceCodeCS#L34 "Wascopum"
// AMERICAN INDIAN (A01-M43) Washoe
* RaceCodeCS#L38 "Alpine"
* RaceCodeCS#L39 "Carson Colony"
* RaceCodeCS#L40 "Dresslerville Colony"
* RaceCodeCS#L41 "Washoe"
* RaceCodeCS#L42 "Stewart Community"
* RaceCodeCS#L43 "Woodsfords Community"
// AMERICAN INDIAN (A01-M43) Wichita
* RaceCodeCS#L47 "Wichita"
* RaceCodeCS#L48 "Keechi"
* RaceCodeCS#L49 "Waco"
* RaceCodeCS#L50 "Tawakonie"
// AMERICAN INDIAN (A01-M43) Wind River
* RaceCodeCS#L52 "Wind River"
// AMERICAN INDIAN (A01-M43) Winnebago
* RaceCodeCS#L55 "HoChunk Nation of Wisconsin"
* RaceCodeCS#L56 "Nebraska Winnebago"
* RaceCodeCS#L57 "Winnebago"
// AMERICAN INDIAN (A01-M43) Wintun
* RaceCodeCS#L66 "Wintun"
* RaceCodeCS#L67 "Cachil Dehe Band of Wintun Indians of the Colusa Rancheria"
* RaceCodeCS#L68 "Cortina Indian Rancheria of Wintun Indians"
* RaceCodeCS#L69 "Rumsey Indian Rancheria of Wintun Indians"
// AMERICAN INDIAN (A01-M43) WinTun-Wailaki
* RaceCodeCS#L71 "Grindstone Indian Rancheria of WintunWailaki Indians"
// AMERICAN INDIAN (A01-M43) Wiyot
* RaceCodeCS#L72 "Table Bluff"
* RaceCodeCS#L73 "Wiyot"
* RaceCodeCS#L74 "Blue Lake Rancheria"
// AMERICAN INDIAN (A01-M43) Yakama
* RaceCodeCS#L79 "Yakama"
// AMERICAN INDIAN (A01-M43) Yakama Cowlitz
* RaceCodeCS#L85 "Yakama Cowlitz"
// AMERICAN INDIAN (A01-M43) Yaqui
* RaceCodeCS#L91 "Barrio Libre"
* RaceCodeCS#L92 "Pascua Yaqui"
* RaceCodeCS#L93 "Yaqui"
// AMERICAN INDIAN (A01-M43) Yavapai Apache
* RaceCodeCS#M01 "Yavapai Apache"
// AMERICAN INDIAN (A01-M43) Yokuts
* RaceCodeCS#M07 "Picayune Rancheria of Chukchansi Indians"
* RaceCodeCS#M08 "Tachi"
* RaceCodeCS#M09 "Tule River"
* RaceCodeCS#M10 "Yokuts"
* RaceCodeCS#M11 "Table Mountain Rancheria"
// AMERICAN INDIAN (A01-M43) Yuchi
* RaceCodeCS#M16 "Yuchi"
* RaceCodeCS#M17 "Tia"
* RaceCodeCS#M18 "Wilono"
* RaceCodeCS#M19 "Anstohini"
// AMERICAN INDIAN (A01-M43) Yuman
* RaceCodeCS#M22 "Cocopah Tribe of Arizona"
* RaceCodeCS#M23 "Havasupai"
* RaceCodeCS#M24 "Hualapai"
* RaceCodeCS#M25 "Maricopa"
* RaceCodeCS#M26 "Fort Mojave Indian Tribe of Arizona"
* RaceCodeCS#M27 "Quechan"
* RaceCodeCS#M28 "YavapaiPrescott Tribe of the Yavapai Reservation"
* RaceCodeCS#M29 "YUMAN"
// AMERICAN INDIAN (A01-M43) Yurok
* RaceCodeCS#M34 "Resighini Rancheria"
* RaceCodeCS#M35 "Yurok"
* RaceCodeCS#M36 "COAST YUROK"
// AMERICAN INDIAN (A01-M43) Other Tribes or Not Specified
* RaceCodeCS#M41 "American Indian"
* RaceCodeCS#M42 "Tribal Response, NEC"
* RaceCodeCS#M43 "KUTENAI INDIAN"
// ALASKA INDIAN TRIBES (M44-N66) Alaska Indian Tribes
* RaceCodeCS#M44 "Alaska Indian"
// ALASKA INDIAN TRIBES (M44-N66) Alaska Native
* RaceCodeCS#M47 "Alaska Native"
* RaceCodeCS#M48 "Other Alaskan, NEC"
// ALASKA INDIAN TRIBES (M44-N66) Alaskan Athabascans
* RaceCodeCS#M52 "Ahtna"
* RaceCodeCS#M53 "Alaskan Athabascan"
* RaceCodeCS#M54 "Alatna Village"
* RaceCodeCS#M55 "Alexander"
* RaceCodeCS#M56 "Allakaket Village"
* RaceCodeCS#M57 "Alanvik"
* RaceCodeCS#M58 "Anvik Village"
* RaceCodeCS#M59 "Arctic Village"
* RaceCodeCS#M60 "Beaver Village"
* RaceCodeCS#M61 "Birch Crcek Village"
* RaceCodeCS#M62 "Native Village of Cantwell"
* RaceCodeCS#M63 "Chalkyitsik Village"
* RaceCodeCS#M64 "Chickaloon Native Village"
* RaceCodeCS#M65 "Native Village of Chistochina"
* RaceCodeCS#M66 "Native Village of Chitina"
* RaceCodeCS#M67 "Circle Native Community"
* RaceCodeCS#M68 "COOK INLET"
* RaceCodeCS#M69 "COPPER CENTER"
* RaceCodeCS#M70 "Copper River"
* RaceCodeCS#M71 "Village of Dot Lake"
* RaceCodeCS#M72 "Doyon"
* RaceCodeCS#M73 "Native Village of Eagle"
* RaceCodeCS#M74 "Ekiutna Native Village"
* RaceCodeCS#M75 "Evansville Village"
* RaceCodeCS#M76 "Native Village of Fort Yukon"
* RaceCodeCS#M77 "Native Village of Gakona"
* RaceCodeCS#M78 "Galena Village"
* RaceCodeCS#M79 "Organized Village of Grayling"
* RaceCodeCS#M80 "Gulkana Village"
* RaceCodeCS#M81 "Healy Lake Village"
* RaceCodeCS#M82 "Holy Cross Village"
* RaceCodeCS#M83 "Hughes Village"
* RaceCodeCS#M84 "Huslia Village"
* RaceCodeCS#M85 "Village of Iliamna"
* RaceCodeCS#M86 "Village ofKaltag"
* RaceCodeCS#M87 "Native Village of Kluti Kaah"
* RaceCodeCS#M88 "Knik Tribe"
* RaceCodeCS#M89 "Koyukuk Native Village"
* RaceCodeCS#M90 "Lake Minchumina"
* RaceCodeCS#M91 "Lime Village"
* RaceCodeCS#M92 "McGrath Native Village"
* RaceCodeCS#M93 "Manley Hot Springs Village"
* RaceCodeCS#M94 "Mentasta Traditional Council"
// ALASKA INDIAN TRIBES (M44-N66) Alaskan Athabascans
* RaceCodeCS#M95 "Native Village of Minto"
* RaceCodeCS#M96 "Nenana Native Association"
* RaceCodeCS#M97 "Nikolai Village"
* RaceCodeCS#M98 "Ninilchik Village Traditional Council"
* RaceCodeCS#M99 "Nondalton Village"
* RaceCodeCS#N01 "Northway Village"
* RaceCodeCS#N02 "Nulato Village"
* RaceCodeCS#N03 "Pedro Bay Village"
* RaceCodeCS#N04 "Rampart Village"
* RaceCodeCS#N05 "Native Village of Ruby"
* RaceCodeCS#N06 "Village of Salamatoff"
* RaceCodeCS#N07 "Seldovia Village Tribe"
* RaceCodeCS#N08 "Slana"
* RaceCodeCS#N09 "Shageluk Native Village"
* RaceCodeCS#N10 "Native Village of Stevens"
* RaceCodeCS#N11 "Village of Stony River"
* RaceCodeCS#N12 "Takotna Village"
* RaceCodeCS#N13 "Native Village of Tanacross"
* RaceCodeCS#N14 "Tanaina"
* RaceCodeCS#N15 "Native Village of Tanana"
* RaceCodeCS#N16 "Tanana Chiefs"
* RaceCodeCS#N17 "Native Village of Tazlina"
* RaceCodeCS#N18 "Telida Village"
* RaceCodeCS#N19 "Native Village of Tetlin"
* RaceCodeCS#N20 "Tok"
* RaceCodeCS#N21 "Native Village of Tyonek"
* RaceCodeCS#N22 "Village of Venetie"
* RaceCodeCS#N23 "Wiseman"
* RaceCodeCS#N24 "Kenaitze Indian Tribe"
// ALASKA INDIAN TRIBES (M44-N66) Tlingit-Haida
* RaceCodeCS#N27 "TLINGIT HAIDA"
* RaceCodeCS#N28 "Angoon Community Association"
* RaceCodeCS#N29 "Central Council of the Tlingit and Haida Indian Tribes"
* RaceCodeCS#N30 "Chilkat Indian Village"
* RaceCodeCS#N31 "Chilkoot Indian Association"
* RaceCodeCS#N32 "Craig Community Association"
* RaceCodeCS#N33 "Douglas Indian Association"
* RaceCodeCS#N34 "Haida"
* RaceCodeCS#N35 "Hoonah Indian Association"
* RaceCodeCS#N36 "Hydaburg Cooperative Association"
* RaceCodeCS#N37 "Organized Village of Kake"
* RaceCodeCS#N38 "Organized Village of Kasaan"
* RaceCodeCS#N40 "Ketchikan Indian Corporation"
* RaceCodeCS#N41 "Klawock Cooperative Association"
* RaceCodeCS#N43 "Pelican"
* RaceCodeCS#N44 "Petersburg Indian Association"
// ALASKA INDIAN TRIBES (M44-N66) Tlingit-Haida
* RaceCodeCS#N45 "Organized Village of Saxman"
* RaceCodeCS#N46 "Sitka Tribe of Alaska"
* RaceCodeCS#N47 "Tenakee Springs"
* RaceCodeCS#N48 "Tlingit"
* RaceCodeCS#N49 "Wrangell Cooperative Association"
* RaceCodeCS#N50 "Yakutat Tlingit Tribe"
* RaceCodeCS#N51 "Juneau"
// ALASKA INDIAN TRIBES (M44-N66) Tsimshian
* RaceCodeCS#N56 "Metlakatia Indian Community, Annette Island Reserve"
* RaceCodeCS#N57 "Tsimshian"
// ALASKA INDIAN TRIBES (M44-N66) Sealaska
* RaceCodeCS#N59 "Sealaska"
* RaceCodeCS#N60 "Sealaska Corporation"
// ALASKA INDIAN TRIBES (M44-N66) Southeast Alaska
* RaceCodeCS#N64 "Southeast Alaska"
* RaceCodeCS#N65 "Skagway Village"
// ESKIMO TRIBES (N67-R10) Eskimo Tribes
* RaceCodeCS#N67 "American Eskimo"
* RaceCodeCS#N68 "Eskimo"
* RaceCodeCS#N69 "Greenland Eskimo"
* RaceCodeCS#N75 "Inuit"
// ESKIMO TRIBES (N67-R10) Inupiat Eskimo
* RaceCodeCS#N78 "INUPIAT ESKIMO"
* RaceCodeCS#N79 "Native Village of Ambler"
* RaceCodeCS#N80 "Anaktuvuk"
* RaceCodeCS#N81 "Village of Anaktuvuk Pass"
* RaceCodeCS#N82 "Inupiat Community of the Arctic Slope"
* RaceCodeCS#N83 "Arctic Slope Corporation"
* RaceCodeCS#N84 "Atqasuk Village"
* RaceCodeCS#N85 "Native Village of Barrow hilipiat Traditional Government"
* RaceCodeCS#N86 "Bering Straits Inupiat"
* RaceCodeCS#N87 "Native Village of Brevig Mission"
* RaceCodeCS#N88 "Native Village ofBuckland"
* RaceCodeCS#N89 "Chinik Eskimo Community"
* RaceCodeCS#N90 "Native Village of Council"
* RaceCodeCS#N91 "Native Village of Deering"
* RaceCodeCS#N92 "Native Village of Elim"
* RaceCodeCS#N93 "GOLOVIN"
* RaceCodeCS#N94 "Native Village of Diomede"
// ESKIMO TRIBES (N67-R10) Inupiat Eskimo
* RaceCodeCS#N95 "Inupiaq"
* RaceCodeCS#N96 "Inupiat"
* RaceCodeCS#N97 "Kaktovik Village"
* RaceCodeCS#N98 "Kawerak"
* RaceCodeCS#N99 "Native Village of Kiana"
* RaceCodeCS#P01 "Native Village of Kivalina"
* RaceCodeCS#P02 "Native Village of Kobuk"
* RaceCodeCS#P03 "Native Village of Kotzebue"
* RaceCodeCS#P04 "Native Village of Koyuk"
* RaceCodeCS#P05 "Kwiguk"
* RaceCodeCS#P06 "Mauneluk Inupiat"
* RaceCodeCS#P07 "Nana Inupiat"
* RaceCodeCS#P08 "Native Village of Noatak"
* RaceCodeCS#P09 "Nome Eskimo Community"
* RaceCodeCS#P10 "Noorvik Native Community"
* RaceCodeCS#P11 "Native Village of Nuiqsut"
* RaceCodeCS#P12 "Native Village of Point Hope"
* RaceCodeCS#P13 "Native Village of Point Lay"
* RaceCodeCS#P14 "Native Village of Selawik"
* RaceCodeCS#P15 "Native Village of Shaktoolik"
* RaceCodeCS#P16 "Native Village of Shishmaref"
* RaceCodeCS#P17 "Native Village of Shungnak"
* RaceCodeCS#P18 "Village of Solomon"
* RaceCodeCS#P19 "Native Village of Teller"
* RaceCodeCS#P20 "Native Village of Unalakleet"
* RaceCodeCS#P21 "Village of Wainwright"
* RaceCodeCS#P22 "Village of Wales"
* RaceCodeCS#P23 "Village of White Mountain"
* RaceCodeCS#P24 "White Mountain Inupiat"
* RaceCodeCS#P25 "Native Village of Mary's Igloo"
* RaceCodeCS#P26 "King Island Native Community"
// ESKIMO TRIBES (N67-R10) Siberian Eskimo
* RaceCodeCS#P29 "SIBERIAN ESKIMO"
* RaceCodeCS#P30 "Native Village of Gambell"
* RaceCodeCS#P31 "Native Village of Savoonga"
* RaceCodeCS#P32 "Siberian Yupik"
// ESKIMO TRIBES (N67-R10) Cupiks Eskimo
* RaceCodeCS#P36 "Chevak Native Village"
* RaceCodeCS#P37 "Native Village of Mekoryuk"
// ESKIMO TRIBES (N67-R10) Yup'ik
* RaceCodeCS#P38 "Akiachak Native Community"
* RaceCodeCS#P39 "Akiak Native Community"
// ESKIMO TRIBES (N67-R10) Yup'ik
* RaceCodeCS#P40 "Village of Alakanuk"
* RaceCodeCS#P41 "Native Village of Aleknagik"
* RaceCodeCS#P42 "Yupiit of Andreafski"
* RaceCodeCS#P43 "Village of Aniak"
* RaceCodeCS#P44 "Village of Atmautluak"
* RaceCodeCS#P45 "Orutsararmuit Native Village"
* RaceCodeCS#P46 "Village of Bill Moore's Slough Bay"
* RaceCodeCS#P47 "Bristol Bay"
* RaceCodeCS#P48 "Calista"
* RaceCodeCS#P49 "Village of Chefomak"
* RaceCodeCS#P50 "Native of Hamilton"
* RaceCodeCS#P51 "Native Village of Chuathbaluk"
* RaceCodeCS#P52 "Village of Clark's Point"
* RaceCodeCS#P53 "Village of Crooked Creek"
* RaceCodeCS#P54 "Curyung Tribal Council"
* RaceCodeCS#P55 "Native Village of Eek"
* RaceCodeCS#P56 "Native Village of Ekuk"
* RaceCodeCS#P57 "Ekwok Village"
* RaceCodeCS#P58 "Emmonak Village"
* RaceCodeCS#P59 "Native Village of Goodnews Bay"
* RaceCodeCS#P60 "Native Village of Hooper Bay"
* RaceCodeCS#P61 "Iqurmuit Traditional Council"
* RaceCodeCS#P62 "Village of Kalskag"
* RaceCodeCS#P63 "Native Village of Kasigluk"
* RaceCodeCS#P64 "Native Village of Kipnuk"
* RaceCodeCS#P65 "New Koliganek Village Council"
* RaceCodeCS#P66 "Native Village of Kongiganak"
* RaceCodeCS#P67 "Village of Kotlik"
* RaceCodeCS#P68 "Organized Village of Kwethluk"
* RaceCodeCS#P69 "Native Village of Kwigillingok"
* RaceCodeCS#P70 "Levelock Village"
* RaceCodeCS#P71 "Village of Lower Kalskag"
* RaceCodeCS#P72 "Manokotak Village"
* RaceCodeCS#P73 "Native Village of Marshall"
* RaceCodeCS#P74 "Village of Ohogamiut"
* RaceCodeCS#P75 "Asa'carsarmiut Tribe"
* RaceCodeCS#P76 "Naknek Native Village"
* RaceCodeCS#P77 "Native Village of Napaimute"
* RaceCodeCS#P78 "Native Village of Napakiak"
* RaceCodeCS#P79 "Native Village of Napaskiak"
* RaceCodeCS#P80 "Newhalen Village"
* RaceCodeCS#P81 "New Stuyahok Village"
* RaceCodeCS#P82 "Newtek Village"
* RaceCodeCS#P83 "Native Village of Nightmute"
* RaceCodeCS#P84 "Native Village of Nunapitchuk"
* RaceCodeCS#P85 "Oscarville Traditional Village"
* RaceCodeCS#P86 "Pilot Station Traditional Village"
* RaceCodeCS#P87 "Native Village of Pitkas Point"
// ESKIMO TRIBES (N67-R10) Yup'ik
* RaceCodeCS#P88 "Platinum Traditional Village"
* RaceCodeCS#P89 "Portage Creek Village"
* RaceCodeCS#P90 "Native Village of Kwinhagak"
* RaceCodeCS#P91 "Village of Red Devil"
* RaceCodeCS#P92 "Native Village of Saint Michael"
* RaceCodeCS#P93 "Native Village of Scammon Bay"
* RaceCodeCS#P94 "Native Village of Sheldon's Point"
* RaceCodeCS#P95 "Village of Sleetmute"
* RaceCodeCS#P96 "Stebbins Community Association"
* RaceCodeCS#P97 "Traditional Village ofTogiak"
* RaceCodeCS#P98 "Native Village of Toksook Bay"
* RaceCodeCS#P99 "Tuluksak Native Community"
* RaceCodeCS#Q01 "MOUNTAIN VILLAGE"
* RaceCodeCS#R01 "Native Village of Tuntutuliak"
* RaceCodeCS#R02 "Native Village of Tununak"
* RaceCodeCS#R03 "Twin Hills Village"
* RaceCodeCS#R04 "Yup'ik"
* RaceCodeCS#R05 "Yup'ik Eskimo"
* RaceCodeCS#R06 "Native Village of Georgetown"
* RaceCodeCS#R07 "Algaaciq Native Village"
* RaceCodeCS#R08 "Umkumiute Native Village"
* RaceCodeCS#R09 "Chuloonawick Native Village"
// ALEUT TRIBES (R11-R99) Aleut
* RaceCodeCS#R11 "Aleut"
// ALEUT TRIBES (R11-R99) Alutiiq Aleut
* RaceCodeCS#R15 "ALUTIIQ ALEUT"
* RaceCodeCS#R16 "Alutiiq"
* RaceCodeCS#R17 "Village of Afognak"
* RaceCodeCS#R18 "Native Village of Tatitlek"
* RaceCodeCS#R19 "Ugashik Village"
// ALEUT TRIBES (R11-R99) Bristol Bay Aleut
* RaceCodeCS#R28 "Bristol Bay Aleut"
* RaceCodeCS#R29 "Native Village of Chignik"
* RaceCodeCS#R30 "Chignik Lake Village"
* RaceCodeCS#R31 "Egegik Village"
* RaceCodeCS#R32 "Igiugig Village"
* RaceCodeCS#R33 "Ivanoff Bay Village"
* RaceCodeCS#R34 "King Salmon"
* RaceCodeCS#R35 "Kokhanok Village"
* RaceCodeCS#R36 "Native Village of Perryville"
* RaceCodeCS#R37 "Native Village of Pilot Point"
* RaceCodeCS#R38 "Native Village of Port Heiden"
// ALEUT TRIBES (R11-R99) Chugach Aleut
* RaceCodeCS#R43 "Native Village of Chanega"
* RaceCodeCS#R44 "Chugach Aleut"
* RaceCodeCS#R45 "Chugach Corporation"
* RaceCodeCS#R46 "Native Village of Nanwaiek"
* RaceCodeCS#R47 "Native Village of Port Graham"
// ALEUT TRIBES (R11-R99) Eyak
* RaceCodeCS#R51 "Eyak"
// ALEUT TRIBES (R11-R99) Koniag Aleut
* RaceCodeCS#R55 "Native Village of Akhiok"
* RaceCodeCS#R56 "Agdaagux Tribe of King Cove"
* RaceCodeCS#R57 "Native Village of Karluk"
* RaceCodeCS#R58 "Native Village of Kanatak"
* RaceCodeCS#R59 "Kodiak"
* RaceCodeCS#R60 "Koniag Aleut"
* RaceCodeCS#R61 "Native Village of Larsen Bay"
* RaceCodeCS#R62 "Village of Old Harbor"
* RaceCodeCS#R63 "Native Village of Ouzinkie"
* RaceCodeCS#R64 "Native Village of Port Lions"
* RaceCodeCS#R65 "Lesnoi Village"
// ALEUT TRIBES (R11-R99) Sugpiaq
* RaceCodeCS#R67 "Sugpiaq"
// ALEUT TRIBES (R11-R99) Suqpigaq
* RaceCodeCS#R71 "Suqpigaq"
// ALEUT TRIBES (R11-R99) Unangan Aleut
* RaceCodeCS#R74 "UNANGAN ALEUT"
* RaceCodeCS#R75 "Native Village of Akutan"
* RaceCodeCS#R76 "Aleut Corporation"
* RaceCodeCS#R77 "Aleutian"
* RaceCodeCS#R78 "Aleutian Islander"
* RaceCodeCS#R79 "Native Village of Atka"
* RaceCodeCS#R80 "Native Village of Belkofski"
* RaceCodeCS#R81 "Native Village of Chignikn Lagoon"
* RaceCodeCS#R82 "King Cove"
* RaceCodeCS#R83 "Native Village of False Pass"
* RaceCodeCS#R84 "Native Village of Nelson Lagoon"
* RaceCodeCS#R85 "Native Village of Nikolski"
* RaceCodeCS#R86 "Pauloff Harbor Village"
* RaceCodeCS#R87 "Qagan Toyagungin Tribe of Sand Point Village"
* RaceCodeCS#R88 "Qawalangin Tribe of Unalaska"
// ALEUT TRIBES (R11-R99) Unangan Aleut
* RaceCodeCS#R89 "Saint George"
* RaceCodeCS#R90 "Saint Paul"
* RaceCodeCS#R91 "Sand Point"
* RaceCodeCS#R92 "South Naknek Village"
* RaceCodeCS#R93 "Unangan"
* RaceCodeCS#R94 "Unalaska"
* RaceCodeCS#R95 "Native Village of Unga"
* RaceCodeCS#R96 "Kaguyak Village"

ValueSet: RaceRecode40VS
Id: vrdr-race-recode-40-vs
Title: "Race Recode 40 Value Set"
Description: "NCHS Race Recode 40 Valueset.

Mapping to IJE codes [here](ConceptMap-RaceRecode40CM.html)."
//* include codes from system RaceRecode40CS
* RaceRecode40CS#01 "White"
* RaceRecode40CS#02 "Black"
* RaceRecode40CS#03 "American Indian or Alaskan Native (AIAN)"
* RaceRecode40CS#04 "Asian Indian"
* RaceRecode40CS#05 "Chinese"
* RaceRecode40CS#06 "Filipino"
* RaceRecode40CS#07 "Japanese"
* RaceRecode40CS#08 "Korean"
* RaceRecode40CS#09 "Vietnamese"
* RaceRecode40CS#10 "Other or Multiple Asian"
* RaceRecode40CS#11 "Hawaiian"
* RaceRecode40CS#12 "Guamanian"
* RaceRecode40CS#13 "Samoan"
* RaceRecode40CS#14 "Other or Multiple Pacific Islander"
* RaceRecode40CS#15 "Black and White"
* RaceRecode40CS#16 "Black and AIAN"
* RaceRecode40CS#17 "Black and Asian"
* RaceRecode40CS#18 "AIAN and NHOPI"
* RaceRecode40CS#19 "NHOPI and White"
* RaceRecode40CS#20 "AIAN and Asian"
* RaceRecode40CS#21 "AIAN and NHOPI-2"
* RaceRecode40CS#22 "Asian and White"
* RaceRecode40CS#23 "Asian and NHOPI"
* RaceRecode40CS#24 "NHOPI and White-2"
* RaceRecode40CS#25 "Black, AIAN and White"
* RaceRecode40CS#26 "Black, AIAN and Asian"
* RaceRecode40CS#27 "Black, AIAN and NHOPI"
* RaceRecode40CS#28 "Black, Asian and White"
* RaceRecode40CS#29 "Black, Asian and NHOPI"
* RaceRecode40CS#30 "Black, NHOPI and White"
* RaceRecode40CS#31 "AIAN, Asian and White"
* RaceRecode40CS#32 "AIAN, NHOPI and White"
* RaceRecode40CS#33 "AIAN, Asian and NHOPI"
* RaceRecode40CS#34 "Asian, NHOPI and White"
* RaceRecode40CS#35 "Black, AIAN, Asian and White"
* RaceRecode40CS#36 "Black, AIAN, Asian and NHOPI"
* RaceRecode40CS#37 "Black, AIAN, NHOPI and White"
* RaceRecode40CS#38 "Black, Asian, NHOPI and White"
* RaceRecode40CS#39 "AIAN, Asian, NHOPI and White"
* RaceRecode40CS#40 "Black, AIAN, Asian, NHOPI and White"
* RaceRecode40CS#99 "Unknown and Other Race"
