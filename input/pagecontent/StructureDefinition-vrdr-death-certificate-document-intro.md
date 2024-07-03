The Death Certificate is a Bundle document that contains the <a href='StructureDefinition-vrdr-death-certificate.html'>DeathCertificate</a> Composition and the other instances comprising the content of the death record.

  Notes:
  * The DeathCertification.performed and DeathCertificateDocument.attester.time should both be set to the death certification time.
  * THe DeathCertificate is the first entry in the DeathCertificateDocument, and includes references to other entries in that Bundle.
  * The unique record identifier for every record consistes of YYYYJJFFFFFF, where YYYY is the year, JJ is the two character jurisdiction code, and FFFFFF is the six digit death certificate number.

In addition to  the <a href='StructureDefinition-vrdr-death-certificate.html'>DeathCertificate</a> Composition it includes the following content:
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

