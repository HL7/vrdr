Instance: DeathCertificateDocument-Example1
InstanceOf: DeathCertificateDocument
Usage: #example
Description: "DeathCertificateDocument-Example1"
* insert AddMetaProfile(DeathCertificateDocument)
* identifier.system = "http://nchs.cdc.gov/vrdr_id"
* insert Identifiers2020NY000182
* type = #document
* timestamp = "2020-10-20T14:48:35.401641-04:00"
* insert addentry(Composition, DeathCertificate-Example1)
* insert addentry(Patient, Decedent-Example1)
* insert addentry(RelatedPerson, DecedentFather-Example1)
* insert addentry(RelatedPerson, DecedentMother-Example1)
* insert addentry(RelatedPerson, DecedentSpouse-Example1)
* insert addentry(Observation, DecedentAge-Example1)
* insert addentry(Observation, InputRaceAndEthnicity-Example1)
* insert addentry(Observation, BirthRecordIdentifier-Example1)
* insert addentry(Observation, DecedentEducationLevel-Example1)
* insert addentry(Observation, DecedentMilitaryService-Example1)
* insert addentry(Observation, DecedentUsualWork-Example1)
* insert addentry(Observation, EmergingIssues-Example1)
* insert addentry(Observation, DecedentPregnancyStatus-Example1)
* insert addentry(Observation, TobaccoUseContributedToDeath-Example1)
* insert addentry(Observation, DeathDate-Example1)
* insert addentry(Practitioner, Pronouncer-Example1)
* insert addentry(Observation, SurgeryDate-Example1)
* insert addentry(Observation, ExaminerContacted-Example1)
* insert addentry(Observation, MannerOfDeath-Example1)
* insert addentry(Location, DeathLocation-Example1)
* insert addentry(Location, InjuryLocation-Example1)
* insert addentry(Observation, InjuryIncident-Example1)
* insert addentry(Practitioner, Certifier-Example1)
* insert addentry(Procedure, DeathCertification-Example1)
* insert addentry(Observation, CauseOfDeathPart1-Example1)
* insert addentry(Observation, CauseOfDeathPart1-Example2)
* insert addentry(Observation, CauseOfDeathPart2-Example1)
//* insert addentry(List, CauseOfDeathPathway-Example1)
* insert addentry(Location, DispositionLocation-Example1)
* insert addentry(Organization, FuneralHome-Example1)
* insert addentry(Observation, DecedentDispositionMethod-Example1)
* insert addentry(Observation, AutopsyPerformedIndicator-Example1)
* insert addentry(Practitioner, Mortician-Example1)

Instance: DeathCertificate-Example1
InstanceOf: DeathCertificate
Usage: #example
Description: "DeathCertificate-Example1"
Title: "DeathCertificate Example1"
*  status = #final
*  type = $loinc#64297-5 "Death certificate"
* insert addReferenceComposition(subject, Patient, Decedent-Example1)
*  date = "2020-11-15T16:39:54-05:00"
* insert addReferenceComposition(author, Practitioner, Certifier-Example1)
*  title = "Death Certificate"
*  attester.mode = #legal
*  attester.time = "2020-11-14T16:39:40-05:00"
* event.code = $sct#307930005 "Death certificate (record artifact)"
* insert addReferenceComposition(attester.party, Practitioner, Certifier-Example1)
* insert addReferenceComposition(event.detail, Procedure, DeathCertification-Example1)
*  extension[filingFormat].valueCodeableConcept = FilingFormatCS#electronic
*  extension[replaceStatus].valueCodeableConcept = ReplaceStatusCS#original
*  extension[stateSpecificField].valueString = "State Specific Content"
* section[DecedentDemographics]
  * insert addNamedEntryComposition(Decedent, Patient, Decedent-Example1) 
  * insert addNamedEntryComposition(Father, RelatedPerson, DecedentFather-Example1) 
  * insert addNamedEntryComposition(Mother, RelatedPerson, DecedentMother-Example1) 
  * insert addNamedEntryComposition(Spouse, RelatedPerson, DecedentSpouse-Example1) 
  * insert addNamedEntryComposition(Age, Observation, DecedentAge-Example1) 
  * insert addNamedEntryComposition(BirthRecordID, Observation, BirthRecordIdentifier-Example1) 
  * insert addNamedEntryComposition(EducationLevel, Observation, DecedentEducationLevel-Example1) 
  * insert addNamedEntryComposition(MilitaryService, Observation, DecedentMilitaryService-Example1) 
  * insert addNamedEntryComposition(UsualWork, Observation, DecedentUsualWork-Example1) 
  * insert addNamedEntryComposition(InputRaceAndEthnicity, Observation, InputRaceAndEthnicity-Example1) 
  * insert addNamedEntryComposition(EmergingIssues, Observation, EmergingIssues-Example1) 
