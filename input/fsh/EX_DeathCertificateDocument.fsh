RuleSet: addentry(type, id)
* entry[+].resource = {id}
* entry[=].fullUrl = "http://www.example.org/fhir/{type}/{id}"

Instance: DeathCertificateDocument-Example1
InstanceOf: DeathCertificateDocument
Usage: #example
Description: "DeathCertificateDocument-Example1"
* insert AddMetaProfile(DeathCertificateDocument)
* identifier.system = "http://nchs.cdc.gov/vrdr_id"
* identifier.value = "2020MA000182"
* type = #document
* timestamp = "2020-10-20T14:48:35.401641-04:00"
* identifier.extension[auxiliaryStateIdentifier].valueString = "ID123"
* insert addentry(Bundle, DeathCertificate-Example1)
* insert addentry(Patient, Decedent-Example1)
* insert addentry(RelatedPerson, DecedentFather-Example1)
* insert addentry(RelatedPerson, DecedentMother-Example1)
* insert addentry(RelatedPerson, DecedentSpouse-Example1)
* insert addentry(Observation, DecedentAge-Example1)
* insert addentry(Observation, BirthRecordIdentifier-Example1)
* insert addentry(Observation, DecedentEducationLevel-Example1)
* insert addentry(Observation, DecedentMilitaryService-Example1)
* insert addentry(Observation, DecedentUsualWork-Example1)
* insert addentry(Parameter, ParametersForEmergingIssues-Example1)
* insert addentry(Observation, DecedentPregnancyStatus-Example1)
* insert addentry(Observation, TobaccoUseContributedToDeath-Example1)
* insert addentry(Observation, DeathDate-Example1)
* insert addentry(Observation, SurgeryDate-Example1)
* insert addentry(Observation, ExaminerContacted-Example1)
* insert addentry(Observation, DecedentTransportationRole-Example1)
* insert addentry(Observation, MannerOfDeath-Example1)
* insert addentry(Location, DeathLocation-Example1)
* insert addentry(Location, InjuryLocation-Example1)
* insert addentry(Practitioner, Certifier-Example1)
* insert addentry(Procedure, DeathCertification-Example1)
* insert addentry(Observation, CauseOfDeathCondition-Example1)
* insert addentry(Observation, CauseOfDeathCondition-Example2)
* insert addentry(Observation, ConditionContributingToDeath-Example1)
* insert addentry(List, CauseOfDeathPathway-Example1)
* insert addentry(Location, DispositionLocation-Example1)
* insert addentry(Organization, FuneralHome-Example1)
* insert addentry(Observation, DecedentDispositionMethod-Example1)
* insert addentry(Observation, AutopsyPerformedIndicator-Example1)

Instance: DeathCertificate-Example1
InstanceOf: DeathCertificate
Usage: #example
Description: "DeathCertificate-Example1"
* meta.profile = Canonical(DeathCertificate)
* status = #final
*  type = $loinc#64297-5 "Death certificate"
*  subject = Reference(Decedent-Example1)
*  date = "2020-11-15T16:39:54-05:00"
*  author = Reference(Certifier-Example1)
*  title = "Death Certificate"
*  attester.mode = #legal
*  attester.time = "2020-11-14T16:39:40-05:00"
*  attester.party = Reference(Certifier-Example1)
*  event.detail = Reference(DeathCertification-Example1)
// *  section[DecedentDemographics].entry[Decedent].resource = Decedent-Example1
*  section[DecedentDemographics].code = DocumentSectionCS#DecedentDemographics
*  section[DecedentDemographics].entry[Decedent] = Reference(Decedent-Example1)
*  section[DecedentDemographics].entry[Father] = Reference(DecedentFather-Example1)
*  section[DecedentDemographics].entry[Mother] = Reference(DecedentMother-Example1)
*  section[DecedentDemographics].entry[Spouse] = Reference(DecedentSpouse-Example1)
*  section[DecedentDemographics].entry[Age] = Reference(DecedentAge-Example1)
*  section[DecedentDemographics].entry[BirthRecordID] = Reference(BirthRecordIdentifier-Example1)
*  section[DecedentDemographics].entry[EducationLevel] = Reference(DecedentEducationLevel-Example1)
*  section[DecedentDemographics].entry[MilitaryService] = Reference(DecedentMilitaryService-Example1)
*  section[DecedentDemographics].entry[UsualWork] = Reference(DecedentUsualWork-Example1)
*  section[DecedentDemographics].entry[ParametersForEmergingIssues] = Reference(ParametersForEmergingIssues-Example1)

*  section[DeathInvestigation].entry[ExaminerContacted] = Reference(ExaminerContacted-Example1)
*  section[DeathInvestigation].entry[PregnancyStatus] = Reference(DecedentPregnancyStatus-Example1)
*  section[DeathInvestigation].entry[TobaccoUse] = Reference(TobaccoUseContributedToDeath-Example1)
*  section[DeathInvestigation].entry[Autopsy] = Reference(AutopsyPerformedIndicator-Example1)
*  section[DeathInvestigation].entry[InjuryOrDeathLocation][0] = Reference(DeathLocation-Example1)
*  section[DeathInvestigation].entry[InjuryOrDeathLocation][1] = Reference(InjuryLocation-Example1)
*  section[DeathInvestigation].entry[DeathDate] = Reference(DeathDate-Example1)
*  section[DeathInvestigation].entry[SurgeryDate] = Reference(SurgeryDate-Example1)
*  section[DeathInvestigation].entry[ExaminerContacted] = Reference(ExaminerContacted-Example1)
*  section[DeathInvestigation].entry[TransportationRole] = Reference(DecedentTransportationRole-Example1)

*  section[DeathCertification].entry[Certifier] = Reference(Certifier-Example1)
*  section[DeathCertification].entry[DeathCertification] = Reference(DeathCertification-Example1)
*  section[DeathCertification].entry[MannerOfDeath] = Reference(MannerOfDeath-Example1)
*  section[DeathCertification].entry[CauseOfDeathCondition][0] = Reference(CauseOfDeathCondition-Example1)
*  section[DeathCertification].entry[CauseOfDeathCondition][+] = Reference(CauseOfDeathCondition-Example1)
*  section[DeathCertification].entry[ConditionContributingToDeath] = Reference(ConditionContributingToDeath-Example1)
*  section[DeathCertification].entry[CauseOfDeathPathway] = Reference(CauseOfDeathPathway-Example1)

*  section[DecedentDisposition].entry[DispositionLocation] = Reference(DispositionLocation-Example1)
*  section[DecedentDisposition].entry[FuneralHome] = Reference(FuneralHome-Example1)
*  section[DecedentDisposition].entry[DispositionMethod] = Reference(DecedentDispositionMethod-Example1)
