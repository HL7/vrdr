
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
  <td>176</td>
  <td>County of Injury - literal</td>
  <td>COUNTYTEXT_I</td>
  <td>address.district</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>177</td>
  <td>County of Injury code</td>
  <td>COUNTYCODE_I</td>
  <td>address.district.extension[districtCode].value</td>
  <td>integer</td>
  <td>see <a href='usage.html#county-codes'>CountyCodes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>178</td>
  <td>Town/city of Injury - literal</td>
  <td>CITYTEXT_I</td>
  <td>address.city</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>179</td>
  <td>Town/city of Injury code</td>
  <td>CITYCODE_I</td>
  <td>address.city.extension[cityCode].value</td>
  <td>integer</td>
  <td>see <a href='usage.html#city-codes'>CityCodes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>180</td>
  <td>State, U.S. Territory or Canadian Province of Injury - code</td>
  <td>STATECODE_I</td>
  <td>address.state</td>
  <td>string</td>
  <td><a href='https://hl7.org/fhir/us/vr-common-library/2024Jan/ValueSet-ValueSet-states-territories-provinces-vr.html'>ValueSetStatesTerritoriesAndProvincesVitalRecords</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>181</td>
  <td>Place of injury. Longitude</td>
  <td>LONG_I</td>
  <td>position.longitude</td>
  <td>float</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>182</td>
  <td>Place of injury. Latitude</td>
  <td>LAT_I</td>
  <td>position.latitude</td>
  <td>float</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>237</td>
  <td>State, U.S. Territory or Canadian Province of Injury - literal</td>
  <td>STINJURY</td>
  <td>address.state (expanded from 2 letter code)</td>
  <td>string</td>
  <td>See <a href='usage.html#state-literals'>StateLiterals</a></td>
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
  <td style='text-align: center'>42</td>
  <td>Location of Injury</td>
  <td>address</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
</tbody>
</table>