* section[DeathInvestigation]
  * insert addNamedEntryComposition(ExaminerContacted, Observation, ExaminerContacted-Example1) 
  * insert addNamedEntryComposition(PregnancyStatus, Observation, DecedentPregnancyStatus-Example1) 
  * insert addNamedEntryComposition(TobaccoUse, Observation, TobaccoUseContributedToDeath-Example1) 
  * insert addNamedEntryComposition(Autopsy, Observation, AutopsyPerformedIndicator-Example1) 
  * insert addNamedEntryComposition(DeathLocation, Location, DeathLocation-Example1) 
  * insert addNamedEntryComposition(InjuryLocation, Location, InjuryLocation-Example1) 
  * insert addNamedEntryComposition(InjuryIncident, Observation, InjuryIncident-Example1) 
  * insert addNamedEntryComposition(DeathDate, Observation, DeathDate-Example1) 
  * insert addNamedEntryComposition(SurgeryDate, Observation, SurgeryDate-Example1) 
* section[DeathCertification]
  * insert addNamedEntryComposition(Certifier, Practitioner, Certifier-Example1) 
  * insert addNamedEntryComposition(DeathCertification, Procedure, DeathCertification-Example1) 
  * insert addNamedEntryComposition(MannerOfDeath, Observation, MannerOfDeath-Example1) 
  * insert addNamedEntryComposition(CauseOfDeathPart1, Observation, CauseOfDeathPart1-Example1) 
  * insert addNamedEntryComposition(CauseOfDeathPart1, Observation, CauseOfDeathPart1-Example2) 
  * insert addNamedEntryComposition(CauseOfDeathPart2, Observation, CauseOfDeathPart2-Example1) 
* section[DecedentDisposition]
  * insert addNamedEntryComposition(DispositionLocation, Location, DispositionLocation-Example1) 
  * insert addNamedEntryComposition(FuneralHome, Organization, FuneralHome-Example1) 
  * insert addNamedEntryComposition(DispositionMethod, Observation, DecedentDispositionMethod-Example1) 
  * insert addNamedEntryComposition(Mortician, Practitioner, Mortician-Example1) 

