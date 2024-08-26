The DecedentAge profile of Observation records the decedents age at time of death.

  Notes:
  * When present, the effective date of this observation shall be equal to the decedent's date of death.
  * Age is derived as the difference in time between the decedent's death date and birth date.  Age is an integer value, reported in the largest appropriate unit.
  An age of 1 year and 1 month should be reported as 1 year, not 13 months, or 1.083 years.  Although the FHIR quantity provides a decimal value, only the integer component
  of the value will be used by NCHS.
  * The appropriate units for age are defined here:

  |  Age Range  | Units |
  |:---:|:---:|
  | age < 1 hr | minutes |
  | 1 hr &le; age < 24 hours | hours |
  | 1 day &le; age < 28 days (1 \"month\") | days |
  | 1 month &le;  age  < 12 months | months |
  | 1 year &le; age &le; 135 | years|
  | age unknown | unknown |
  {: .grid }


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
  <td>16</td>
  <td>Decedent's Age--Type</td>
  <td>AGETYPE</td>
  <td>valueQuantity.code</td>
  <td>codeable</td>
  <td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-units-of-age-vr.html'>ValueSetUnitsOfAgeVitalRecords</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>17</td>
  <td>Decedent's Age--Units</td>
  <td>AGE</td>
  <td>valueQuantity.value</td>
  <td>decimal</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>18</td>
  <td>Decedent's Age--Edit Flag</td>
  <td>AGE_BYPASS</td>
  <td>value.extension[BypassEditFlag].value</td>
  <td>codeable</td>
  <td>See <a href='usage.html#decedent-name'>Note on Decedent Name</a></td>
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
  <td style='text-align: center'>4a</td>
  <td>Age</td>
  <td>value</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>4b</td>
  <td>Under 1 Year</td>
  <td>value</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>4c</td>
  <td>Under 1 Day</td>
  <td>value</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
</tbody>
</table>
