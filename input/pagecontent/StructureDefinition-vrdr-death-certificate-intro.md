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
    * <a href='StructureDefinition-vrdr-birth-record-identifier.html'>BirthRecordIdentifier</a>
    * <a href='StructureDefinition-vrdr-decedent.html'>Decedent</a>
    * <a href='StructureDefinition-vrdr-decedent-age.html'>DecedentAge</a>
    * <a href='StructureDefinition-vrdr-decedent-education-level.html'>DecedentEducationLevel</a>
    * <a href='StructureDefinition-vrdr-decedent-father.html'>DecedentFather</a>
    * <a href='StructureDefinition-vrdr-decedent-military-service.html'>DecedentMilitaryService</a>
    * [EmergingIssues]
    * <a href='StructureDefinition-vrdr-decedent-mother.html'>DecedentMother</a>
    * <a href='StructureDefinition-vrdr-decedent-spouse.html'>DecedentSpouse</a>
    * [DecedentUsualWork]
* Death Investigation
    * <a href='StructureDefinition-vrdr-autopsy-performed-indicator.html'>AutopsyPerformedIndicator</a>
    * <a href='StructureDefinition-vrdr-death-date.html'>DeathDate</a>
    * <a href='StructureDefinition-vrdr-death-location.html'>DeathLocation</a>
    * <a href='StructureDefinition-vrdr-decedent-pregnancy-status.html'>DecedentPregnancyStatus</a>
    * <a href='StructureDefinition-vrdr-examiner-contacted.html'>ExaminerContacted</a>
    * <a href='StructureDefinition-vrdr-injury-incident.html'>InjuryIncident</a>
    * <a href='StructureDefinition-vrdr-injury-location.html'>InjuryLocation</a>
    * <a href='StructureDefinition-vrdr-surgery-date.html'>SurgeryDate</a>
    * <a href='StructureDefinition-vrdr-tobacco-use-contributed-to-death.html'>TobaccoUseContributedToDeath</a>
* Death Certification
    * <a href='StructureDefinition-vrdr-certifier.html'>Certifier</a>
    * <a href='StructureDefinition-vrdr-death-certification.html'>DeathCertification</a>
    * <a href='StructureDefinition-vrdr-cause-of-death-part1.html'>CauseOfDeathPart1</a>
    * <a href='StructureDefinition-vrdr-cause-of-death-part2.html'>CauseOfDeathPart2</a>
    * <a href='StructureDefinition-vrdr-manner-of-death.html'>MannerOfDeath</a>
* Decedent Disposition
    * <a href='StructureDefinition-vrdr-decedent-disposition-method.html'>DecedentDispositionMethod</a>
    * <a href='StructureDefinition-vrdr-disposition-location.html'>DispositionLocation</a>
    * <a href='StructureDefinition-vrdr-funeral-home.html'>FuneralHome</a>
* Coded Content
    * <a href='StructureDefinition-vrdr-activity-at-time-of-death.html'>ActivityAtTimeOfDeath</a>
    * <a href='StructureDefinition-vrdr-automated-underlying-cause-of-death.html'>AutomatedUnderlyingCauseOfDeath</a>
    * <a href='StructureDefinition-vrdr-manual-underlying-cause-of-death.html'>ManualUnderlyingCauseOfDeath</a>
    * [CodedRaceAndEthnicity]
    * <a href='StructureDefinition-vrdr-entity-axis-cause-of-death.html'>EntityAxisCauseOfDeath</a>
    * <a href='StructureDefinition-vrdr-record-axis-cause-of-death.html'>RecordAxisCauseOfDeath</a>
    * <a href='StructureDefinition-vrdr-place-of-injury.html'>PlaceOfInjury</a>
    * <a href='StructureDefinition-vrdr-coding-status-values.html'>CodingStatusValues</a>

**Note:**
For NCHS submissions the replacement record status (REPLACE) has been deprecated within the VRDR IG, and this field be ignored.
The replacement status of a submission is now specified as a message parameter and described in the [NCHS Vital Records Messaging IG].

The profile includes:

### IJE Mapping

<style>
 .context-menu {cursor: context-menu; color: #438bca;}
 .context-menu:hover {opacity: 0.5;}
</style>
<details open>

<summary>

<strong class='context-menu'> Mortality (Decedent) </strong>

</summary>
<table class='grid'>
<thead>
  <tr>
    <th style='text-align: center'><strong>Use Case</strong></th>
    <th><strong>#</strong></th>
    <th><strong>Description</strong></th>
    <th><strong>IJE Name</strong></th>
    <th><strong>Field</strong></th>
    <th><strong>Type</strong></th>
    <th><strong>Value Set/Comments</strong></th>
  </tr>
</thead>
<tbody>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>6</td>
  <td>Source flag: paper/electronic</td>
  <td>MFILED</td>
  <td>extension[ filingFormat] </td>
  <td>codeable</td>
  <td> <a href='ValueSet-vrdr-filing-format-vs.html'>FilingFormatVS</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>96</td>
  <td>Date of Registration--Year</td>
  <td>DOR_YR</td>
  <td>date</td>
  <td>dateTime</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>97</td>
  <td>Date of Registration--Month</td>
  <td>DOR_MO</td>
  <td>date</td>
  <td>dateTime</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>98</td>
  <td>Date of Registration--Day</td>
  <td>DOR_DY</td>
  <td>date</td>
  <td>dateTime</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>122</td>
  <td>State Specific Data </td>
  <td>STATESP</td>
  <td>extension[ stateSpecificField]</td>
  <td>string(30)</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>184</td>
  <td>Replacement Record </td>
  <td>REPLACE (*deprecated*)</td>
  <td>extension[ replaceStatus ].value</td>
  <td>codeable</td>
  <td><a href='ValueSet-vrdr-replace-status-vs.html'>ReplaceStatusVS</a></td>
</tr>

</tbody>
</table>

</details>
<p></p>


### Form Mapping
<details>

<summary>

<strong class='context-menu' >Form Mapping</strong>

</summary>
<table class='grid'>
<thead>
  <tr>
    <th style='text-align: center'><strong>Item #</strong></th>
    <th><strong>Form Field</strong></th>
    <th><strong>FHIR Profile Field</strong></th>
    <th><strong>Reference</strong></th>
  </tr>
</thead>
<tbody>
<tr>
  <td style='text-align: center'>50</td>
  <td>For Registrar Only-Date Filed</td>
  <td>date</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
</tbody>
</table>
