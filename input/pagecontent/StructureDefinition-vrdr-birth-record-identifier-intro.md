The BirthRecordIdentifier captures the key identifiers for the Decedent's birth record. It is relevant only in the case where the birth took place in a recognized jurisdiction.
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
  <td>88</td>
  <td>Infant Death/Birth Linking - birth certificate number</td>
  <td>BCNO</td>
  <td>value</td>
  <td>string(6)</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>89</td>
  <td>Infant Death/Birth Linking - year of birth</td>
  <td>IDOB_YR</td>
  <td>component[birthYear].value</td>
  <td>dateTime</td>
  <td>YYYY component</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>90</td>
  <td>Infant Death/Birth Linking - State, U.S. Territory or Canadian Province of Birth - code</td>
  <td>BSTATE</td>
  <td>component[birthJurisdiction].value</td>
  <td>string</td>
  <td><a href='https://hl7.org/fhir/us/vr-common-library/2024Jan/ValueSet-ValueSet-jurisdiction-vr.html'>ValueSetJurisdictionVitalRecords</a></td>
</tr>

</tbody>
</table>

</details>
<p></p>

