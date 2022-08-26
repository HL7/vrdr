```
Instance: DeathCertificate-Example1
InstanceOf: DeathCertificate
Title: "DeathCertificate-Example1"
Description: "DeathCertificate-Example1"
Usage: #example
* extension[0].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/FilingFormat"
* extension[=].valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-filing-format-cs#electronic
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/ReplaceStatus"
* extension[=].valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-replace-status-cs#original
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/StateSpecificField"
* extension[=].valueString = "State Specific Content"
* status = #final
* type = http://loinc.org#64297-5 "Death certificate"
* subject = Reference(Decedent-Example1)
* date = "2020-11-15T16:39:54-05:00"
* author = Reference(Certifier-Example1)
* title = "Death Certificate"
* attester.mode = #legal
* attester.time = "2020-11-14T16:39:40-05:00"
* attester.party = Reference(Certifier-Example1)
* event.code = http://snomed.info/sct#103693007
* event.detail = Reference(DeathCertification-Example1)
* section[0].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-document-section-cs#DecedentDemographics
* section[=].entry[0] = Reference(Decedent-Example1)
* section[=].entry[+] = Reference(DecedentFather-Example1)
* section[=].entry[+] = Reference(DecedentMother-Example1)
* section[=].entry[+] = Reference(DecedentSpouse-Example1)
* section[=].entry[+] = Reference(DecedentAge-Example1)
* section[=].entry[+] = Reference(BirthRecordIdentifier-Example1)
* section[=].entry[+] = Reference(DecedentEducationLevel-Example1)
* section[=].entry[+] = Reference(DecedentMilitaryService-Example1)
* section[=].entry[+] = Reference(DecedentUsualWork-Example1)
* section[=].entry[+] = Reference(InputRaceAndEthnicity-Example1)
* section[=].entry[+] = Reference(EmergingIssues-Example1)
* section[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-document-section-cs#DeathInvestigation
* section[=].entry[0] = Reference(ExaminerContacted-Example1)
* section[=].entry[+] = Reference(DecedentPregnancyStatus-Example1)
* section[=].entry[+] = Reference(TobaccoUseContributedToDeath-Example1)
* section[=].entry[+] = Reference(AutopsyPerformedIndicator-Example1)
* section[=].entry[+] = Reference(DeathLocation-Example1)
* section[=].entry[+] = Reference(InjuryLocation-Example1)
* section[=].entry[+] = Reference(InjuryIncident-Example1)
* section[=].entry[+] = Reference(DeathDate-Example1)
* section[=].entry[+] = Reference(SurgeryDate-Example1)
* section[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-document-section-cs#DeathCertification
* section[=].entry[0] = Reference(Certifier-Example1)
* section[=].entry[+] = Reference(DeathCertification-Example1)
* section[=].entry[+] = Reference(MannerOfDeath-Example1)
* section[=].entry[+] = Reference(CauseOfDeathPart1-Example1)
* section[=].entry[+] = Reference(CauseOfDeathPart1-Example2)
* section[=].entry[+] = Reference(CauseOfDeathPart2-Example1)
* section[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-document-section-cs#DecedentDisposition
* section[=].entry[0] = Reference(DispositionLocation-Example1)
* section[=].entry[+] = Reference(FuneralHome-Example1)
* section[=].entry[+] = Reference(DecedentDispositionMethod-Example1)
* section[=].entry[+] = Reference(Mortician-Example1)
```