```
Instance: MortalityRosterBundle-Example1
InstanceOf: MortalityRosterBundle
Title: "MortalityRosterBundle-Example1"
Description: "MortalityRosterBundle-Example1"
Usage: #example
* meta
  * extension[0]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/AliasStatus"
    * valueBoolean = false
  * extension[+]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/ReplaceStatus"
    * valueCodeableConcept = ReplaceStatusCS#original "original record"
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
  * value = "2020NY000182"
* type = #collection
* timestamp = "2020-10-20T14:48:35.401641-04:00"
* entry[0]
  * fullUrl = "http://www.example.org/fhir/Patient/Decedent-Example3"
  * resource = Decedent-Example3
* entry[+]
  * fullUrl = "http://www.example.org/fhir/RelatedPerson/DecedentFather-Example1"
  * resource = DecedentFather-Example1
* entry[+]
  * fullUrl = "http://www.example.org/fhir/RelatedPerson/DecedentMother-Example1"
  * resource = DecedentMother-Example1
* entry[+]
  * fullUrl = "http://www.example.org/fhir/Observation/DeathDate-Example3"
  * resource = DeathDate-Example3
* entry[+]
  * fullUrl = "http://www.example.org/fhir/Location/DeathLocation-Example3"
  * resource = DeathLocation-Example3
```