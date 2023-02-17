CodeSystem: ObservationsCS
Id: vrdr-observations-cs
Title: "Local Observation Codes"
Description: "Local Observation Codes for observations that lack an appropriate LOINC code"
* insert boilerplate
* ^content = #complete
* ^caseSensitive = false
* #emergingissues "Emerging Issues" "NCHS-required emerging issues data."
* #codedraceandethnicity "Coded Race and Ethnicity" "Coded Race and Ethnicity Data produced by NCHS from submitted death record"
* #inputraceandethnicity "Race and Ethnicity Data submitted by Jurisdictions to NCHS"
* ^experimental = false


RuleSet: PlaceComponentCode(len, number)
* #EmergingIssue{len}_{number} "EmergingIssue{len}_{number}"


CodeSystem: ComponentCS
Id: vrdr-component-cs
Title: "Local Component Codes"
Description: "Local Component Codes for observation components that lack an appropriate LOINC code"
* insert boilerplate
* ^content = #complete
* ^caseSensitive = false
* #position "position"
* #lineNumber "line number"
* #eCodeIndicator "e Code Indicator"
* #wouldBeUnderlyingCauseOfDeathWithoutPregnancy "Would be underlying cause of death without pregnancy."
* insert PlaceComponentCode(1,1)
* insert PlaceComponentCode(1,2)
* insert PlaceComponentCode(1,3)
* insert PlaceComponentCode(1,4)
* insert PlaceComponentCode(1,5)
* insert PlaceComponentCode(1,6)
* insert PlaceComponentCode(1,7)
* insert PlaceComponentCode(1,8)
* insert PlaceComponentCode(8,1)
* insert PlaceComponentCode(8,2)
* insert PlaceComponentCode(8,3)
* #EmergingIssue20 "EmergingIssue20"
* #FirstEditedCode "First Edited Race Code"
* #SecondEditedCode "Second Edited Race Code"
* #ThirdEditedCode "Third Edited Race Code"
* #FourthEditedCode "Fourth Edited Race Code"
* #FifthEditedCode "Fifth Edited Race Code"
* #SixthEditedCode "Sixth Edited Race Code"
* #SeventhEditedCode "Seventh Edited Race Code"
* #EighthEditedCode "Eighth Edited Race Code"
* #FirstAmericanIndianCode "First Edited American Indian Race Code"
* #SecondAmericanIndianCode "Second Edited American Indian Race Code"
* #FirstOtherAsianCode "First Edited Other Asian Race Code"
* #SecondOtherAsianCode "Second Edited Other Asian Race Race Code"
* #FirstOtherPacificIslanderCode "First Edited Other Pacific Islander Race Code"
* #SecondOtherPacificIslanderCode "First Edited Other Pacific Islander Race Code"
* #FirstOtherRaceCode "First Edited Other Race Code"
* #SecondOtherRaceCode "First Edited Other Race Code"
* #RaceRecode40 "Race Recode 40"
* #HispanicCode "Hispanic Code"
* #HispanicCodeForLiteral "Hispanic Code for Literal"
* #RACEMVR "Race Missing Value Reason"
* #HispanicMexican "Hispanic Mexican"
* #HispanicPuertoRican "Hispanic Puerto Rican"
* #HispanicCuban "Hispanic Cuban"
* #HispanicOther "Hispanic Other"
* #HispanicLiteral "Hispanic Literal"
* #White "White"
* #BlackOrAfricanAmerican "Black Or African American"
* #AmericanIndianOrAlaskanNative "American Indian Or Alaska Native"
* #AsianIndian "Asian Indian"
* #Chinese "Chinese"
* #Filipino "Filipino"
* #Japanese "Japanese"
* #Korean "Korean"
* #Vietnamese "Vietnamese"
* #OtherAsian "Other Asian"
* #NativeHawaiian "Native Hawaiian"
* #GuamanianOrChamorro "Guamanian Or Chamorro"
* #Samoan "Samoan"
* #OtherPacificIslander "Other Pacific Islander"
* #OtherRace "Other Race"
* #FirstAmericanIndianOrAlaskanNativeLiteral "First American Indian Or Alaska Native Literal"
* #SecondAmericanIndianOrAlaskanNativeLiteral "Second American Indian Or Alaska Native Literal"
* #FirstOtherAsianLiteral "First Other Asian Literal"
* #SecondOtherAsianLiteral "Second Other Asian Literal"
* #FirstOtherPacificIslanderLiteral "First Other Pacific Islander Literal"
* #SecondOtherPacificIslanderLiteral "Second Other Pacific Islander Literal"
* #FirstOtherRaceLiteral "First Other Race Literal"
* #SecondOtherRaceLiteral "Second Other Race Literal"
* ^experimental = false



CodeSystem: OrganizationTypeCS
Id: vrdr-organization-type-cs
Title: "Local Organization Type"
Description: "Local Organization Types"
* insert boilerplate
* ^content = #complete
* ^caseSensitive = false
* #funeralhome "Funeral Home" "Funeral Home."
* ^experimental = false
