```
Instance: DeathCertificate-Example1
InstanceOf: DeathCertificate
Title: "DeathCertificate-Example1"
Description: "DeathCertificate-Example1"
Usage: #example
* extension[0]
  * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/FilingFormat"
  * valueCodeableConcept = FilingFormatCS#electronic
* extension[+]
  * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/ReplaceStatus"
  * valueCodeableConcept = ReplaceStatusCS#original
* extension[+]
  * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/StateSpecificField"
  * valueString = "State Specific Content"
* status = #final
* type = http://loinc.org#64297-5 "Death certificate"
* subject = Reference(Decedent-Example1)
* date = "2020-11-15T16:39:54-05:00"
* author = Reference(Certifier-Example1)
* title = "Death Certificate"
* attester
  * mode = #legal
  * time = "2020-11-14T16:39:40-05:00"
  * party = Reference(Certifier-Example1)
* event
  * code = http://snomed.info/sct#103693007
  * detail = Reference(DeathCertification-Example1)
* section[0]
  * code = DocumentSectionCS#DecedentDemographics
  * entry[0] = Reference(Decedent-Example1)
  * entry[+] = Reference(DecedentFather-Example1)
  * entry[+] = Reference(DecedentMother-Example1)
  * entry[+] = Reference(DecedentSpouse-Example1)
  * entry[+] = Reference(DecedentAge-Example1)
  * entry[+] = Reference(BirthRecordIdentifier-Example1)
  * entry[+] = Reference(DecedentEducationLevel-Example1)
  * entry[+] = Reference(DecedentMilitaryService-Example1)
  * entry[+] = Reference(DecedentUsualWork-Example1)
  * entry[+] = Reference(InputRaceAndEthnicity-Example1)
  * entry[+] = Reference(EmergingIssues-Example1)
* section[+]
  * code = DocumentSectionCS#DeathInvestigation
  * entry[0] = Reference(ExaminerContacted-Example1)
  * entry[+] = Reference(DecedentPregnancyStatus-Example1)
  * entry[+] = Reference(TobaccoUseContributedToDeath-Example1)
  * entry[+] = Reference(AutopsyPerformedIndicator-Example1)
  * entry[+] = Reference(DeathLocation-Example1)
  * entry[+] = Reference(InjuryLocation-Example1)
  * entry[+] = Reference(InjuryIncident-Example1)
  * entry[+] = Reference(DeathDate-Example1)
  * entry[+] = Reference(SurgeryDate-Example1)
* section[+]
  * code = DocumentSectionCS#DeathCertification
  * entry[0] = Reference(Certifier-Example1)
  * entry[+] = Reference(DeathCertification-Example1)
  * entry[+] = Reference(MannerOfDeath-Example1)
  * entry[+] = Reference(CauseOfDeathPart1-Example1)
  * entry[+] = Reference(CauseOfDeathPart1-Example2)
  * entry[+] = Reference(CauseOfDeathPart2-Example1)
* section[+]
  * code = DocumentSectionCS#DecedentDisposition
  * entry[0] = Reference(DispositionLocation-Example1)
  * entry[+] = Reference(FuneralHome-Example1)
  * entry[+] = Reference(DecedentDispositionMethod-Example1)
  * entry[+] = Reference(Mortician-Example1)
```