Instance: DeathCertificate-Example2
InstanceOf: DeathCertificate
Usage: #example
Description: "DeathCertificate-Example2 (with coded content)"
Title: "DeathCertificate Example2"
* status = #final
*  type = $loinc#64297-5 "Death certificate"
* insert addReferenceComposition(subject, Patient, Decedent-Example1)
*  date = "2020-11-15T16:39:54-05:00"
* insert addReferenceComposition(author, Practitioner, Certifier-Example1)
*  title = "Death Certificate"
*  attester.mode = #legal
*  attester.time = "2020-11-14T16:39:40-05:00"
* event.code = $sct#307930005 "Death certificate (record artifact)"
* insert addReferenceComposition(attester.party, Practitioner, Certifier-Example1)
* insert addReferenceComposition(event.detail, Procedure, DeathCertification-Example1)
*  extension[filingFormat].valueCodeableConcept = FilingFormatCS#electronic
*  extension[replaceStatus].valueCodeableConcept = ReplaceStatusCS#original
*  extension[stateSpecificField].valueString = "State Specific Content"
// *  section[DecedentDemographics].entry[Decedent].resource = Decedent-Example1
// The next line shouldn't be necessary
//*  section[DecedentDemographics].code = DocumentSectionCS#DecedentDemographics
* section[DecedentDemographics]
  * insert addNamedEntryComposition(Decedent, Patient, Decedent-Example1) 
  * insert addNamedEntryComposition(Father, RelatedPerson, DecedentFather-Example1) 
  * insert addNamedEntryComposition(Mother, RelatedPerson, DecedentMother-Example1) 
  * insert addNamedEntryComposition(Spouse, RelatedPerson, DecedentSpouse-Example1) 
  * insert addNamedEntryComposition(Age, Observation, DecedentAge-Example1) 
  * insert addNamedEntryComposition(BirthRecordID, Observation, BirthRecordIdentifier-Example1) 
  * insert addNamedEntryComposition(EducationLevel, Observation, DecedentEducationLevel-Example1) 
  * insert addNamedEntryComposition(MilitaryService, Observation, DecedentMilitaryService-Example1) 
  * insert addNamedEntryComposition(UsualWork, Observation, DecedentUsualWork-Example1) 
  * insert addNamedEntryComposition(InputRaceAndEthnicity, Observation, InputRaceAndEthnicity-Example1) 
  * insert addNamedEntryComposition(EmergingIssues, Observation, EmergingIssues-Example1) 
* section[DeathInvestigation]
  * insert addNamedEntryComposition(ExaminerContacted, Observation, ExaminerContacted-Example1) 
  * insert addNamedEntryComposition(PregnancyStatus, Observation, DecedentPregnancyStatus-Example1) 
  * insert addNamedEntryComposition(TobaccoUse, Observation, TobaccoUseContributedToDeath-Example1) 
  * insert addNamedEntryComposition(Autopsy, Observation, AutopsyPerformedIndicator-Example1) 
  * insert addNamedEntryComposition(DeathLocation, Location, DeathLocation-Example1) 
  * insert addNamedEntryComposition(InjuryLocation, Location, InjuryLocation-Example1) 
  * insert addNamedEntryComposition(InjuryIncident, Observation, InjuryIncident-Example2) 
  * insert addNamedEntryComposition(DeathDate, Observation, DeathDate-Example2) 
  * insert addNamedEntryComposition(SurgeryDate, Observation, SurgeryDate-Example1) 
* section[DeathCertification]
  * insert addNamedEntryComposition(Certifier, Practitioner, Certifier-Example1) 
  * insert addNamedEntryComposition(DeathCertification, Procedure, DeathCertification-Example1) 
  * insert addNamedEntryComposition(MannerOfDeath, Observation, MannerOfDeath-Example1) 
  * insert addNamedEntryComposition(CauseOfDeathPart1, Observation, CauseOfDeathPart1-Example1) 
  * insert addNamedEntryComposition(CauseOfDeathPart1, Observation, CauseOfDeathPart1-Example2) 
  * insert addNamedEntryComposition(CauseOfDeathPart2, Observation, CauseOfDeathPart2-Example1) 
* section[DecedentDisposition]
  * insert addNamedEntryComposition(DispositionLocation, Location, DispositionLocation-Example1) 
  * insert addNamedEntryComposition(FuneralHome, Organization, FuneralHome-Example1) 
  * insert addNamedEntryComposition(DispositionMethod, Observation, DecedentDispositionMethod-Example1) 
  * insert addNamedEntryComposition(Mortician, Practitioner, Mortician-Example1) 
