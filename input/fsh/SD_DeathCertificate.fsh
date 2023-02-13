RuleSet: CompositionSectionEntrySlicing(section)
* section contains {section} 0..1
* section[{section}].code = DocumentSectionCS#{section}
* section[{section}] ^label = "{section}"
* section[{section}] ^short = "{section}"
* section[{section}].entry ^slicing.discriminator.type = #profile
* section[{section}].entry ^slicing.discriminator.path = "$this.resolve()"
* section[{section}].entry ^slicing.rules = #open



RuleSet: BundleSectionSlice(section, name, min, max, short, def, class)
* section[{section}].entry contains {name} {min}..{max}
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
* type = $loinc#64297-5 // "Death certificate"
* extension contains
    FilingFormat named filingFormat 0..1 and
    ReplaceStatus named replaceStatus 0..1 and
    StateSpecificField named stateSpecificField 0..1
* extension[FilingFormat] ^short = "Filing Format"
* extension[ReplaceStatus] ^short = "Replace Status (deprecated)"
* extension[StateSpecificField] ^short = "State Specific Field"
* subject 1..1
* subject only Reference(Decedent)
// * date 1..1
* date ^short = "Date of Registration"
//* attester 1..1
* attester only BackboneElement
* attester.mode 1..1
* attester.mode only code
* attester.mode = #legal (exactly)
// * attester.time 1..1
// * attester.time ^short = "Death Certification time."
* attester.party only Reference(Certifier)
* attester.party ^short = "Certifier."
* event 1..1
* event only BackboneElement
* event.code 1..1
* event.code only CodeableConcept
* event.code = $sct#103693007 // "Diagnostic procedure (procedure)"
* event.detail 1..1
* event.detail only Reference(DeathCertification)
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section.code 1..1
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
* insert CompositionSectionEntrySlicing(CodedContent)
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
* insert BundleSectionSlice(DecedentDemographics, EmergingIssues,  0, 1, EmergingIssues, EmergingIssues, EmergingIssues)
* insert BundleSectionSlice(DecedentDemographics, InputRaceAndEthnicity,  0, 1, InputRaceAndEthnicity, InputRaceAndEthnicity, InputRaceAndEthnicity)
//
* insert BundleSectionSlice(DeathInvestigation, ExaminerContacted, 0, 1, ExaminerContacted, ExaminerContacted, ExaminerContacted)
* insert BundleSectionSlice(DeathInvestigation, PregnancyStatus, 0, 1, DecedentPregnancyStatus, DecedentPregnancyStatus, DecedentPregnancyStatus)
* insert BundleSectionSlice(DeathInvestigation, TobaccoUse,  0, 1, TobaccoUse, TobaccoUse, TobaccoUseContributedToDeath)
// * insert BundleSectionSlice(DeathInvestigation, DeathOrInjuryLocation,  0, 2, Death or Injury  Location, Death or Injury Location, Location)
* insert BundleSectionSlice(DeathInvestigation, DeathLocation,  0, 1, Death Location, Death Location, DeathLocation)
* insert BundleSectionSlice(DeathInvestigation, InjuryLocation,  0, 1, Injury  Location, Injury Location, InjuryLocation)
* insert BundleSectionSlice(DeathInvestigation, PlaceOfInjury,  0, 1, PlaceOfInjury, PlaceOfInjury, PlaceOfInjury)
* insert BundleSectionSlice(DeathInvestigation, InjuryIncident,  0, 1, InjuryIncident, InjuryIncident, InjuryIncident)
* insert BundleSectionSlice(DeathInvestigation, Autopsy,  0, 1, AutopsyPerformedIndicator, AutopsyPerformedIndicator, AutopsyPerformedIndicator)
//* insert BundleSectionSlice(DeathInvestigation, DeathLocation,  0, 1, DeathLocation, DeathLocation, DeathLocation)
* insert BundleSectionSlice(DeathInvestigation, DeathDate,  0, 1, DeathDate, DeathDate, DeathDate)
* insert BundleSectionSlice(DeathInvestigation, SurgeryDate,  0, 1, SurgeryDate, SurgeryDate, SurgeryDate)
//
* insert BundleSectionSlice(DeathCertification, Certifier,  0, 1, Certifier, Certifier, Certifier)
* insert BundleSectionSlice(DeathCertification, DeathCertification,  0, 1, DeathCertification, DeathCertification, DeathCertification)
* insert BundleSectionSlice(DeathCertification, MannerOfDeath,  0, 1, MannerOfDeath, MannerOfDeath, MannerOfDeath)
* insert BundleSectionSlice(DeathCertification, CauseOfDeathPart1,  0, 4, CauseOfDeathPart1, CauseOfDeathPart1, CauseOfDeathPart1)
* insert BundleSectionSlice(DeathCertification, CauseOfDeathPart2,  0, 1, CauseOfDeathPart2, CauseOfDeathPart2, CauseOfDeathPart2)
// * insert BundleSectionSlice(DeathCertification, CauseOfDeathPathway,  0, 1, CauseOfDeathPathway, CauseOfDeathPathway, CauseOfDeathPathway)
//
* insert BundleSectionSlice(DecedentDisposition, DispositionLocation,  0, 1, DispositionLocation, DispositionLocation, DispositionLocation)
* insert BundleSectionSlice(DecedentDisposition, FuneralHome,  0, 1, FuneralHome, FuneralHome, FuneralHome)
* insert BundleSectionSlice(DecedentDisposition, DispositionMethod,  0, 1, DispositionMethod, DispositionMethod, DecedentDispositionMethod)
* insert BundleSectionSlice(DecedentDisposition, Mortician,  0, 1, Mortician, Mortician, USCorePractitioner)
//
* insert BundleSectionSlice(CodedContent, ActivityAtTimeOfDeath,  0, 1,  ActivityAtTimeOfDeath,  ActivityAtTimeOfDeath,  ActivityAtTimeOfDeath)
* insert BundleSectionSlice(CodedContent, AutomatedUnderlyingCauseOfDeath,  0, 1,  AutomatedUnderlyingCauseOfDeath,  AutomatedUnderlyingCauseOfDeath,  AutomatedUnderlyingCauseOfDeath)
* insert BundleSectionSlice(CodedContent, ManualUnderlyingCauseOfDeath,  0, 1,  ManualUnderlyingCauseOfDeath,  ManualUnderlyingCauseOfDeath,  ManualUnderlyingCauseOfDeath)
* insert BundleSectionSlice(CodedContent, CodedRaceAndEthnicity,  0, 1,  CodedRaceAndEthnicity,  CodedRaceAndEthnicity,  CodedRaceAndEthnicity)
* insert BundleSectionSlice(CodedContent, EntityAxisCauseOfDeath,  0, 20,  EntityAxisCauseOfDeath,  EntityAxisCauseOfDeath,  EntityAxisCauseOfDeath)
* insert BundleSectionSlice(CodedContent, RecordAxisCauseOfDeath,  0, 20,  RecordAxisCauseOfDeath,  RecordAxisCauseOfDeath,  RecordAxisCauseOfDeath)
* insert BundleSectionSlice(CodedContent, PlaceOfInjury,  0, 1,  PlaceOfInjury,  PlaceOfInjury,  PlaceOfInjury)
* insert BundleSectionSlice(CodedContent, CodingStatusValues,  0, 1,  CodingStatusValues,  CodingStatusValues,  CodingStatusValues)
// // * section[DecedentDisposition].code = DocumentSectionCS#Disposition "Decedent Disposition"
// // * section[DecedentDisposition].entry ^slicing.discriminator.type = #profile
// // * section[DecedentDisposition].entry ^slicing.discriminator.path = "$this.resolve()"
// // * section[DecedentDisposition].entry ^slicing.rules = #open
// * section[DecedentDisposition].entry contains
//     DispositionLocation 0..* and
//     FuneralHome 0..1 and
// //    Mortician 0..1 and   ** Can be included using USCorePractitioner
//     DispositionMethod 0..1
// //    and FuneralServiceLicensee 0..1   ** Can be included using USCorePractitionerRole
// * section[DecedentDisposition].entry[DispositionLocation] only Reference(DispositionLocation)
// * section[DecedentDisposition].entry[FuneralHome] only Reference(FuneralHome)
// // * section[DecedentDisposition].entry[Mortician] only Reference(Mortician)
// * section[DecedentDisposition].entry[DispositionMethod] only Reference(DecedentDispositionMethod)
// // * section[DecedentDisposition].entry[FuneralServiceLicensee] only Reference(FuneralServiceLicensee)