Instance: DeathCertificateDocument-Example1
InstanceOf: DeathCertificateDocument
Usage: #example
Description: "DeathCertificateDocument-Example1"
* meta.profile = Canonical(DeathCertificateDocument)
* identifier.system = "http://nchs.cdc.gov/vrdr_id"
* identifier.value = "2020MA000182"
* type = #document
* timestamp = "2020-10-20T14:48:35.401641-04:00"
* identifier.extension[auxiliaryStateIdentifier].valueString = "ID123"
* entry[0].resource = DeathCertificate-Example1
* entry[=].fullUrl = "http://example.org/fhir/Bundle/DeathCertificate-Example1"
* entry[+].resource = Decedent-Example1
* entry[=].fullUrl = "http://example.org/fhir/Patient/Decedent-Example1"
* entry[+].resource = DecedentFather-Example1
* entry[=].fullUrl = "http://example.org/fhir/Patient/DecedentFather-Example1"



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
*  section[DecedentDemographics].entry[Decedent] = Reference(Decedent-Example1)
*  section[DecedentDemographics].entry[Father] = Reference(DecedentFather-Example1)
*  section[DecedentDemographics].entry[Age] = Reference(DecedentAge-Example1)
*  section[DecedentDemographics].entry[BirthRecordID] = Reference(BirthRecordIdentifier-Example1)
*  section[DecedentDemographics].entry[EducationLevel] = Reference(DecedentEducationLevel-Example1)
*  section[DecedentDemographics].entry[MilitaryService] = Reference(DecedentMilitaryService-Example1)
*  section[DecedentDemographics].entry[UsualWork] = Reference(DecedentUsualWork-Example1)
*  section[DecedentDemographics].entry[Parameters2022] = Reference(Parameters2022-Example1)

*  section[DeathInvestigation].entry[ExaminerContacted] = Reference(ExaminerContacted-Example1)
*  section[DeathInvestigation].entry[PregnancyStatus] = Reference(DecedentPregnancyStatus-Example1)
*  section[DeathInvestigation].entry[TobaccoUse] = Reference(TobaccoUseContributedToDeath-Example1)
*  section[DeathInvestigation].entry[Autopsy] = Reference(AutopsyPerformedIndicator-Example1)
*  section[DeathInvestigation].entry[DeathLocation] = Reference(DeathLocation-Example1)
*  section[DeathInvestigation].entry[DeathDate] = Reference(DeathDate-Example1)
*  section[DeathInvestigation].entry[SurgeryDate] = Reference(SurgeryDate-Example1)
*  section[DeathInvestigation].entry[ExaminerContacted] = Reference(ExaminerContacted-Example1)
*  section[DeathInvestigation].entry[TransportationRole] = Reference(DecedentTransportationRole-Example1)

*  section[DeathCertification].entry[MannerOfDeath] = Reference(MannerOfDeath-Example1)
*  section[DeathCertification].entry[CauseOfDeathCondition][0] = Reference(CauseOfDeathCondition-Example1)
*  section[DeathCertification].entry[CauseOfDeathCondition][+] = Reference(CauseOfDeathCondition-Example1)
*  section[DeathCertification].entry[ConditionContributingToDeath] = Reference(ConditionContributingToDeath-Example1)
*  section[DeathCertification].entry[CauseOfDeathPathway] = Reference(CauseOfDeathPathway-Example1)

*  section[DecedentDisposition].entry[DispositionLocation] = Reference(DispositionLocation-Example1)
*  section[DecedentDisposition].entry[FuneralHome] = Reference(FuneralHome-Example1)
*  section[DecedentDisposition].entry[DispositionMethod] = Reference(DecedentDispositionMethod-Example1)
