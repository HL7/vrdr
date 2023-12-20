Instance: MortalityRosterBundle-Example1
InstanceOf: Bundle
Usage: #example
* meta
  * extension[0]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/AliasStatus"
    * valueBoolean = false
  * extension[+]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/ReplaceStatus"
    * valueCodeableConcept = $vrdr-replace-status-cs#original "original record"
  * profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-mortality-roster-bundle"
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
* entry[0]
  * resource = Decedent-Example3
  * fullUrl = "http://www.example.org/fhir/Patient/Decedent-Example3"
* entry[+]
  * resource = DecedentFather-Example1
  * fullUrl = "http://www.example.org/fhir/RelatedPerson/DecedentFather-Example1"
* entry[+]
  * resource = DecedentMother-Example1
  * fullUrl = "http://www.example.org/fhir/RelatedPerson/DecedentMother-Example1"
* entry[+]
  * resource = DeathDate-Example3
  * fullUrl = "http://www.example.org/fhir/Observation/DeathDate-Example3"
* entry[+]
  * resource = DeathLocation-Example3
  * fullUrl = "http://www.example.org/fhir/Location/DeathLocation-Example3"
* type = #collection
* timestamp = "2020-10-20T14:48:35.401641-04:00"