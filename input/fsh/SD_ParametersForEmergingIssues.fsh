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