* section[CodedContent]
  * insert addNamedEntryComposition(ActivityAtTimeOfDeath, Observation, ActivityAtTimeOfDeath-Example1) 
  * insert addNamedEntryComposition(PlaceOfInjury, Observation, PlaceOfInjury-Example1) 
  * insert addNamedEntryComposition(CodedRaceAndEthnicity, Observation, CodedRaceAndEthnicity-Example1) 
  * insert addNamedEntryComposition(ManualUnderlyingCauseOfDeath, Observation, ManualUnderlyingCauseOfDeath-Example1) 
  * insert addNamedEntryComposition(AutomatedUnderlyingCauseOfDeath, Observation, AutomatedUnderlyingCauseOfDeath-Example1) 
  * insert addNamedEntryComposition(RecordAxisCauseOfDeath, Observation, RecordAxisCauseOfDeath-Example1) 
  * insert addNamedEntryComposition(EntityAxisCauseOfDeath, Observation, EntityAxisCauseOfDeath-Example1) 
  * insert addNamedEntryComposition(CodingStatusValues, Parameters, CodingStatusValues-Example1) 

Instance: DeathCertificateDocument-Example2
InstanceOf: DeathCertificateDocument
Usage: #example
Description: "DeathCertificateDocument-Example2 (with coded content)"
* insert AddMetaProfile(DeathCertificateDocument)
* identifier.system = "http://nchs.cdc.gov/vrdr_id"
* insert Identifiers2020NY000182
* type = #document
* timestamp = "2020-10-20T14:48:35.401641-04:00"
* insert addentry(Composition, DeathCertificate-Example2)
* insert addentry(Patient, Decedent-Example1)
* insert addentry(RelatedPerson, DecedentFather-Example1)
* insert addentry(RelatedPerson, DecedentMother-Example1)
* insert addentry(RelatedPerson, DecedentSpouse-Example1)
* insert addentry(Observation, DecedentAge-Example1)
* insert addentry(Observation, InputRaceAndEthnicity-Example1)
* insert addentry(Observation, BirthRecordIdentifier-Example1)
* insert addentry(Observation, DecedentEducationLevel-Example1)
* insert addentry(Observation, DecedentMilitaryService-Example1)
* insert addentry(Observation, DecedentUsualWork-Example1)
* insert addentry(Observation, EmergingIssues-Example1)
* insert addentry(Observation, DecedentPregnancyStatus-Example1)
* insert addentry(Observation, TobaccoUseContributedToDeath-Example1)
* insert addentry(Observation, DeathDate-Example2)
* insert addentry(Practitioner, Pronouncer-Example1)
* insert addentry(Observation, SurgeryDate-Example1)
* insert addentry(Observation, ExaminerContacted-Example1)
* insert addentry(Observation, MannerOfDeath-Example1)
* insert addentry(Location, DeathLocation-Example1)
* insert addentry(Location, InjuryLocation-Example1)
* insert addentry(Observation, InjuryIncident-Example2)
* insert addentry(Practitioner, Certifier-Example1)
* insert addentry(Procedure, DeathCertification-Example1)
* insert addentry(Observation, CauseOfDeathPart1-Example1)
* insert addentry(Observation, CauseOfDeathPart1-Example2)
* insert addentry(Observation, CauseOfDeathPart2-Example1)
//* insert addentry(List, CauseOfDeathPathway-Example1)
* insert addentry(Location, DispositionLocation-Example1)
* insert addentry(Organization, FuneralHome-Example1)
* insert addentry(Observation, DecedentDispositionMethod-Example1)
* insert addentry(Observation, AutopsyPerformedIndicator-Example1)
* insert addentry(Practitioner, Mortician-Example1)
* insert addentry(Observation, ActivityAtTimeOfDeath-Example1)
* insert addentry(Observation, CodedRaceAndEthnicity-Example1)
* insert addentry(Observation, ManualUnderlyingCauseOfDeath-Example1)
* insert addentry(Observation, AutomatedUnderlyingCauseOfDeath-Example1)
* insert addentry(Observation, RecordAxisCauseOfDeath-Example1)
* insert addentry(Observation, EntityAxisCauseOfDeath-Example1)
* insert addentry(Observation, PlaceOfInjury-Example1)
* insert addentry(Parameters, CodingStatusValues-Example1)
