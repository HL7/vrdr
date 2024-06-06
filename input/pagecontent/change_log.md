### Post-May 2024-Ballot Changes
- [FHIR-45720](https://jira.hl7.org/browse/FHIR-45720) - Documentation changes to align [CauseOfDeathCodedContentBundle] with TRX

### VRDR STU3 Draft (for May 2024 Ballot)
The STU3 draft of VRDR incorporates both content changes, and refactoring as part of the harmonization of vital records and medicolegal death investigation IGs.
#### Content Changes
* Added a new [Mortician] profile in support of Funeral Home use cases.  Use of this profile is not required for submissions to NCHS.
* Support expression of state and jurisdiction for residence of decedent to support routing of records to jurisdiction [https://jira.hl7.org/browse/FHIR-42771]
* Eliminated the requirement to specify [DeathCertification].category since it served no real purpose and used a vague and now inactive SNOMEDCT Code (103693007 "Diagnostic procedure (procedure)"). Allowed continued use of the inactive code for the required [DeathCertificate].event.code for compatibility, but added a preferred code (307930005 "Death certificate (record artifact)").
* Documented the use of the Patient.identifier[SSN] slice for Decedent Social Security Number.  STU2.2 documented in narrative the use of the [SB] slice, but the examples used the [SSN] slice. 
* Changed the valueset for gender used by the [NVSSSexAtDeath] to use the same codesystem used by USCore and VRCL.  Added a maximum binding for backward compability with STU2.2, and provided Concept Maps for mapping the old valuesets ([AdministrativeGenderOldCM]) and new valuesets([AdministrativeGenderCM]) to IJE.

* Clarified description of [BirthRecordIdentifier] that it is only used for infant deaths.
* Added profiles supporting maternal death reporting requirements to link birth certificate ([BirthRecordIdentifierChild]) or fetal death report ([FetalDeathRecordIdentifier]) associated with maternal death, and added them as optional content in DeathCertificate composition. [FHIR-43626](https://jira.hl7.org/browse/FHIR-43626)
* Clarified that certificate numbers are 6 digit numbers with leading zeroes allowed.  They are (unfortunately) defined as FHIR strings.
* Restricted [ExtensionLocationJurisdictionIdVitalRecords] Extension to Address.state context.
* Added a new bundle for Coded Industry and Occupation: [IndustryOccupationCodedContentBundle] with an [example](Bundle-IndustryOccupationCodedContentBundle-Example1.html) [IndustryOccupationCodedContentBundle-Example1] to address [FHIR-42748](https://jira.hl7.org/browse/FHIR-42748)
* Modified composition examples to use ruleset for general cleanup and to address publisher errors related to fullurl based rules around matching relative references

#### Harmonization Changes
* For a detailed description of harmonization changes see [STU2.2 to STU3 Changes](content-transitions.html).
* All references to Decedent are not references to PatientVitalRecords that is defined in VRCL.  The latter is essentially a USCorePatient profile with optional extensions for vital records uses.   This allows reuse of VRDR profiles in MDI STU2. Decedent is now a profile of PatientVitalRecords.  
* MaritalStatus valueset and corresponding concept map were moved to VRCL for general utility. Decedent profile made to reference MaritalStatus VS in VRCL. [FHIR-43416](https://jira.hl7.org/browse/FHIR-43416)
* [DeathLocation], [InjuryLocation], and [DispositionLocation] were updated to depend on the abstract [LocationVitalRecords](https://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-Location-vr.html) profile in VRCL. 
* Edit flag valueset harmonization: Deleted BypassEditFlagCS and referenced [VRCL Edit Flags Codesystem](https://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-vr-edit-flags) instead
* Record identifiers harmonization: Removed AuxiliaryStateIdentifier1, AuxiliaryStateIdentifier2, and CertificateNumber from VRDR and referenced extensions in VRCL
* Removed LocationJurisdictionID as it exists in [VRCL](https://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-Extension-jurisdiction-id-vr.html) and is only used for the abstract [PatientVitalRecords](https://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-Patient-vr.html) and [LocationVitalRecords](https://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-Location-vr.html) profiles in VRCL. 
* [DateDay], [DateMonth], [DateYear], and [DateTime] had been used by [PartialDateTime], which has been moved to VRCL and no longer uses these extensions
* To keep general demographic and non-death-specific information in VRCL, [CodedRaceAndEthnicity], [InputRaceAndEthnicity], [DecedentUsualWork] and [EmergingIssues] moved to VRCL
* NA code added to [DeathPregnancyStatusVS] 
* Made Certifier derive from [PractitionerVitalRecords](https://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-Practitioner-vr.html) and added extension [PractitionerRole] that can be used to distinguish certifier and mortician from other practitioner types in the bundle 
* Removed local codes meant from VRCL from [ObservationsCS]

### Changes in Previous Versions
For changes in previous versions, please see the appropriate version.

{% include markdown-link-references.md %}