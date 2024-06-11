This bundle is information-content equivalent to the traditional NCHS TRX format.

  This bundle contains:
  * Coded Content:
    * Activity at Time of Death <a href='StructureDefinition-vrdr-activity-at-time-of-death.html'>ActivityAtTimeOfDeath</a>
    * Underlying Cause of Death -- <a href='StructureDefinition-vrdr-automated-underlying-cause-of-death.html'>AutomatedUnderlyingCauseOfDeath</a> and <a href='StructureDefinition-vrdr-manual-underlying-cause-of-death.html'>ManualUnderlyingCauseOfDeath</a>
    * Entity Axis Cause of Death <a href='StructureDefinition-vrdr-entity-axis-cause-of-death.html'>EntityAxisCauseOfDeath</a>
    * Record Axis Cause of Death <a href='StructureDefinition-vrdr-record-axis-cause-of-death.html'>RecordAxisCauseOfDeath</a>
    * Place of Injury <a href='StructureDefinition-vrdr-place-of-injury.html'>PlaceOfInjury</a>
    * Coding Status Values <a href='StructureDefinition-vrdr-coding-status-values.html'>CodingStatusValues</a> - various flags that are part of the TRX format
  * Input Content:
    * Cause of Death Part 1 - <a href='StructureDefinition-vrdr-cause-of-death-part1.html'>CauseOfDeathPart1</a>
    * Cause of Death Part 2 - <a href='StructureDefinition-vrdr-cause-of-death-part2.html'>CauseOfDeathPart2</a>
    * Manner of Death - <a href='StructureDefinition-vrdr-manner-of-death.html'>MannerOfDeath</a>
    * Autopsy Performed Indicator - <a href='StructureDefinition-vrdr-autopsy-performed-indicator.html'>AutopsyPerformedIndicator</a>
    * Death Certification - <a href='StructureDefinition-vrdr-death-certification.html'>DeathCertification</a>
    * Injury Incident - <a href='StructureDefinition-vrdr-injury-incident.html'>InjuryIncident</a>
    * Tobacco Use Contributed to Death - <a href='StructureDefinition-vrdr-tobacco-use-contributed-to-death.html'>TobaccoUseContributedToDeath</a>
    * Decedent Pregnancy Status - <a href='StructureDefinition-vrdr-decedent-pregnancy-status.html'>DecedentPregnancyStatus</a>
    * Surgery Date - <a href='StructureDefinition-vrdr-surgery-date.html'>SurgeryDate</a>
### IJE Mapping

<style>
 .context-menu {cursor: context-menu; color: #438bca;}
 .context-menu:hover {opacity: 0.5;}
</style>
<details>

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
  <td>3</td>
  <td>Certificate Number</td>
  <td>FILENO</td>
  <td>identifier.extension[certificateNumber].value</td>
  <td>string(6)</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>5 or 121</td>
  <td>Auxiliary State file number</td>
  <td>AUXNO or AUXNO2</td>
  <td>identifier.extension[auxiliaryStateIdentifier1].value</td>
  <td>string(12)</td>
  <td>When the Jurisdiction provides AUXNO2, it will be stored in this field.  If the Jurisdiction only provides AUXNO, that value will be stored in this field</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>122</td>
  <td>State Specific Data </td>
  <td>STATESP</td>
  <td>extension[stateSpecificField]</td>
  <td>string(30)</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>NA</td>
  <td>Death Record Identifier</td>
  <td>*NO IJE MAPPING*</td>
  <td>identifier.value</td>
  <td>string(12)</td>
  <td>YYYYJJNNNNNN,  YYYY = death year JJ = jurisdiction  and NNNNNN = certificate number</td>
</tr>

</tbody>
</table>

</details>
<p></p>

