RuleSet: AuxiliaryStateIdentifier
* insert ExtensionContextResource(Meta)
* insert ExtensionContextResource(Identifier)
* value[x] 1..1
* value[x] only string
* valueString ^maxLength = 12

Extension: AuxiliaryStateIdentifier1VitalRecords
Id: AuxiliaryStateIdentifier1
Title: "Auxiliary State Identifier1"
Description: "An identifier associated by the submitting jurisdiction with a specific  certificate number.  Twelve digit number."
* insert AuxiliaryStateIdentifier

Extension: AuxiliaryStateIdentifier2VitalRecords
Id: AuxiliaryStateIdentifier2
Title: "Auxiliary State Identifier2 Vital Records"
Description: "An identifier associated by the submitting jurisdiction with a specific certificate number.  Twelve digit number."
* insert AuxiliaryStateIdentifier

Extension: CertificateNumberVitalRecords
Id: CertificateNumber
Title: "Certificate Number"
Description: "Certificate number. Six digit number.  Leading zeroes are optional."
* insert ExtensionContextResource(Identifier)
* value[x] 1..1
* value[x] only string
* valueString ^maxLength = 6