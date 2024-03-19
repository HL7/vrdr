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
* ^status = #active

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
* ^experimental = false
* ^status = #active



CodeSystem: OrganizationTypeCS
Id: vrdr-organization-type-cs
Title: "Local Organization Type"
Description: "Local Organization Types"
* insert boilerplate
* ^content = #complete
* ^caseSensitive = false
* #funeralhome "Funeral Home" "Funeral Home."
* ^experimental = false
* ^status = #active
