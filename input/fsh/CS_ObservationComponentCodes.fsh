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

RuleSet: PlaceComponentCode(len, number)
* #place{len}_{number} "place{len}_{number}"


CodeSystem: ComponentCS
Id: vrdr-component-cs
Title: "Local Observation Codes"
Description: "Local Observation Codes for observations that lack an appropriate LOINC code"
* insert boilerplate
* ^content = #complete
* ^caseSensitive = false
* #position "position"
* #lineNumber "line number"
* #eCodeIndicator "e Code Indicator"
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
* insert PlaceComponentCode(20,1)
