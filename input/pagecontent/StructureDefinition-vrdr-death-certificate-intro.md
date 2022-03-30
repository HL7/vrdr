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

                         The profile includes:

| **#** |  **Description**   |  **IJE Name**   |  **Field**  |  **Type**  | **Value Set**  |
| ---------| ------------- | ------------ | -------------- | -------- | -------- |
{: .grid }
{% include markdown-link-references.md %}
