RuleSet: CompositionSectionEntrySlicing(section)
* section contains {section} 0..1
* section[{section}].code = DocumentSectionCS#{section}
* section[{section}] ^label = "{section}"
* section[{section}] ^short = "{section}"
* section[{section}].entry ^slicing.discriminator.type = #profile
* section[{section}].entry ^slicing.discriminator.path = "$this.resolve()"
* section[{section}].entry ^slicing.rules = #open



RuleSet: BundleSectionSlice(section, name, min, max, short, def, class)
* section[{section}].entry contains {name} {min}..{max} MS
* section[{section}].entry[{name}] ^short = "{short}"
* section[{section}].entry[{name}] ^definition = "{def}"
* section[{section}].entry[{name}] only Reference({class})
// * section[DecedentDemographics].entry contains Decedent 0..1
// * section[DecedentDemographics].entry[Decedent] ^short = "DecedentDemographics"
// * section[DecedentDemographics].entry[Decedent] ^definition = "DecedentDemographics"
// * section[DecedentDemographics].entry[Decedent] only Reference(Decedent)

//* section[{section}].entry[{name}].resource.meta.profile = Canonical({class})

Profile: DeathCertificate
Parent: Composition
Id: vrdr-death-certificate
Title: "Death Certificate"
Description: "The body of the death certificate document (Composition)."
* insert RequireMetaProfile(DeathCertificate)
* status 1..1
* status only code
* status from CompositionStatus (required)
* type 1..1
* type only CodeableConcept
* type = $loinc#64297-5 "Death certificate" (exactly)
* extension contains
    FilingFormat named filingFormat 0..1 and
    StateSpecificField named stateSpecificField 0..1
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
// * section contains DecedentDemographics 0..1
// * section[DecedentDemographics].code = DocumentSectionCS#DecedentDemographics
// * section[DecedentDemographics] ^label = "DecedentDemographics"
// * section[DecedentDemographics] ^short = "DecedentDemographics}"
// * section[DecedentDemographics].entry ^slicing.discriminator.type = #profile
// * section[DecedentDemographics].entry ^slicing.discriminator.path = "$this.resolve()"
// * section[DecedentDemographics].entry ^slicing.rules = #open
* insert CompositionSectionEntrySlicing(DecedentDemographics)
* insert CompositionSectionEntrySlicing(DeathInvestigation)
* insert CompositionSectionEntrySlicing(DeathCertification)
* insert CompositionSectionEntrySlicing(DecedentDisposition)
//
* insert BundleSectionSlice(DecedentDemographics, Decedent, 1, 1, Decedent, Decedent, Decedent)
* insert BundleSectionSlice(DecedentDemographics, Father,  0, 1, DecedentFather, DecedentFather, DecedentFather)
* insert BundleSectionSlice(DecedentDemographics, Mother,  0, 1, DecedentMother, DecedentMother, DecedentMother)
* insert BundleSectionSlice(DecedentDemographics, Spouse,  0, 1, DecedentSpouse, DecedentSpouse, DecedentSpouse)
* insert BundleSectionSlice(DecedentDemographics, Age,  0, 1, DecedentAge, DecedentAge, DecedentAge)
* insert BundleSectionSlice(DecedentDemographics, BirthRecordID,  0, 1, BirthRecordIdentifier, BirthRecordIdentifier, BirthRecordIdentifier)
* insert BundleSectionSlice(DecedentDemographics, EducationLevel,  0, 1, DecedentEducationLevel, DecedentEducationLevel, DecedentEducationLevel)
* insert BundleSectionSlice(DecedentDemographics, MilitaryService,  0, 1, DecedentMilitaryService, DecedentMilitaryService, DecedentMilitaryService)
* insert BundleSectionSlice(DecedentDemographics, UsualWork,  0, 1, DecedentUsualWork, DecedentUsualWork, DecedentUsualWork)
* insert BundleSectionSlice(DecedentDemographics, Parameters2022,  0, 1, Parameters2022, Parameters2022, Parameters2022)
//
* insert BundleSectionSlice(DeathInvestigation, ExaminerContacted, 1, 1, ExaminerContacted, ExaminerContacted, ExaminerContacted)
* insert BundleSectionSlice(DeathInvestigation, PregnancyStatus, 1, 1, DecedentPregnancyStatus, DecedentPregnancyStatus, DecedentPregnancyStatus)
* insert BundleSectionSlice(DeathInvestigation, TobaccoUse,  0, 1, DecedentFather, DecedentFather, TobaccoUseContributedToDeath)
* insert BundleSectionSlice(DeathInvestigation, InjuryLocation,  0, 1, InjuryLocation, InjuryLocation, InjuryLocation)
* insert BundleSectionSlice(DeathInvestigation, Autopsy,  0, 1, AutopsyPerformedIndicator, AutopsyPerformedIndicator, AutopsyPerformedIndicator)
* insert BundleSectionSlice(DeathInvestigation, DeathLocation,  0, 1, DeathLocation, DeathLocation, DeathLocation)
* insert BundleSectionSlice(DeathInvestigation, DeathDate,  0, 1, DeathDate, DeathDate, DeathDate)
* insert BundleSectionSlice(DeathInvestigation, SurgeryDate,  0, 1, SurgeryDate, SurgeryDate, SurgeryDate)
* insert BundleSectionSlice(DeathInvestigation, TransportationRole,  0, 1, DecedentTransportationRole, DecedentTransportationRole, DecedentTransportationRole)
//
* insert BundleSectionSlice(DeathCertification, Certifier,  0, 1, Certifier, Certifier, Certifier)
* insert BundleSectionSlice(DeathCertification, DeathCertification,  0, 1, DeathCertification, DeathCertification, DeathCertification)
* insert BundleSectionSlice(DeathCertification, MannerOfDeath,  0, 1, MannerOfDeath, MannerOfDeath, MannerOfDeath)
* insert BundleSectionSlice(DeathCertification, CauseOfDeathCondition,  0, 5, CauseOfDeathCondition, CauseOfDeathCondition, CauseOfDeathCondition)
* insert BundleSectionSlice(DeathCertification, ConditionContributingToDeath,  0, 1, ConditionContributingToDeath, ConditionContributingToDeath, ConditionContributingToDeath)
* insert BundleSectionSlice(DeathCertification, CauseOfDeathPathway,  0, 1, CauseOfDeathPathway, CauseOfDeathPathway, CauseOfDeathPathway)
//
* insert BundleSectionSlice(DecedentDisposition, DispositionLocation,  0, 1, DispositionLocation, DispositionLocation, DispositionLocation)
* insert BundleSectionSlice(DecedentDisposition, FuneralHome,  0, 1, FuneralHome, FuneralHome, FuneralHome)
* insert BundleSectionSlice(DecedentDisposition, DispositionMethod,  0, 1, DispositionMethod, DispositionMethod, DecedentDispositionMethod)

// // * section[DecedentDisposition].code = DocumentSectionCS#Disposition "Decedent Disposition"
// // * section[DecedentDisposition].entry ^slicing.discriminator.type = #profile
// // * section[DecedentDisposition].entry ^slicing.discriminator.path = "$this.resolve()"
// // * section[DecedentDisposition].entry ^slicing.rules = #open
// * section[DecedentDisposition].entry contains
//     DispositionLocation 0..* MS and
//     FuneralHome 0..1 MS and
// //    Mortician 0..1 MS and   ** Can be included using USCorePractitioner
//     DispositionMethod 0..1 MS
// //    and FuneralServiceLicensee 0..1 MS   ** Can be included using USCorePractitionerRole
// * section[DecedentDisposition].entry[DispositionLocation] only Reference(DispositionLocation)
// * section[DecedentDisposition].entry[FuneralHome] only Reference(FuneralHome)
// // * section[DecedentDisposition].entry[Mortician] only Reference(Mortician)
// * section[DecedentDisposition].entry[DispositionMethod] only Reference(DecedentDispositionMethod)
// // * section[DecedentDisposition].entry[FuneralServiceLicensee] only Reference(FuneralServiceLicensee)