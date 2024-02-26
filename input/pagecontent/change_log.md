### VRDR STU3 Draft (for May 2024 Ballot)
The STU3 draft of VRDR incorporates both content changes, and refactoring as part of the harmonization of vital records and medicolegal death investigation IGs.
#### Content Changes
* Changed the valueset for gender used by the [NVSSSexAtDeath] to use the same codesystem used by USCore and VRCL.  Added a maximum binding for backward compability with STU2.2, and provided Concept Maps for mapping the [old valuesets]([AdministrativeGenderOldCM]) and [new valuesets]([AdministrativeGenderCM]) to IJE.
* Clarified description of [BirthRecordIdentifier] that it is only used for infant deaths.
* Added profiles supporting maternal death reporting requirements to link birth certificate ([BirthRecordIdentifierChild]) or fetal death report ([FetalDeathRecordIdentifier]) associated with maternal death, and added them as optional content in DeathCertificate composition. [FHIR-43626](https://jira.hl7.org/browse/FHIR-43626)
* Clarified that certificate numbers are 6 digit numbers with leading zeroes allowed.  They are (unfortunately) defined as FHIR strings.
* Restricted [ExtensionLocationJurisdictionIdVitalRecords] Extension to Address.state context.
* Added a new bundle for [Coded Industry and Occupation][IndustryOccupationCodedContentBundle] with [example][IndustryOccupationCodedContentBundle-Example1] to address [FHIR-42748](https://jira.hl7.org/browse/FHIR-42748)
* Modified composition examples to use ruleset for general cleanup and to address publisher errors related to fullurl based rules around matching relative references

#### Harmonization Changes
* For a detailed description of harmonization changes see [STU2.2 to STU3 Changes](content-transitions.html).
* All references to Decedent are not references to PatientVitalRecords that is defined in VRCL.  The latter is essentially a USCorePatient profile with optional extensions for vital records uses.   This allows reuse of VRDR profiles in MDI STU2. Decedent is now a profile of PatientVitalRecords.  
* MaritalStatus valueset and corresponding concept map were moved to VRCL for general utility. Decedent profile made to reference MaritalStatus VS in VRCL. [FHIR-43416](https://jira.hl7.org/browse/FHIR-43416)
* [DeathLocation], [InjuryLocation], and [DispositionLocation] were updated to depend on the abstract [LocationVitalRecords](https://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-Location-vr.html) profile in VRCL. 
* Edit flag valueset harmonization: Deleted BypassEditFlagCS and referenced [VRCL Edit Flags Codesystem](http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-vr-edit-flags) instead
* Record identifiers harmonization: Removed AuxiliaryStateIdentifier1, AuxiliaryStateIdentifier2, and CertificateNumber from VRDR and referenced extensions in VRCL
* Removed LocationJurisdictionID as it exists in [VRCL](http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-Extension-jurisdiction-id-vr.html) and is only used for the abstract [PatientVitalRecords](https://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-Patient-vr.html) and [LocationVitalRecords](https://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-Location-vr.html) profiles in VRCL. 
* [DateDay], [DateMonth], [DateYear], and [DateTime] had been used by [PartialDateTime], which has been moved to VRCL and no longer uses these extensions
* To keep general demographic and non-death-specific information in VRCL, [CodedRaceAndEthnicity], [InputRaceAndEthnicity], [DecedentUsualWork] and [EmergingIssues] moved to VRCL
* NA code added to [DeathPregnancyStatusVS] 
* Made Certifier derive from [PractitionerVitalRecords](https://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-Practitioner-vr.html) and added extension [PractitionerRoleDeathCertifier] that can be used to distinguish certifier from other practitioner types in the bundle 
* Removed local codes meant fro VRCL from [ObservationsCS]

### VRDR STU2.2 (September 2023)
* __Typos__:  Fixed some typos and extra, missing commas
* __Links__:  Fixed some broken links in the narrative
* __Concept Maps__:  Added notes to all of the [ConceptMaps](artifacts.html#terminology-concept-maps) supporting mapping from legacy TRX, MRE and IJE terminology to the valuesets defined in this IG indicating that 'TRX', 'MRE' and 'IJE' are not proper URIs, and that proper URIs will be incorporated into future versions.
* __Concept Map__ [UnitsOfAgeCM] : Corrected an error in the codesystem for the code UNK, changing it from UCUM to NullFlavor.
* __Clarifying__ [PartialDate] __and__ [PartialDateTime]: Additional clarification on the use of these extensions has been has been added to the [usage](usage.html#partial-dates-and-times) page.
* __[Decedent]__ Decedent's last name (LNAME) is required by NCHS, and is expected to be 'UNKNOWN' if missing.   Documented that not providing Decedent.name.fname is equivalent to LNAME='UNKNOWN'.  Clarified with a [note](usage.html#decedent-name) that, based on USCore requirements, conformance to the profile requires that the last, middle, or first name be present, or have a data absent extension. Corrected the types for coded City (CITYC) and County (COUNTYC) of residence in the data dictionary from string to integer.  Changes are visible in [Death Record data dictionary](DeathRecordDataDictionary.html), [Mortality Roster data dictionary](MortalityRosterDataDictionary.html) and [Decedent].    [FHIR-41611](https://jira.hl7.org/browse/FHIR-41611) [FHIR-41679](https://jira.hl7.org/browse/FHIR-41679)
* __[Decedent], [DeathLocation], and [InjuryLocation]:__ The data dictionary description of content now correctly refers to the coded county value using the districtCode extension.  Previously it referenced countyCode.   The profiles were correct.  Only the data dictionary document required correction.
* __[Decedent]__ Gender is *not* required by NCHS, but is required for USCore conformance.   Added Gender to the [Death Record data dictionary](DeathRecordDataDictionary.html), [Mortality Roster data dictionary](MortalityRosterDataDictionary.html)  and [Decedent], with an accompanying usage [note](https://build.fhir.org/ig/HL7/vrdr/branches/STU2.2-preview1/usage.html#decedent-gender). [FHIR-41679](https://jira.hl7.org/browse/FHIR-41679)
* __Extension Contexts__: Due to changes in publication requirements and conformance to best practices, the context of several extensions has been restricted ([BypassEditFlag](http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-BypassEditFlag.html), [DateDay], [DateMonth], [DateYear], [FilingFormat], [ExtensionLocationJurisdictionIdVitalRecords], [PartialDate], [PartialDateTime], [ReplaceStatus](StructureDefinition-ReplaceStatus.html), [StateSpecificField], [NVSSSexAtDeath], and [SpouseAlive]).  This should have no impact on implementers. [FHIR-41612](https://jira.hl7.org/browse/FHIR-41612)
* __[InputRaceAndEthnicity]__
  * Aligned documentation of race literal fields with profile's actual content(e.g., OtherRaceLiteral1 --> FirstOtherRaceLiteral , FirstOtherPacificIslandLiteral --> FirstOtherPacificIslanderLiteral, SecondOtherPacificIslandLiteral --> SecondOtherPacificIslanderLiteral).  The profile content was correct. This was only a change to the documentation in the [data dictionary](DeathRecordDataDictionary.html) and the narrative [introduction to the profile](http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-input-race-and-ethnicity.html#usage).  [FHIR-41611](https://jira.hl7.org/browse/FHIR-41611)
* __Leading Zeroes__: Deleted 'leading zeroes' from description of [Certificate Number](http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-CertificateNumber.html) and [State Auxiliary Number 1](http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-AuxiliaryStateIdentifier1.html) and [State Auxiliary Number 2](http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-AuxiliaryStateIdentifier2.html) [FHIR-41611](https://jira.hl7.org/browse/FHIR-41611)
* __[DeathDate].component[datetimePronouncedDead]__  [FHIR-40898](https://jira.hl7.org/browse/FHIR-40898)
  * In STU2.1, we added a PartialDateTime extension which proved inappropriate.
  * This value was constrained to a dateTime, and is now constrained to a dateTime or a time. This addresses the problem in STU2 that a death time without a death date was awkward to specify.  This is possible in IJE, but a FHIR dateTime must include the date component.   A [DeathDate example](Observation-DeathDate-Example4.html) has been added to illustrate use of a time-only DeathDate.

### VRDR STU 2.1 (March 2023)
* __Terminology:__ [FHIR-3946](https://jira.hl7.org/browse/FHIR-3946)
  * Pregnancy Status:  Added missing code for 'Not reported on certificate'.
  * Race and Ethnicity: Added some missing codes
  * Certifier Types: Corrected display strings to align with SNOMEDCT
  * Concept Maps:  Updated to reflect added codes
* __Profiles:__
  * Emerging Issues:  Fixed length of fields of length > 1
  * Death Certificate:  Documented deprecation of the use of REPLACE within a death record submission.
  * Added a PartialDateTime on DeathDate.DeathDate.component[datetimePronouncedDead].valueDateTime to support specification of PPTIME without PPDATESIGNED, or a partial PPDATESIGNED.
* __References in Narrative:__
  * Fixed references to MRE definition documents.
* __Examples:__
  * Added additional examples
  * Fixed display strings in examples
  * Updated fshnotes on examples

### VRDR STU 2 Publication Version (August 31, 2022)
#### General Changes
* __Scope:__ The VRDR IG now supports standards-based interoperable exchange of death record information that is information-content equivalent with the legacy IJE, MRE, TRX, and Mortality Roster formats.   The mapping of legacy IJE fields to the FHIR profiles is clearly documented.   Profiles that did not support any data fields used for submission of death records to NCHS or for inter-jurisdictional exchange were eliminated.
* __Documentation:__ A [death record data dictionary](DeathRecordDataDictionary.html) that maps IJE fields has been added, and each profile includes the data dictionary elements that the profile supports. A separate [mortality roster data dictionary](MortalityRosterDataDictionary.html) is also included.
* __Use Case Documentation:__ Documentation is provided for the [four use cases](background.html#use-cases) the VRDR is intended to support, and how the IG's profiles are used in support of each use case.
* __Inclusion of FHIR Profiles for Coded Content:__ Eight [new profiles](artifacts.html#e-coded-observations), seven of which are Observations, have been added to support interoperable exchange of the decedent's coded race, ethnicity and cause of death.
* __Race and Ethnicity:__ The Race and Ethnicity submitted as part of death registration are now represented accurately with respect to the NCHS process.  Separate profiles are provided for submission of [sending race and ethnicity to NCHS](http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-input-race-and-ethnicity.html), and to represent [coded race and ethnicity](http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-coded-race-and-ethnicity.html).
* __Additional Bundles:__ In addition to the [DeathCertificateDocument](StructureDefinition-vrdr-death-certificate-document.html) new bundles have been defined for exchange of [coded demographic](StructureDefinition-vrdr-demographic-coded-bundle.html),  [cause of death](StructureDefinition-vrdr-cause-of-death-coded-bundle.html), and [mortality roster](StructureDefinition-vrdr-mortality-roster-bundle.html) information.  The new bundles are information content equivalent to their legacy counterparts.  All four bundles use the same set of identifiers.
* __Examples:__ [Examples](artifacts.html#example-example-instances) are included for all profiles and extensions.
* __Consistent Naming and Identifiers:__ The names and identifiers have been changed to achieve consistency.
* __USCore:__ Now depends on USCore 5.0.1, and the included USCoreRelatedPersonProfile.   RelatedPerson.active = true.

#### Terminology Changes
* __Standard Terminologies:__  An attempt has been made to use standard terminologies and code systems (e.g., SNOMED-CT, LOINC, HL7) wherever possible.
* __Non-Standard Terminologies:__ Non-standard terminologies are represented within the IG, rather than by reference to PHINVADs.
* __ValueSets:__ All valuesets are included within the IG, rather than by reference to PHINVADs.   [Concept maps](artifacts.html#terminology-concept-maps) are provided to enable client software to map from legacy codes to the codes used in the IG's valuesets.
* __States, Territories, Jurisdictions, Provinces and Countries:__ All of these geographic entities are represented consistently throughout the IG using 2-letter postal abbreviations.

#### Notable Changes to Profiles
* __Part1 and Part2 Causes of Death:__ The [Part1](StructureDefinition-vrdr-cause-of-death-part1.html) and [Part2](StructureDefinition-vrdr-cause-of-death-part1.html) Cause of Death profiles are now profiles of Observation, rather than Condition.  The association of the Part1 causes of death with line numbers is now explicit as part of the profile, rather than implicit based on order in a list.
* __Deleted Profiles:__ Profiles for Death Pronouncement Perfomer, Cause of Death Pathway, Death Certificate Reference, Mortician, Funeral Home Licensee, and Transportation Role have been deleted.
* __Location Profiles and References:__ The three location profiles ([Death](StructureDefinition-vrdr-death-location.html), [Disposition](StructureDefinition-vrdr-disposition-location.html), [Injury](StructureDefinition-vrdr-injury-location.html)) are now clearly distinguished by their type field.  The extensions that were previously used to link from other profiles to these locations were no longer needed and have been deleted.  The Location profiles include some detailed address components as extensions.
* __Injury Incident:__ This profile now incorporates the tranportation role as a component, eliminating the separate Transportation Role Observation profile.
* __Certifier:__ The [Certifier](StructureDefinition-vrdr-certifier.html) profile now incorporates extensions for detailed components of the Certifier's address.
* __Death Date:__ The [Death Date](StructureDefinition-vrdr-death-date.html) now incorporates the characterization of the place of death as a component.  Previously this mapped to the type field of the Death Location, which was inapprorpiate.
* __Decedent:__ The [Decedent](StructureDefinition-vrdr-decedent.html) profile now incorporates extensions to represent the birth jurisdiction, sex at time of death, and detailed components of residence address.  The race and ethnicity needs of death registration are now met by a separate profile since the USCore-provided fields lack the granularity needed.
* __Death Certificate Document:__ The [DeathCertificateDocument](StructureDefinition-vrdr-death-certificate-document.html) Composition profile has defined sections for the different types of information included in the death certificate.

{% include markdown-link-references.md %}