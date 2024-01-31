Profile: InputRaceAndEthnicity
Parent: Observation
Id: vrdr-input-race-and-ethnicity
Title: "Input Race and Ethnicity"
Description: "Input (from EDRS) Race and Ethnicity (Observation). This is information collected by jurisdictions and submitted to NCHS.

This profile is only for use in a Vital Records Exchange. Systems looking to exchange this observation more broadly should reference US Core."
* insert RequireMetaProfile(Profile: InputRaceAndEthnicity)
* code = ObservationsCS#inputraceandethnicity
* value[x] 0..0
* subject 1..1
* status only code
* status = #final (exactly)
* subject only Reference(PatientVitalRecords) //generalized to PatientVitalRecords
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* insert primobscodecomponent(White,boolean)
* insert primobscodecomponent(BlackOrAfricanAmerican,boolean)
* insert primobscodecomponent(AmericanIndianOrAlaskanNative,boolean)
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
* insert primobscodecomponent(FirstAmericanIndianOrAlaskanNativeLiteral,string)
* insert primobscodecomponent(SecondAmericanIndianOrAlaskanNativeLiteral,string)
* insert primobscodecomponent(FirstOtherAsianLiteral,string)
* insert primobscodecomponent(SecondOtherAsianLiteral,string)
* insert primobscodecomponent(FirstOtherPacificIslanderLiteral,string)
* insert primobscodecomponent(SecondOtherPacificIslanderLiteral,string)
* insert primobscodecomponent(FirstOtherRaceLiteral,string)
* insert primobscodecomponent(SecondOtherRaceLiteral,string)
* insert obscodecomponent(RACEMVR,RaceMissingValueReasonVS)
* insert obscodecomponent(HispanicMexican,HispanicNoUnknownVS)
* insert obscodecomponent(HispanicPuertoRican,HispanicNoUnknownVS)
* insert obscodecomponent(HispanicCuban,HispanicNoUnknownVS)
* insert obscodecomponent(HispanicOther,HispanicNoUnknownVS)
* insert primobscodecomponent(HispanicLiteral,string)
