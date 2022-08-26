```
Instance: MortalityRosterBundle-Example1
InstanceOf: MortalityRosterBundle
Title: "MortalityRosterBundle-Example1"
Description: "MortalityRosterBundle-Example1"
Usage: #example
* meta.extension[0].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/AliasStatus"
* meta.extension[=].valueBoolean = false
* meta.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/ReplaceStatus"
* meta.extension[=].valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-replace-status-cs#original "original record"
* identifier.extension[0].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/CertificateNumber"
* identifier.extension[=].valueString = "000182"
* identifier.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/AuxiliaryStateIdentifier1"
* identifier.extension[=].valueString = "000000000001"
* identifier.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/AuxiliaryStateIdentifier2"
* identifier.extension[=].valueString = "100000000001"
* identifier.value = "2020NY000182"
* type = #collection
* timestamp = "2020-10-20T14:48:35.401641-04:00"
* entry[0].fullUrl = "http://www.example.org/fhir/Patient/Decedent-Example3"
* entry[=].resource = Decedent-Example3
* entry[+].fullUrl = "http://www.example.org/fhir/RelatedPerson/DecedentFather-Example1"
* entry[=].resource = DecedentFather-Example1
* entry[+].fullUrl = "http://www.example.org/fhir/RelatedPerson/DecedentMother-Example1"
* entry[=].resource = DecedentMother-Example1
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/DeathDate-Example3"
* entry[=].resource = DeathDate-Example3
* entry[+].fullUrl = "http://www.example.org/fhir/Location/DeathLocation-Example3"
* entry[=].resource = DeathLocation-Example3
```