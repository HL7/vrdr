
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
  <td>112</td>
  <td>Pregnancy</td>
  <td>PREG</td>
  <td>value</td>
  <td>codeable</td>
  <td><a href='ValueSet-vrdr-death-pregnancy-status-vs.html'>DeathPregnancyStatusVS</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>113</td>
  <td>If Female--Edit Flag: From EDR only</td>
  <td>PREG_BYPASS</td>
  <td>value.extension[BypassEditFlag].value</td>
  <td>codeable</td>
  <td><a href='ValueSet-vrdr-edit-bypass-012-vs.html'>EditBypass012VS</a></td>
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
  <td style='text-align: center'>36</td>
  <td>Pregnancy Status</td>
  <td>value</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
</tbody>
</table>
