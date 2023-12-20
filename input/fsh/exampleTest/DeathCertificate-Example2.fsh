Instance: DeathCertificate-Example2
InstanceOf: Composition
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-certificate"
* author = Reference(Certifier-Example1)
* attester
  * mode = #legal
  * time = "2020-11-14T16:39:40-05:00"
  * party = Reference(Certifier-Example1)
* event
  * detail = Reference(DeathCertification-Example1)
  * code = $sct#103693007
* extension[0]
  * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/FilingFormat"
  * valueCodeableConcept = $vrdr-filing-format-cs#electronic
* extension[+]
  * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/ReplaceStatus"
  * valueCodeableConcept = $vrdr-replace-status-cs#original
* extension[+]
  * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/StateSpecificField"
  * valueString = "State Specific Content"
* section[0]
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
  * code = $vrdr-document-section-cs#DecedentDemographics
* section[+]
  * entry[0] = Reference(ExaminerContacted-Example1)
  * entry[+] = Reference(DecedentPregnancyStatus-Example1)
  * entry[+] = Reference(TobaccoUseContributedToDeath-Example1)
  * entry[+] = Reference(AutopsyPerformedIndicator-Example1)
  * entry[+] = Reference(DeathLocation-Example1)
  * entry[+] = Reference(InjuryLocation-Example1)
  * entry[+] = Reference(InjuryIncident-Example2)
  * entry[+] = Reference(DeathDate-Example2)
  * entry[+] = Reference(SurgeryDate-Example1)
  * code = $vrdr-document-section-cs#DeathInvestigation
* section[+]
  * entry[0] = Reference(Certifier-Example1)
  * entry[+] = Reference(DeathCertification-Example1)
  * entry[+] = Reference(MannerOfDeath-Example1)
  * entry[+] = Reference(CauseOfDeathPart1-Example1)
  * entry[+] = Reference(CauseOfDeathPart1-Example2)
  * entry[+] = Reference(CauseOfDeathPart2-Example1)
  * code = $vrdr-document-section-cs#DeathCertification
* section[+]
  * entry[0] = Reference(DispositionLocation-Example1)
  * entry[+] = Reference(FuneralHome-Example1)
  * entry[+] = Reference(DecedentDispositionMethod-Example1)
  * entry[+] = Reference(Mortician-Example1)
  * code = $vrdr-document-section-cs#DecedentDisposition
* section[+]
  * entry[0] = Reference(ActivityAtTimeOfDeath-Example1)
  * entry[+] = Reference(PlaceOfInjury-Example1)
  * entry[+] = Reference(CodedRaceAndEthnicity-Example1)
  * entry[+] = Reference(ManualUnderlyingCauseOfDeath-Example1)
  * entry[+] = Reference(AutomatedUnderlyingCauseOfDeath-Example1)
  * entry[+] = Reference(RecordAxisCauseOfDeath-Example1)
  * entry[+] = Reference(EntityAxisCauseOfDeath-Example1)
  * entry[+] = Reference(CodingStatusValues-Example1)
  * code = $vrdr-document-section-cs#CodedContent
* type = $loinc#64297-5 "Death certificate"
* status = #final
* subject = Reference(Decedent-Example1)
* date = "2020-11-15T16:39:54-05:00"
* title = "Death Certificate"