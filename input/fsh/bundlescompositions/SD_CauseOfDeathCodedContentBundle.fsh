Profile: CauseOfDeathCodedContentBundle
Parent: Bundle
Id: vrdr-cause-of-death-coded-content-bundle
Title: "Cause of Death Coded Content Bundle"
Description: "Cause of Death Coded Content Bundle (Bundle): A bundle containing instances of the resources comprising cause of death coded content.  This bundle is information-content equivalent to the traditional NCHS TRX format."
* insert RequireMetaProfile(CauseOfDeathCodedContentBundle)
* identifier.value ^short = "Death Record Identifier (YYYYJJNNNNNN)"
* identifier.value ^definition = "A unique value used by the NCHS to identify a death record. The NCHS uniquely identifies death records by combining three concepts: the year of death (as a four digit number), the jurisdiction of death (as a two character jurisdiction identifier), and the death certificate number assigned by the jurisdiction (a number with up to six digits, left padded with zeros). "
* identifier.value ^maxLength = 12
* identifier 1..1
* identifier.extension contains
    CertificateNumberVitalRecords named certificateNumber 0..1 and
    AuxiliaryStateIdentifier1VitalRecords named auxiliaryStateIdentifier1 0..1 and
// There isn't really a good home for this extension, so we will tack it onto the identifier.
    StateSpecificField named stateSpecificField 0..1
* type 1..1
* type only code
* type = #collection (exactly)
* entry.resource 1..1 // each entry must have a resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the profile"
// Coded Content
* insert BundleSlice(  ActivityAtTimeOfDeath,  0, 1,  ActivityAtTimeOfDeath,  ActivityAtTimeOfDeath,  ActivityAtTimeOfDeath )
* insert BundleSlice(  AutomatedUnderlyingCauseOfDeath,  0, 1,  AutomatedUnderlyingCauseOfDeath,  AutomatedUnderlyingCauseOfDeath,  AutomatedUnderlyingCauseOfDeath)
* insert BundleSlice(  ManualUnderlyingCauseOfDeath,  0, 1,  ManualUnderlyingCauseOfDeath,  ManualUnderlyingCauseOfDeath,  ManualUnderlyingCauseOfDeath)
* insert BundleSlice(  EntityAxisCauseOfDeath,  0, 20,  EntityAxisCauseOfDeath,  EntityAxisCauseOfDeath,  EntityAxisCauseOfDeath)
* insert BundleSlice(  RecordAxisCauseOfDeath,  0, 20,  RecordAxisCauseOfDeath,  RecordAxisCauseOfDeath,  RecordAxisCauseOfDeath)
* insert BundleSlice(  PlaceOfInjury,  0, 1,  PlaceOfInjury,  PlaceOfInjury,  PlaceOfInjury)
* insert BundleSlice(  CodingStatusValues,  0, 1,  CodingStatusValues,  CodingStatusValues,  CodingStatusValues)
// Input Content
* insert BundleSlice(  CauseOfDeathPart1,  0, 4,  CauseOfDeathPart1,  CauseOfDeathPart1,  CauseOfDeathPart1)
//* insert BundleSlice(  CauseOfDeathPathway,  0, 1,  CauseOfDeathPathway,  CauseOfDeathPathway,  CauseOfDeathPathway)
* insert BundleSlice(  CauseOfDeathPart2,  0, 1,  CauseOfDeathPart2,  CauseOfDeathPart2,  CauseOfDeathPart2)
* insert BundleSlice(  MannerOfDeath,  0, 1,  MannerOfDeath,  MannerOfDeath,  MannerOfDeath)
* insert BundleSlice(  AutopsyPerformedIndicator,  0, 1,  AutopsyPerformedIndicator,  AutopsyPerformedIndicator,  AutopsyPerformedIndicator)
* insert BundleSlice(  DeathCertification,  0, 1,  DeathCertification,  DeathCertification,  DeathCertification)
* insert BundleSlice(  InjuryIncident,  0, 1,  InjuryIncident,  InjuryIncident,  InjuryIncident)
* insert BundleSlice(  TobaccoUseContributedToDeath,  0, 1,  TobaccoUseContributedToDeath,  TobaccoUseContributedToDeath,  TobaccoUseContributedToDeath)
* insert BundleSlice(  DecedentPregnancyStatus,  0, 1,  DecedentPregnancyStatus,  DecedentPregnancyStatus,  DecedentPregnancyStatus)
* insert BundleSlice(  SurgeryDate,  0, 1,  SurgeryDate,  SurgeryDate,  SurgeryDate)

