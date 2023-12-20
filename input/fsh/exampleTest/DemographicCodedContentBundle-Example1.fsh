Instance: DemographicCodedContentBundle-Example1
InstanceOf: Bundle
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-demographic-coded-bundle"
* identifier
  * extension[0]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/CertificateNumber"
    * valueString = "000182"
  * extension[+]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/AuxiliaryStateIdentifier1"
    * valueString = "000000000001"
  * extension[+]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/AuxiliaryStateIdentifier2"
    * valueString = "100000000001"
  * system = "http://nchs.cdc.gov/vrdr_id"
  * value = "2020NY000182"
* entry[0]
  * resource = InputRaceAndEthnicity-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/InputRaceAndEthnicity-Example1"
* entry[+]
  * resource = CodedRaceAndEthnicity-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/CodedRaceAndEthnicity-Example1"
* type = #collection
* timestamp = "2020-10-20T14:48:35.401641-04:00"