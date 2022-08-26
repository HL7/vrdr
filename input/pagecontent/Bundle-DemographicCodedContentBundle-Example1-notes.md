```
Instance: DemographicCodedContentBundle-Example1
InstanceOf: DemographicCodedContentBundle
Title: "DemographicCodedContentBundle-Example1"
Description: "DemographicCodedContentBundle-Example1"
Usage: #example
* identifier.extension[0].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/CertificateNumber"
* identifier.extension[=].valueString = "000182"
* identifier.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/AuxiliaryStateIdentifier1"
* identifier.extension[=].valueString = "000000000001"
* identifier.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/AuxiliaryStateIdentifier2"
* identifier.extension[=].valueString = "100000000001"
* identifier.system = "http://nchs.cdc.gov/vrdr_id"
* identifier.value = "2020NY000182"
* type = #collection
* timestamp = "2020-10-20T14:48:35.401641-04:00"
* entry[0].fullUrl = "http://www.example.org/fhir/Observation/InputRaceAndEthnicity-Example1"
* entry[=].resource = InputRaceAndEthnicity-Example1
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/CodedRaceAndEthnicity-Example1"
* entry[=].resource = CodedRaceAndEthnicity-Example1
```