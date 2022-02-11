Profile: DeathCertificate
Parent: Composition
Id: vrdr-death-certificate
Title: "Death Certificate"
Description: "The Death Certificate profile is the body of the death certificate document. It builds upon the FHIR Composition resource."
* insert boilerplate
* status 1..1
* status only code
* status from CompositionStatus (required)
* status ^short = "status"
* type 1..1
* type only CodeableConcept
* type = $loinc#64297-5 "Death certificate" (exactly)
* type ^short = "type"
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "subject"
* date 1..1
* date ^short = "date"
* attester 1..1
* attester only BackboneElement
* attester ^short = "attester"
* attester.mode 1..1
* attester.mode only code
* attester.mode = #legal (exactly)
* attester.mode ^short = "mode"
* attester.mode ^definition = "This attester SHALL contain exactly one [1..1] mode=\"\"legal\"\"(CONF:4393-367)."
* attester.time 1..1
* attester.time ^short = "time"
* attester.time ^definition = "This attester SHALL contain exactly one [1..1] time (CONF:4393-369)."
* attester.party 1..1
* attester.party only Reference(Certifier)
* attester.party ^short = "party"
* attester.party ^definition = "This attester SHALL contain exactly one [1..1] party=\"VRDR Certifier\"(CONF:4393-368)."
* event 1..1
* event only BackboneElement
* event ^short = "event"
* event.code 1..1
* event.code only CodeableConcept
* event.code = $sct#103693007 "Diagnostic procedure (procedure)" (exactly)
* event.code ^short = "code"
* event.code ^definition = "This event SHALL contain exactly one [1..1] code=\"\"103693007\"\"(CONF:4393-372)."
* event.detail 1..1
* event.detail only Reference(DeathCertification)
* event.detail ^short = "detail"
* event.detail ^definition = "This event SHALL contain exactly one [1..1] detail=\"VRDR Death Certification\" (CONF:4393-373)."
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code.coding"
* section ^slicing.rules = #open
* section contains
    DecedentDemographics 0..1 MS and
    DeathInvestigation 0..1 MS and
    DeathCertification 0..1 MS and
    DecedentDisposition 0..1 MS
* section[DecedentDemographics] ^label = "Decedent Demographics"
* section[DecedentDemographics] ^short = "DecedentDemographics"
* section[DecedentDemographics] ^definition = "This section of the Death Certificate Document is comprised of profiles containing decedent demographic data. Demograhic data includes information about related persons (Mother, Father, and Spouse) and social determinants such as education level and usual occupation. The information in this profile group are provided by a decedent informant."
* section[DecedentDemographics].code 1..1 MS
* section[DecedentDemographics].code.coding 1..1 MS
* section[DecedentDemographics].code.coding = DocumentSectionCS#Demographics "Decedent Demographics"
* section[DecedentDemographics].entry 1..*
* section[DecedentDemographics].entry ^slicing.discriminator.type = #profile
* section[DecedentDemographics].entry ^slicing.discriminator.path = "$this.resolve()"
* section[DecedentDemographics].entry ^slicing.rules = #open
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
* section[DeathInvestigation].code 1..1 MS
* section[DeathInvestigation].code.coding 1..1 MS
* section[DeathInvestigation].code.coding = DocumentSectionCS#Investigation "Death Investigation"
* section[DeathInvestigation].entry 1..*
* section[DeathInvestigation].entry ^slicing.discriminator.type = #profile
* section[DeathInvestigation].entry ^slicing.discriminator.path = "$this.resolve()"
* section[DeathInvestigation].entry ^slicing.rules = #open
* section[DeathInvestigation].entry contains
    ExaminerContacted 0..1 MS and
    Pregnancy 0..1 MS and
    TobaccoUse 0..1 MS and
    InjuryLocation 0..1 MS and
    Autopsy 0..1 MS and
    DeathLocation 0..1 MS and
    DeathPronouncementPerformer 0..* MS and
    InjuryIncident 0..1 MS and
    DeathDate 0..1 MS and
    TransportationRole 0..1 MS
* section[DeathInvestigation].entry[ExaminerContacted] only Reference(ExaminerContacted)
* section[DeathInvestigation].entry[Pregnancy] only Reference(DecedentPregnancy)
* section[DeathInvestigation].entry[TobaccoUse] only Reference(TobaccoUseContributedToDeath)
* section[DeathInvestigation].entry[InjuryLocation] only Reference(InjuryLocation)
* section[DeathInvestigation].entry[Autopsy] only Reference(AutopsyPerformedIndicator)
* section[DeathInvestigation].entry[DeathLocation] only Reference(DeathLocation)
* section[DeathInvestigation].entry[DeathPronouncementPerformer] only Reference(DeathPronouncementPerformer)
* section[DeathInvestigation].entry[InjuryIncident] only Reference(InjuryIncident)
* section[DeathInvestigation].entry[DeathDate] only Reference(DeathDate)
* section[DeathInvestigation].entry[TransportationRole] only Reference(DecedentTransportationRole)
* section[DeathCertification].code 1..1 MS
* section[DeathCertification].code.coding 1..1 MS
* section[DeathCertification].code.coding = DocumentSectionCS#Certification "Death Certification"
* section[DeathCertification].entry 1..*
* section[DeathCertification].entry ^slicing.discriminator.type = #profile
* section[DeathCertification].entry ^slicing.discriminator.path = "$this.resolve()"
* section[DeathCertification].entry ^slicing.rules = #open
* section[DeathCertification].entry contains
    MannerOfDeath 0..1 MS and
    CauseOfDeathCondition 0..1 MS and
    ConditionContributingToDeath 0..* MS and
    CauseOfDeathPathway 0..1 MS
* section[DeathCertification].entry[MannerOfDeath] only Reference(MannerOfDeath)
* section[DeathCertification].entry[CauseOfDeathCondition] only Reference(Cause-Of-Death-Condition)
* section[DeathCertification].entry[ConditionContributingToDeath] only Reference(ConditionContributingToDeath)
* section[DeathCertification].entry[CauseOfDeathPathway] only Reference(CauseOfDeathPathway)
* section[DecedentDisposition].code 1..1 MS
* section[DecedentDisposition].code.coding 1..1 MS
* section[DecedentDisposition].code.coding = DocumentSectionCS#Disposition "Decedent Disposition"
* section[DecedentDisposition].entry ..*
* section[DecedentDisposition].entry ^slicing.discriminator.type = #profile
* section[DecedentDisposition].entry ^slicing.discriminator.path = "$this.resolve()"
* section[DecedentDisposition].entry ^slicing.rules = #open
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