Instance: DeathCertificateDocument-Example1
InstanceOf: Bundle
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-certificate-document"
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
  * resource = DeathCertificate-Example1
  * fullUrl = "http://www.example.org/fhir/Bundle/DeathCertificate-Example1"
* entry[+]
  * resource = Decedent-Example1
  * fullUrl = "http://www.example.org/fhir/Patient/Decedent-Example1"
* entry[+]
  * resource = DecedentFather-Example1
  * fullUrl = "http://www.example.org/fhir/RelatedPerson/DecedentFather-Example1"
* entry[+]
  * resource = DecedentMother-Example1
  * fullUrl = "http://www.example.org/fhir/RelatedPerson/DecedentMother-Example1"
* entry[+]
  * resource = DecedentSpouse-Example1
  * fullUrl = "http://www.example.org/fhir/RelatedPerson/DecedentSpouse-Example1"
* entry[+]
  * resource = DecedentAge-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/DecedentAge-Example1"
* entry[+]
  * resource = InputRaceAndEthnicity-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/InputRaceAndEthnicity-Example1"
* entry[+]
  * resource = BirthRecordIdentifier-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/BirthRecordIdentifier-Example1"
* entry[+]
  * resource = DecedentEducationLevel-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/DecedentEducationLevel-Example1"
* entry[+]
  * resource = DecedentMilitaryService-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/DecedentMilitaryService-Example1"
* entry[+]
  * resource = DecedentUsualWork-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/DecedentUsualWork-Example1"
* entry[+]
  * resource = EmergingIssues-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/EmergingIssues-Example1"
* entry[+]
  * resource = DecedentPregnancyStatus-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/DecedentPregnancyStatus-Example1"
* entry[+]
  * resource = TobaccoUseContributedToDeath-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/TobaccoUseContributedToDeath-Example1"
* entry[+]
  * resource = DeathDate-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/DeathDate-Example1"
* entry[+]
  * resource = SurgeryDate-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/SurgeryDate-Example1"
* entry[+]
  * resource = ExaminerContacted-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/ExaminerContacted-Example1"
* entry[+]
  * resource = MannerOfDeath-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/MannerOfDeath-Example1"
* entry[+]
  * resource = DeathLocation-Example1
  * fullUrl = "http://www.example.org/fhir/Location/DeathLocation-Example1"
* entry[+]
  * resource = InjuryLocation-Example1
  * fullUrl = "http://www.example.org/fhir/Location/InjuryLocation-Example1"
* entry[+]
  * resource = InjuryIncident-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/InjuryIncident-Example1"
* entry[+]
  * resource = Certifier-Example1
  * fullUrl = "http://www.example.org/fhir/Practitioner/Certifier-Example1"
* entry[+]
  * resource = DeathCertification-Example1
  * fullUrl = "http://www.example.org/fhir/Procedure/DeathCertification-Example1"
* entry[+]
  * resource = CauseOfDeathPart1-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/CauseOfDeathPart1-Example1"
* entry[+]
  * resource = CauseOfDeathPart1-Example2
  * fullUrl = "http://www.example.org/fhir/Observation/CauseOfDeathPart1-Example2"
* entry[+]
  * resource = CauseOfDeathPart2-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/CauseOfDeathPart2-Example1"
* entry[+]
  * resource = DispositionLocation-Example1
  * fullUrl = "http://www.example.org/fhir/Location/DispositionLocation-Example1"
* entry[+]
  * resource = FuneralHome-Example1
  * fullUrl = "http://www.example.org/fhir/Organization/FuneralHome-Example1"
* entry[+]
  * resource = DecedentDispositionMethod-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/DecedentDispositionMethod-Example1"
* entry[+]
  * resource = AutopsyPerformedIndicator-Example1
  * fullUrl = "http://www.example.org/fhir/Observation/AutopsyPerformedIndicator-Example1"
* entry[+]
  * resource = Mortician-Example1
  * fullUrl = "http://www.example.org/fhir/Practitioner/Mortician-Example1"
* type = #document
* timestamp = "2020-10-20T14:48:35.401641-04:00"