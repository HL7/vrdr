Note: The Certifier profile is based on the [US Core Practitioner](http://hl7.org/fhir/us/core/STU5.0.1/StructureDefinition-us-core-practitioner.html) which requires an identifier be included.
The death record submission process does not require an identifier.  As a result, death record submissions that are complete will be flagged as invalid by the FHIR validator, unless they include
an identifier.

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
  <td>220</td>
  <td>Certifier's First Name</td>
  <td>CERTFIRST</td>
  <td>name.given , name.use = official</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>221</td>
  <td>Certifier's Middle Name</td>
  <td>CERTMIDDLE</td>
  <td>name.given , name.use = official</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>222</td>
  <td>Certifier's Last Name</td>
  <td>CERTLAST</td>
  <td>name.family , name.use = official</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>223</td>
  <td>Certifier's Suffix Name</td>
  <td>CERTSUFFIX</td>
  <td>name.suffix , name.use = official</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>224</td>
  <td>Certifier - Street number</td>
  <td>CERTSTNUM</td>
  <td>address.extension[stnum]</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>225</td>
  <td>Certifier - Pre Directional</td>
  <td>CERTPREDIR</td>
  <td>address.extension[predir]</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>226</td>
  <td>Certifier - Street name</td>
  <td>CERTSTRNAME</td>
  <td>address.extension[stname]</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>227</td>
  <td>Certifier - Street designator</td>
  <td>CERTSTRDESIG</td>
  <td>address.extension[stdesig]</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>228</td>
  <td>Certifier - Post Directional</td>
  <td>CERTPOSTDIR</td>
  <td>address.extension[postdir]</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>229</td>
  <td>Certifier - Unit or apt number</td>
  <td>CERTUNITNUM</td>
  <td>address.extension[unitnum]</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>230</td>
  <td>Long string address for Certifier same as above but allows states to choose the way they capture information.</td>
  <td>CERTADDRESS</td>
  <td>address.line </td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>231</td>
  <td>Certifier - City or Town name</td>
  <td>CERTCITYTEXT</td>
  <td>address.city </td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>232</td>
  <td>State, U.S. Territory or Canadian Province of Certifier - code</td>
  <td>CERTSTATECD</td>
  <td>address.state</td>
  <td>string</td>
  <td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-states-territories-provinces-vr.html'>ValueSetStatesTerritoriesAndProvincesVitalRecords</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>233</td>
  <td>State, U.S. Territory or Canadian Province of Certifier - literal</td>
  <td>CERTSTATE</td>
  <td>address.state (expanded from 2 letter code)</td>
  <td>string</td>
  <td>See <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#state-literals'>StateLiterals</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>234</td>
  <td>Certifier - Zip</td>
  <td>CERTZIP</td>
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
  <td style='text-align: center'>46</td>
  <td>Name, Address, and Zip Code of Person Completing Cause of Death</td>
  <td>name, address</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>47</td>
  <td>Title of Certifier</td>
  <td>qualification</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>48</td>
  <td>License Number</td>
  <td>identifier:NPI</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
</tbody>
</table>
