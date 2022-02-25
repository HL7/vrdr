### Usage

The Death Certificate profile is a composition (bundle) comprising the core content of a death registration.

The profile includes:

| **Name** |  **Field**   |  **Encoding**  |  **IJE Field Name(s)**  |
| ---------------| ------------------------ | ------------- | ------------------- |
| Date of Registration | date  | dateTime | DOR_YR, DOR_MO, DOR_DY |
| Source flag: paper/electronic | extension[ filingFormat]  | [FilingFormatVS]] | MFILED **not supported by library**  |
| State Specific Field | extension[ stateSpecificField]  | string | STATESP **not yet supported by library**  |
{: .grid }

Additional content can be included (in what section?) in the Death Certificate based on standard resources and profiles.
Further profiling of Practitioner and PractitionerRole may be called for in the future.   At present, standard USCore profiles can be used, and these are not cited in this Implementation Guide.
For example:
* Funeral Home Licensee (USCorePractitionerRole)
* Mortician (USCorePractitioner)
* Funeral Home Director (USCorePractitionerRole)
* Death Pronouncement Performer (USCorePractitioner)

The content is broken down into the following sections:
* Decedent Demographics
    * [DecedentFather]
    * [DecedentMother]
    * [DecedentSpouse]
    * [DecedentAge]
    * [BirthRecordIdentifier]
    * [DecedentEducationLevel]
    * [DecedentMilitaryService]
    * [DecedentUsualWork]
    * [Parameters2022]
* Death Investigation
    * [ExaminerContacted]
    * [DecedentPregnancyStatus]
    * [TobaccoUseContributedToDeath]
    * [InjuryLocation]
    * [AutopsyPerformedIndicator]
    * [DeathLocation]
    * [DeathPronouncementPerformer]
    * [InjuryIncident]
    * [DeathDate]
    * [DecedentTransportationRole]
* Death Certification
    * [MannerOfDeath]
    * [CauseOfDeathCondition]
    * [ConditionContributingToDeath]
    * [CauseOfDeathPathway]
* Decedent Disposition
    * [DispositionLocation]
    * [FuneralHome]
    * [Mortician]
    * [DecedentDispositionMethod]
    * [FuneralServiceLicensee]



{: .grid }



{% include markdown-link-references.md %}
