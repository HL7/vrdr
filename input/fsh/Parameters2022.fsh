RuleSet: ParameterName(name,short,def)
* parameter[{name}].name = "{name}"
* parameter[{name}] ^short = "{short}"
* parameter[{name}] ^definition = "{def}"

RuleSet: ParameterNameLength(name, maxlength)
* insert ParameterName({name},{name}, {name})
* parameter[{name}].value[x] only string
* parameter[{name}].value[x] 1..1
* parameter[{name}].value[x] ^maxLength = {maxlength}
* parameter[{name}].resource 0..0
* parameter[{name}].part 0..0

Profile:  Parameters2022
Parent: Parameters
Id: VRDR-Parameters2022
Description:   "NCHS-required Parameter Slots for 2022 Submissions"
Title:  "Parameters for 2022 Submission"
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter ^slicing.description = "Slicing based on the profile conformance of the sliced element"
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
* insert ParameterNameLength(PLACE1_1,1)
* insert ParameterNameLength(PLACE1_2,1)
* insert ParameterNameLength(PLACE1_3,1)
* insert ParameterNameLength(PLACE1_4,1)
* insert ParameterNameLength(PLACE1_5,1)
* insert ParameterNameLength(PLACE1_6,1)
* insert ParameterNameLength(PLACE8_1,8)
* insert ParameterNameLength(PLACE8_2,8)
* insert ParameterNameLength(PLACE8_3,8)
* insert ParameterNameLength(PLACE20,20)
