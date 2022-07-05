```
Instance: DeathCertificate-Example1
InstanceOf: DeathCertificate
Title: "DeathCertificate-Example1"
Description: "DeathCertificate-Example1"
Usage: #example
* type = http://loinc.org#64297-5 "Death certificate"
* attester.mode = #legal
* attester.time = "2020-11-14T16:39:40-05:00"
* attester.party.reference = "Practitioner/Certifier-Example1"
* event.code = http://snomed.info/sct#103693007
* event.detail.reference = "Procedure/DeathCertification-Example1"
* extension[0].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/FilingFormat"
* extension[=].valueCodeableConcept.coding.code = #electronic
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/ReplaceStatus"
* extension[=].valueCodeableConcept.coding.code = #original
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/StateSpecificField"
* extension[=].valueString = "State Specific Content"
* section[0].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-document-section-cs#DecedentDemographics
* section[=].entry[0].reference = "Patient/Decedent-Example1"
* section[=].entry[+].reference = "RelatedPerson/DecedentFather-Example1"
* section[=].entry[+].reference = "RelatedPerson/DecedentMother-Example1"
* section[=].entry[+].reference = "RelatedPerson/DecedentSpouse-Example1"
* section[=].entry[+].reference = "Observation/DecedentAge-Example1"
* section[=].entry[+].reference = "Observation/BirthRecordIdentifier-Example1"
* section[=].entry[+].reference = "Observation/DecedentEducationLevel-Example1"
* section[=].entry[+].reference = "Observation/DecedentMilitaryService-Example1"
* section[=].entry[+].reference = "Observation/DecedentUsualWork-Example1"
* section[=].entry[+].reference = "Observation/InputRaceAndEthnicity-Example1"
* section[=].entry[+].reference = "Observation/EmergingIssues-Example1"
* section[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-document-section-cs#DeathInvestigation
* section[=].entry[0].reference = "Observation/ExaminerContacted-Example1"
* section[=].entry[+].reference = "Observation/DecedentPregnancyStatus-Example1"
* section[=].entry[+].reference = "Observation/TobaccoUseContributedToDeath-Example1"
* section[=].entry[+].reference = "Observation/AutopsyPerformedIndicator-Example1"
* section[=].entry[+].reference = "Location/DeathLocation-Example1"
* section[=].entry[+].reference = "Location/InjuryLocation-Example1"
* section[=].entry[+].reference = "Observation/InjuryIncident-Example1"
* section[=].entry[+].reference = "Observation/DeathDate-Example1"
* section[=].entry[+].reference = "Observation/SurgeryDate-Example1"
* section[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-document-section-cs#DeathCertification
* section[=].entry[0].reference = "Practitioner/Certifier-Example1"
* section[=].entry[+].reference = "Procedure/DeathCertification-Example1"
* section[=].entry[+].reference = "Observation/MannerOfDeath-Example1"
* section[=].entry[+].reference = "Observation/CauseOfDeathPart1-Example1"
* section[=].entry[+].reference = "Observation/CauseOfDeathPart1-Example2"
* section[=].entry[+].reference = "Observation/CauseOfDeathPart2-Example1"
* section[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-document-section-cs#DecedentDisposition
* section[=].entry[0].reference = "Location/DispositionLocation-Example1"
* section[=].entry[+].reference = "Organization/FuneralHome-Example1"
* section[=].entry[+].reference = "Observation/DecedentDispositionMethod-Example1"
* section[=].entry[+].reference = "Practitioner/Mortician-Example1"
* status = #final
* subject.reference = "Patient/Decedent-Example1"
* date = "2020-11-15T16:39:54-05:00"
* author.reference = "Practitioner/Certifier-Example1"
* title = "Death Certificate"
```