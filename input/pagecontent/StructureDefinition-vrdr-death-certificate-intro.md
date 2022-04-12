### Usage
The Death Certificate profile is a composition (bundle) comprising the core content of a death registration.

Additional content can be included (in what section?) in the Death Certificate based on standard resources and profiles.
Further profiling of Practitioner and PractitionerRole may be called for in the future.   At present, standard USCore profiles can be used, and these are not cited in this Implementation Guide.
For example:
* Funeral Home Licensee (USCorePractitionerRole)
* Mortician (USCorePractitioner)
* Funeral Home Director (USCorePractitionerRole)
* Death Pronouncement Performer (USCorePractitioner)

The content is broken down into the following sections:
* Decedent Demographics
    * [BirthRecordIdentifier]
    * [Decedent]
    * [DecedentAge]
    * [DecedentEducationLevel]
    * [DecedentFather]
    * [DecedentMilitaryService]
    * [Parameters2022]
    * [DecedentMother]
    * [DecedentSpouse]
    * [DecedentUsualWork]
* Death Investigation
    * [AutopsyPerformedIndicator]
    * [DeathDate]
    * [DeathLocation]
    * [DecedentPregnancyStatus]
    * [DecedentTransportationRole]
    * [ExaminerContacted]
    * [InjuryIncident]
    * [InjuryLocation]
    * [SurgeryDate]
    * [TobaccoUseContributedToDeath]
* Death Certification
    * [Certifier]
    * [DeathCertification]
    * [CauseOfDeathPart1]
    * [CauseOfDeathPathway]
    * [CauseOfDeathPart2]
    * [MannerOfDeath]
* Decedent Disposition
    * [DecedentDispositionMethod]
    * [DispositionLocation]
    * [FuneralHome]
* Coded Content
    * [ActivityAtTimeOfDeath]
    * [AutomatedUnderlyingCauseOfDeath]
    * [ManualUnderlyingCauseOfDeath]
    * [CodedRaceAndEthnicity]
    * [EntityAxisCauseOfDeath]
    * [RecordAxisCauseOfDeath]
    * [PlaceOfInjury]
    * [CodingStatusValues]

The profile includes:

| **#** |  **Description**   |  **IJE Name**   | IJE only |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | ------------- | ------------ | :----------: |---------- | -------- | -------- |
| 6 | Source flag: paper/electronic | MFILED| |extension[ filingFormat]  | codeable |  [FilingFormatVS] | 
| 96 | Date of Registration--Year | DOR_YR| |date | dateTime | y | 
| 97 | Date of Registration--Month | DOR_MO| |date | dateTime | y | 
| 98 | Date of Registration--Day | DOR_DY| |date | dateTime | y | 
| 122 | State Specific Data  | STATESP| |extension[ stateSpecificField] | string(30) | y | 
{: .grid }
{% include markdown-link-references.md %}
