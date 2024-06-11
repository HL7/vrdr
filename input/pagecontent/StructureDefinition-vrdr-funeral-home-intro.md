
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
  <td>206</td>
  <td>Funeral Facility Name</td>
  <td>FUNFACNAME</td>
  <td>name</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>207</td>
  <td>Funeral Facility - Street number</td>
  <td>FUNFACSTNUM</td>
  <td>address.extension[stnum]</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>208</td>
  <td>Funeral Facility - Pre Directional</td>
  <td>FUNFACPREDIR</td>
  <td>address.extension[predir]</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>209</td>
  <td>Funeral Facility - Street name</td>
  <td>FUNFACSTRNAME</td>
  <td>address.extension[stname]</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>210</td>
  <td>Funeral Facility - Street designator</td>
  <td>FUNFACSTRDESIG</td>
  <td>address.extension[stdesig]</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>211</td>
  <td>Funeral Facility - Post Directional</td>
  <td>FUNPOSTDIR</td>
  <td>address.extension[postdir]</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>212</td>
  <td>Funeral Facility - Unit or apt number</td>
  <td>FUNUNITNUM</td>
  <td>address.extension[unitnum]</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>213</td>
  <td>Long string address for Funeral Facility same as above but allows states to choose the way they capture information.</td>
  <td>FUNFACADDRESS</td>
  <td>address.line</td>
  <td>string</td>
  <td>address.line </td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>214</td>
  <td>Funeral Facility - City or Town name</td>
  <td>FUNCITYTEXT</td>
  <td>address.city</td>
  <td>string</td>
  <td>address.city </td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>215</td>
  <td>State, U.S. Territory or Canadian Province of Funeral Facility - code</td>
  <td>FUNSTATECD</td>
  <td>address.state</td>
  <td>string</td>
  <td><a href='https://hl7.org/fhir/us/vr-common-library/2024Jan/ValueSet-ValueSet-states-territories-provinces-vr.html'>ValueSetStatesTerritoriesAndProvincesVitalRecords</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>216</td>
  <td>State, U.S. Territory or Canadian Province of Funeral Facility - literal</td>
  <td>FUNSTATE</td>
  <td>address.state (expanded from 2 letter code)</td>
  <td>string</td>
  <td>See <a href='usage.html#state-literals'>StateLiterals</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>217</td>
  <td>Funeral Facility - ZIP</td>
  <td>FUNZIP</td>
  <td>address.postalCode</td>
  <td>string</td>
  <td>-</td>
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
  <td style='text-align: center'>15</td>
  <td>Facility Name</td>
  <td>name</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>16</td>
  <td>City or Town, State, and Zip Code</td>
  <td>address</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>21</td>
  <td>Name and Complete Address of Funeral Facility</td>
  <td>name, address</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>23</td>
  <td>License Number</td>
  <td>identifier:NPI</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
</tbody>
</table>
