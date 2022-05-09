RuleSet: AuxiliaryStateIdentifier
* ^context.type = #element
* ^context.expression = "Identifier"
* value[x] 1..1
* value[x] only string
* valueString ^maxLength = 12

Extension: AuxiliaryStateIdentifier1
Id: AuxiliaryStateIdentifier1
Title: "Auxiliary State Identifier1"
Description: "An identifier associated by the submitting jurisdiction with a specific death certificate number.  Twelve digit with leading zeroes"
* insert AuxiliaryStateIdentifier

Extension: AuxiliaryStateIdentifier2
Id: AuxiliaryStateIdentifier2
Title: "Auxiliary State Identifier2"
Description: "An identifier associated by the submitting jurisdiction with a specific death certificate number.  Twelve digit withi leading zeroes"
* insert AuxiliaryStateIdentifier

Extension: CertificateNumber
Id: CertificateNumber
Title: "Certificate Number"
Description: "Death certificate number.  6 digit with leading zeroes"
* ^context.type = #element
* ^context.expression = "Identifier"
* value[x] 1..1
* value[x] only string
* valueString ^maxLength = 6

Extension: StateSpecificField
Id: StateSpecificField
Title: "State Specific Field"
Description: "An arbitratry string included by a submitting jurisdiction"
* value[x] 1..1
* value[x] only string
* valueString ^maxLength = 30