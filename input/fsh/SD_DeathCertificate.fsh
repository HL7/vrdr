RuleSet: CompositionSectionEntrySlicing(section)
* section[{section}].entry ^slicing.discriminator.type = #profile
* section[{section}].entry ^slicing.discriminator.path = "$this.resolve()"
* section[{section}].entry ^slicing.rules = #open

Profile: DeathCertificate
Parent: Composition
Id: vrdr-death-certificate
Title: "Death Certificate"
Description: "The body of the death certificate document (Composition)."
* insert RequireMetaProfile(DeathCertificate)
* status 1..1
* status only code
* status from CompositionStatus (required)
* status ^short = "status"
* type 1..1
* type only CodeableConcept
* type = $loinc#64297-5 "Death certificate" (exactly)
* subject 1..1
* subject only Reference(Decedent)
* date 1..1
* attester 1..1
* attester only BackboneElement
* attester.mode 1..1
* attester.mode only code
* attester.mode = #legal (exactly)
* attester.time 1..1
* attester.party 1..1
* attester.party only Reference(Certifier)
* event 1..1
* event only BackboneElement
* event.code 1..1
* event.code only CodeableConcept
* event.code = $sct#103693007 "Diagnostic procedure (procedure)" (exactly)
* event.detail 1..1
* event.detail only Reference(DeathCertification)
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section.code 1..1 MS
* section contains
    DecedentDemographics 0..1 MS and
    DeathInvestigation 0..1 MS and
    DeathCertification 0..1 MS and
    DecedentDisposition 0..1 MS
* insert CompositionSectionEntrySlicing(DecedentDemographics)
* insert CompositionSectionEntrySlicing(DeathInvestigation)
* insert CompositionSectionEntrySlicing(DeathCertification)
* insert CompositionSectionEntrySlicing(DecedentDisposition)
* section[DecedentDemographics] ^label = "Decedent Demographics"
* section[DecedentDemographics] ^short = "Decedent Demographics"
* section[DecedentDemographics] ^definition = "This section of the Death Certificate Document is comprised of profiles containing decedent demographic data. Demograhic data includes information about related persons (Mother, Father, and Spouse) and social determinants such as education level and usual occupation. The information in this profile group are provided by a decedent informant."
* section[DecedentDemographics].code  = DocumentSectionCS#Demographics "Decedent Demographics"
* section[DecedentDemographics].entry contains
    Father 0..1 MS and
    Mother 0..1 MS and
    Spouse 0..1 MS and
    Age 0..1 MS and
    BirthRecordID 0..1 MS and
    EducationLevel 0..1 MS and
    MilitaryService 0..1 MS and
    UsualWork 0..1 MS
* section[DecedentDemographics].entry[Father] only Reference(DecedentFather)
* section[DecedentDemographics].entry[Mother] only Reference(DecedentMother)
* section[DecedentDemographics].entry[Spouse] only Reference(DecedentSpouse)
* section[DecedentDemographics].entry[Age] only Reference(DecedentAge)
* section[DecedentDemographics].entry[BirthRecordID] only Reference(BirthRecordIdentifier)
* section[DecedentDemographics].entry[EducationLevel] only Reference(DecedentEducationLevel)
* section[DecedentDemographics].entry[MilitaryService] only Reference(DecedentMilitaryService)
* section[DecedentDemographics].entry[UsualWork] only Reference(DecedentUsualWork)
* section[DeathInvestigation] ^definition = "This section of the Death Certificate Document is comprised of profiles containing data obtained during the course of investigating a death. Many of these items are conditionally present in a death certification transaction depending on whether or not a autopsy was performed, an injury incident occurred, or a transportation event was involved."
* section[DeathInvestigation].code = DocumentSectionCS#Investigation "Death Investigation"
// * section[DeathInvestigation].entry ^slicing.discriminator.type = #profile
// * section[DeathInvestigation].entry ^slicing.discriminator.path = "$this.resolve()"
// * section[DeathInvestigation].entry ^slicing.rules = #open
* section[DeathInvestigation].entry contains
    ExaminerContacted 0..1 MS and
    PregnancyStatus 0..1 MS and
    TobaccoUse 0..1 MS and
    InjuryLocation 0..1 MS and
    Autopsy 0..1 MS and
    DeathLocation 0..1 MS and
    DeathPronouncementPerformer 0..* MS and
    InjuryIncident 0..1 MS and
    DeathDate 0..1 MS and
    TransportationRole 0..1 MS
* section[DeathInvestigation].entry[ExaminerContacted] only Reference(ExaminerContacted)
* section[DeathInvestigation].entry[PregnancyStatus] only Reference(DecedentPregnancyStatus)
* section[DeathInvestigation].entry[TobaccoUse] only Reference(TobaccoUseContributedToDeath)
* section[DeathInvestigation].entry[InjuryLocation] only Reference(InjuryLocation)
* section[DeathInvestigation].entry[Autopsy] only Reference(AutopsyPerformedIndicator)
* section[DeathInvestigation].entry[DeathLocation] only Reference(DeathLocation)
* section[DeathInvestigation].entry[DeathPronouncementPerformer] only Reference(DeathPronouncementPerformer)
* section[DeathInvestigation].entry[InjuryIncident] only Reference(InjuryIncident)
* section[DeathInvestigation].entry[DeathDate] only Reference(DeathDate)
* section[DeathInvestigation].entry[TransportationRole] only Reference(DecedentTransportationRole)
* section[DeathCertification].code = DocumentSectionCS#Certification "Death Certification"
* section[DeathCertification].entry 1..*
// * section[DeathCertification].entry ^slicing.discriminator.type = #profile
// * section[DeathCertification].entry ^slicing.discriminator.path = "$this.resolve()"
// * section[DeathCertification].entry ^slicing.rules = #open
* section[DeathCertification].entry contains
    MannerOfDeath 0..1 MS and
    CauseOfDeathCondition 0..1 MS and
    ConditionContributingToDeath 0..* MS and
    CauseOfDeathPathway 0..1 MS
* section[DeathCertification].entry[MannerOfDeath] only Reference(MannerOfDeath)
* section[DeathCertification].entry[CauseOfDeathCondition] only Reference(CauseOfDeathCondition)
* section[DeathCertification].entry[ConditionContributingToDeath] only Reference(ConditionContributingToDeath)
* section[DeathCertification].entry[CauseOfDeathPathway] only Reference(CauseOfDeathPathway)
* section[DecedentDisposition].code = DocumentSectionCS#Disposition "Decedent Disposition"
// * section[DecedentDisposition].entry ^slicing.discriminator.type = #profile
// * section[DecedentDisposition].entry ^slicing.discriminator.path = "$this.resolve()"
// * section[DecedentDisposition].entry ^slicing.rules = #open
* section[DecedentDisposition].entry contains
    DispositionLocation 0..* MS and
    FuneralHome 0..1 MS and
    Mortician 0..1 MS and
    DispositionMethod 0..1 MS and
    FuneralServiceLicensee 0..1 MS
* section[DecedentDisposition].entry[DispositionLocation] only Reference(DispositionLocation)
* section[DecedentDisposition].entry[FuneralHome] only Reference(FuneralHome)
* section[DecedentDisposition].entry[Mortician] only Reference(Mortician)
* section[DecedentDisposition].entry[DispositionMethod] only Reference(DecedentDispositionMethod)
* section[DecedentDisposition].entry[FuneralServiceLicensee] only Reference(FuneralServiceLicensee)