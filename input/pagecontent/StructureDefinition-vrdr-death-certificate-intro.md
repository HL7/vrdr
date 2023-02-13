### Usage
The Death Certificate profile is a composition (bundle) comprising the core content of a death registration.

Notes:
* THe DeathCertificate is the first entry in the DeathCertificateDocument, and includes references to other entries in that Bundle.

Additional content can be included in the Death Certificate Document and referenced in the Death Certificate  based on standard resources and profiles.
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
    * [EmergingIssues]
    * [DecedentMother]
    * [DecedentSpouse]
    * [DecedentUsualWork]
* Death Investigation
    * [AutopsyPerformedIndicator]
    * [DeathDate]
    * [DeathLocation]
    * [DecedentPregnancyStatus]
    * [ExaminerContacted]
    * [InjuryIncident]
    * [InjuryLocation]
    * [SurgeryDate]
    * [TobaccoUseContributedToDeath]
* Death Certification
    * [Certifier]
    * [DeathCertification]
    * [CauseOfDeathPart1]
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

**Note:**
For NCHS submissions the replacement record status (REPLACE) has been deprecated within the VRDR IG, and this field be ignored.
The replacement status of a submission is now specified as a message parameter and described in the [NCHS Vital Records Messaging IG].

The profile includes:

| **#** |  **Description**   |  **IJE Name**   | IJE only |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | ------------- | ------------ | :----------: |---------- | -------- | -------- |
| 6 | Source flag: paper/electronic | MFILED| |extension[ filingFormat]  | codeable |  [FilingFormatVS] | 
| 96 | Date of Registration--Year | DOR_YR| |date | dateTime | - | 
| 97 | Date of Registration--Month | DOR_MO| |date | dateTime | - | 
| 98 | Date of Registration--Day | DOR_DY| |date | dateTime | - | 
| 122 | State Specific Data  | STATESP| |extension[ stateSpecificField] | string(30) | - | 
| 184 | Replacement Record  | REPLACE (*deprecated*)| |extension[replaceStatus].value | codeable | [ReplaceStatusVS] | 
{: .grid }
{% include markdown-link-references.md %}
