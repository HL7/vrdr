Extension: AuxiliaryStateIdentifier
Id: AuxiliaryStateIdentifier
Title: "Auxiliary State Identifier "
Description: "An identifier associated by the submitting jurisdiction with a specific death certificate number"
* ^context.type = #element
* ^context.expression = "Identifier"
* value[x] 1..1
* value[x] only string

Extension: StateSpecificField
Id: StateSpecificField
Title: "State Specific Field"
Description: "An arbitratry string included by a submitting jurisdiction"
* value[x] 1..1
* value[x] only string
* valueString ^maxLength = 30