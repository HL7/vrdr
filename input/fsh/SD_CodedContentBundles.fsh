Profile: CauseOfDeathCodedContentBundle
Parent: Bundle
Id: vrdr-cause-of-death-coded-content-bundle
Title: "Cause of Death Coded Content Bundle (Bundle)"
Description: "A bundle containing instances of the resources comprising cause of death coded content.

This bundle is information-content equivalent to the traditional NCHS TRX format.

This bundle contains:
* Coded Content:
  * Activity at Time of Death [ActivityAtTimeOfDeath]
  * Underlying Cause of Death -- [AutomatedUnderlyingCauseOfDeath] and [ManualUnderlyingCauseOfDeath]
  * Entity Axis Cause of Death [EntityAxisCauseOfDeath]
  * Record Axis Cause of Death [RecordAxisCauseOfDeath]
  * Place of Injury [PlaceOfInjury]
  * Coding Status Values [CodingStatusValues] - various flags that are part of the TRX format
* Input Content:
  * Cause of Death Part 1 - [CauseOfDeathPart1] and [CauseOfDeathPathway]
  * Cause of Death Part 2 - [CauseOfDeathPart2]
  * Manner of Death - [MannerOfDeath]
  * Autopsy Performed Indicator - [AutopsyPerformedIndicator]
  * Death Certification - [DeathCertification]
  * Injury Incident - [InjuryIncident]
  * Tobacco Use Contributed to Death - [TobaccoUseContributedToDeath]
  * Decedent Pregnancy Status - [DecedentPregnancyStatus]
  * Surgery Date - [SurgeryDate]
"
* insert RequireMetaProfile(CauseOfDeathCodedContentBundle)
* identifier ^short = "Death Certificate Number"
* identifier ^definition = "A unique value used by the NCHS to identify a death record. The NCHS uniquely identifies death records by combining three concepts: the year of death (as a four digit number), the jurisdiction of death (as a two character jurisdiction identifier), and the death certificate number assigned by the jurisdiction (a number with up to six digits, left padded with zeros)."
* identifier.value ^maxLength = 6
* identifier.extension contains
    AuxiliaryStateIdentifier1 named auxiliaryStateIdentifier1 0..1 and
    AuxiliaryStateIdentifier2 named auxiliaryStateIdentifier2 0..1
* type 1..1
* type only code
* type = #collection (exactly)
* entry.resource 1..1 MS // each entry must have a resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the profile"
// Coded Content
* insert BundleSlice(  ActivityAtTimeOfDeath,  0, 1,  ActivityAtTimeOfDeath,  ActivityAtTimeOfDeath,  ActivityAtTimeOfDeath)
* insert BundleSlice(  AutomatedUnderlyingCauseOfDeath,  0, 1,  AutomatedUnderlyingCauseOfDeath,  AutomatedUnderlyingCauseOfDeath,  AutomatedUnderlyingCauseOfDeath)
* insert BundleSlice(  ManualUnderlyingCauseOfDeath,  0, 1,  ManualUnderlyingCauseOfDeath,  ManualUnderlyingCauseOfDeath,  ManualUnderlyingCauseOfDeath)
* insert BundleSlice(  EntityAxisCauseOfDeath,  0, 20,  EntityAxisCauseOfDeath,  EntityAxisCauseOfDeath,  EntityAxisCauseOfDeath)
* insert BundleSlice(  RecordAxisCauseOfDeath,  0, 20,  RecordAxisCauseOfDeath,  RecordAxisCauseOfDeath,  RecordAxisCauseOfDeath)
* insert BundleSlice(  PlaceOfInjury,  0, 1,  PlaceOfInjury,  PlaceOfInjury,  PlaceOfInjury)
* insert BundleSlice(  CodingStatusValues,  0, 1,  CodingStatusValues,  CodingStatusValues,  CodingStatusValues)
// Input Content
* insert BundleSlice(  CauseOfDeathPart1,  0, 4,  CauseOfDeathPart1,  CauseOfDeathPart1,  CauseOfDeathPart1)
* insert BundleSlice(  CauseOfDeathPathway,  0, 1,  CauseOfDeathPathway,  CauseOfDeathPathway,  CauseOfDeathPathway)
* insert BundleSlice(  CauseOfDeathPart2,  0, 1,  CauseOfDeathPart2,  CauseOfDeathPart2,  CauseOfDeathPart2)
* insert BundleSlice(  MannerOfDeath,  0, 1,  MannerOfDeath,  MannerOfDeath,  MannerOfDeath)
* insert BundleSlice(  AutopsyPerformedIndicator,  0, 1,  AutopsyPerformedIndicator,  AutopsyPerformedIndicator,  AutopsyPerformedIndicator)
* insert BundleSlice(  DeathCertification,  0, 1,  DeathCertification,  DeathCertification,  DeathCertification)
* insert BundleSlice(  InjuryIncident,  0, 1,  InjuryIncident,  InjuryIncident,  InjuryIncident)
* insert BundleSlice(  TobaccoUseContributedToDeath,  0, 1,  TobaccoUseContributedToDeath,  TobaccoUseContributedToDeath,  TobaccoUseContributedToDeath)
* insert BundleSlice(  DecedentPregnancyStatus,  0, 1,  DecedentPregnancyStatus,  DecedentPregnancyStatus,  DecedentPregnancyStatus)
* insert BundleSlice(  SurgeryDate,  0, 1,  SurgeryDate,  SurgeryDate,  SurgeryDate)


Profile: DemographicCodedContentBundle
Parent: Bundle
Id: vrdr-demographic-coded-content-bundle
Title: "Demographic Coded Content Bundle (Bundle)"
Description: "A bundle containing instances of the resources comprising demographic (race and ethnicity) coded content.

This bundle is information-content equivalent to the traditional NCHS MRE format.

This bundle contains:
* Coded Content:
  * Coded Race and Ethnicity [CodedRaceAndEthnicity]
* Input Content:
  * Input Race and Ethnicity [InputRaceAndEthnicity]
  "
* insert RequireMetaProfile(CodedContentDocument)
* identifier ^short = "Death Certificate Number"
* identifier ^definition = "A unique value used by the NCHS to identify a death record. The NCHS uniquely identifies death records by combining three concepts: the year of death (as a four digit number), the jurisdiction of death (as a two character jurisdiction identifier), and the death certificate number assigned by the jurisdiction (a number with up to six digits, left padded with zeros)."
* identifier.value ^maxLength = 6
* identifier.extension contains
    AuxiliaryStateIdentifier1 named auxiliaryStateIdentifier1 0..1 and
    AuxiliaryStateIdentifier2 named auxiliaryStateIdentifier2 0..1
* type 1..1
* type only code
* type = #collection (exactly)
* entry.resource 1..1 MS // each entry must have a resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the profile"
* insert BundleSlice(  CodedRaceAndEthnicity,  0, 1,  CodedRaceAndEthnicity,  CodedRaceAndEthnicity,  CodedRaceAndEthnicity)
* insert BundleSlice(  InputRaceAndEthnicity,  0, 1,  InputRaceAndEthnicity,  InputRaceAndEthnicity,  InputRaceAndEthnicity)
