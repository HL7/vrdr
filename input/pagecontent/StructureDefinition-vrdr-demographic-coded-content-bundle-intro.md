  This bundle is information-content equivalent to the traditional NCHS MRE format.

  This bundle contains:
  * Coded Content:
    * Coded Race and Ethnicity - <a href='https://hl7.org/fhir/us/vr-common-library/2024Jan/StructureDefinition-coded-race-and-ethnicity-vr.html'>ObservationCodedRaceAndEthnicityVitalRecords</a>
  * Input Content:
    * Input Race and Ethnicity - <a href='https://hl7.org/fhir/us/vr-common-library/2024Jan/StructureDefinition-input-race-and-ethnicity-vr.html'>ObservationInputRaceAndEthnicityVitalRecords</a>
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
  <td>5</td>
  <td>Auxiliary State file number</td>
  <td>AUXNO</td>
  <td>identifier.extension[auxiliaryStateIdentifier1].value</td>
  <td>string(12)</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>121</td>
  <td>Auxiliary State file number</td>
  <td>AUXNO2</td>
  <td>identifier.extension[auxiliaryStateIdentifier2].value</td>
  <td>string(12)</td>
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

