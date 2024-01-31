
  Note:
  * The DeathCertification.performed and DeathCertificateDocument.attester.time should both be set to the death certification time.
  * The DeathCertification.performer.actor is required by the [USCore Procedure Profile](http://hl7.org/fhir/us/core/STU5.0.1/StructureDefinition-us-core-procedure.html),
  but is not required by the death record submission use case.

  The Death Certification profile includes:
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
  <td>119</td>
  <td>Title of Certifier</td>
  <td>CERTL</td>
  <td>performer.function (note that if value is "OTH" then performed.function.text should contain 'Full Text for Other Individual Legally Allowed to Certify')</td>
  <td>codeable</td>
  <td><a href='ValueSet-vrdr-certifier-types-vs.html'>CertifierTypesVS</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>235</td>
  <td>Certifier Date Signed</td>
  <td>CERTDATE</td>
  <td>performed</td>
  <td>dateTime</td>
  <td>-</td>
</tr>

</tbody>
</table>

</details>
<p></p>

