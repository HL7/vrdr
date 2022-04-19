Profile: ParametersForEmergingIssues
Parent: Parameters
Id: vrdr-params-for-emerging-issues
Title: "Parameters for Emerging Issues"
Description: "NCHS-required Parameter Slots for Emerging Issues"
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.description = "Slicing based on the profile conformance of the sliced element"
* parameter ^slicing.rules = #open
* parameter contains
    PLACE1_1 0..1 and
    PLACE1_2 0..1 and
    PLACE1_3 0..1 and
    PLACE1_4 0..1 and
    PLACE1_5 0..1 and
    PLACE1_6 0..1 and
    PLACE8_1 0..1 and
    PLACE8_2 0..1 and
    PLACE8_3 0..1 and
    PLACE20 0..1
* parameter[PLACE1_1] ^short = "PLACE1_1"
* parameter[PLACE1_1] ^definition = "PLACE1_1"
* parameter[PLACE1_1].name = "PLACE1_1"
* parameter[PLACE1_1].value[x] 1..
* parameter[PLACE1_1].value[x] only string
* parameter[PLACE1_1].value[x] ^maxLength = 1
* parameter[PLACE1_1].resource ..0
* parameter[PLACE1_1].part ..0
* parameter[PLACE1_2] ^short = "PLACE1_2"
* parameter[PLACE1_2] ^definition = "PLACE1_2"
* parameter[PLACE1_2].name = "PLACE1_2"
* parameter[PLACE1_2].value[x] 1..
* parameter[PLACE1_2].value[x] only string
* parameter[PLACE1_2].value[x] ^maxLength = 1
* parameter[PLACE1_2].resource ..0
* parameter[PLACE1_2].part ..0
* parameter[PLACE1_3] ^short = "PLACE1_3"
* parameter[PLACE1_3] ^definition = "PLACE1_3"
* parameter[PLACE1_3].name = "PLACE1_3"
* parameter[PLACE1_3].value[x] 1..
* parameter[PLACE1_3].value[x] only string
* parameter[PLACE1_3].value[x] ^maxLength = 1
* parameter[PLACE1_3].resource ..0
* parameter[PLACE1_3].part ..0
* parameter[PLACE1_4] ^short = "PLACE1_4"
* parameter[PLACE1_4] ^definition = "PLACE1_4"
* parameter[PLACE1_4].name = "PLACE1_4"
* parameter[PLACE1_4].value[x] 1..
* parameter[PLACE1_4].value[x] only string
* parameter[PLACE1_4].value[x] ^maxLength = 1
* parameter[PLACE1_4].resource ..0
* parameter[PLACE1_4].part ..0
* parameter[PLACE1_5] ^short = "PLACE1_5"
* parameter[PLACE1_5] ^definition = "PLACE1_5"
* parameter[PLACE1_5].name = "PLACE1_5"
* parameter[PLACE1_5].value[x] 1..
* parameter[PLACE1_5].value[x] only string
* parameter[PLACE1_5].value[x] ^maxLength = 1
* parameter[PLACE1_5].resource ..0
* parameter[PLACE1_5].part ..0
* parameter[PLACE1_6] ^short = "PLACE1_6"
* parameter[PLACE1_6] ^definition = "PLACE1_6"
* parameter[PLACE1_6].name = "PLACE1_6"
* parameter[PLACE1_6].value[x] 1..
* parameter[PLACE1_6].value[x] only string
* parameter[PLACE1_6].value[x] ^maxLength = 1
* parameter[PLACE1_6].resource ..0
* parameter[PLACE1_6].part ..0
* parameter[PLACE8_1] ^short = "PLACE8_1"
* parameter[PLACE8_1] ^definition = "PLACE8_1"
* parameter[PLACE8_1].name = "PLACE8_1"
* parameter[PLACE8_1].value[x] 1..
* parameter[PLACE8_1].value[x] only string
* parameter[PLACE8_1].value[x] ^maxLength = 8
* parameter[PLACE8_1].resource ..0
* parameter[PLACE8_1].part ..0
* parameter[PLACE8_2] ^short = "PLACE8_2"
* parameter[PLACE8_2] ^definition = "PLACE8_2"
* parameter[PLACE8_2].name = "PLACE8_2"
* parameter[PLACE8_2].value[x] 1..
* parameter[PLACE8_2].value[x] only string
* parameter[PLACE8_2].value[x] ^maxLength = 8
* parameter[PLACE8_2].resource ..0
* parameter[PLACE8_2].part ..0
* parameter[PLACE8_3] ^short = "PLACE8_3"
* parameter[PLACE8_3] ^definition = "PLACE8_3"
* parameter[PLACE8_3].name = "PLACE8_3"
* parameter[PLACE8_3].value[x] 1..
* parameter[PLACE8_3].value[x] only string
* parameter[PLACE8_3].value[x] ^maxLength = 8
* parameter[PLACE8_3].resource ..0
* parameter[PLACE8_3].part ..0
* parameter[PLACE20] ^short = "PLACE20"
* parameter[PLACE20] ^definition = "PLACE20"
* parameter[PLACE20].name = "PLACE20"
* parameter[PLACE20].value[x] 1..
* parameter[PLACE20].value[x] only string
* parameter[PLACE20].value[x] ^maxLength = 20
* parameter[PLACE20].resource ..0
* parameter[PLACE20].part ..0


RuleSet: PlaceComponent(len, number)
* component contains place{len}_{number} 0..1
* component[place{len}_{number}] ^short = "{len}_{number}"
* component[place{len}_{number}].code 1..1
* component[place{len}_{number}].code = #{len}_{number} (exactly)
* component[place{len}_{number}].value[x] 1..1
* component[place{len}_{number}].value[x] only string
* component[place{len}_{number}].valueString ^maxLength = 1

Profile: EmergingIssues
Parent: Observation
Id: vrdr-emerging-issues
Title: "Emerging Issues"
Description: "Emerging Issues (Observation)"
* insert RequireMetaProfile(EmergingIssues)
* status 1..1
* status = #final (exactly)
* code 1..1
* code = #emergingissues "NCHS-required Parameter Slots for Emerging Issues" (exactly)
* subject 1..1
* subject only Reference(Decedent)
* effective[x] 0..0
* value[x] 0..0
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* insert PlaceComponent(1,1)
* insert PlaceComponent(1,2)
* insert PlaceComponent(1,3)
* insert PlaceComponent(1,4)
* insert PlaceComponent(1,5)
* insert PlaceComponent(1,6)
* insert PlaceComponent(1,7)
* insert PlaceComponent(1,8)
* insert PlaceComponent(8,1)
* insert PlaceComponent(8,2)
* insert PlaceComponent(8,3)
* insert PlaceComponent(20,1)
