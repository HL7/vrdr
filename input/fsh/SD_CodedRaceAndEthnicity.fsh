Profile: CodedRaceAndEthnicity
Parent: Observation
Id: vrdr-coded-race-and-ethnicity
Title: "Coded Race and Ethnicity"
Description: "Coded (from NCHS) Race and Ethnicity (Observation). This is information that is coded by NCHS and sent back to jurisdictions, and will not be processed if submitted to NCHS by jurisdictions.

This profile is only for use in a Vital Records Exchange. Systems looking to exchange this observation more broadly should reference US Core.

Note:  NCHS stopped providing RaceRecode40 data in 2022."
* insert RequireMetaProfile(Profile: CodedRaceAndEthnicity)
* code = ObservationsCS#codedraceandethnicity
* value[x] 0..0
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* insert NCHSObservationCommon
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
