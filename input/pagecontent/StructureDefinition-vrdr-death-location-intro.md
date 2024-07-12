
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
  <td>2</td>
  <td>State, U.S. Territory or Canadian Province of Death - code</td>
  <td>DSTATE</td>
  <td>address.state or address.state.extension[nationalReportingJurisdictionId]</td>
  <td>codeable</td>
  <td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-states-territories-provinces-vr.html'>ValueSetStatesTerritoriesAndProvincesVitalRecords</a> in state field or <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-jurisdiction-vr.html'>ValueSetJurisdictionVitalRecords</a> in extension</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>32</td>
  <td>County of Death Occurrence</td>
  <td>COD</td>
  <td>address.district.extension[districtCode]</td>
  <td>integer</td>
  <td>see <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#county-codes'>CountyCodes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>129</td>
  <td>Death Institution name</td>
  <td>DINSTI</td>
  <td>name</td>
  <td>string </td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>130</td>
  <td>Long String address for place of death</td>
  <td>ADDRESS_D</td>
  <td>address.line</td>
  <td>string </td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>131</td>
  <td>Place of death. Street number</td>
  <td>STNUM_D</td>
  <td>address.extension[stnum]</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>132</td>
  <td>Place of death. Pre Directional</td>
  <td>PREDIR_D</td>
  <td>address.extension[predir]</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>133</td>
  <td>Place of death. Street name</td>
  <td>STNAME_D</td>
  <td>address.extension[stname]</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>134</td>
  <td>Place of death. Street designator</td>
  <td>STDESIG_D</td>
  <td>address.extension[stdesig]</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>135</td>
  <td>Place of death. Post Directional</td>
  <td>POSTDIR_D</td>
  <td>address.extension[postdir]</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>136</td>
  <td>Place of death. City or Town name</td>
  <td>CITYTEXT_D</td>
  <td>address.city</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>137</td>
  <td>Place of death. State name literal</td>
  <td>STATETEXT_D</td>
  <td>address.state (expanded from 2 letter code)</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>138</td>
  <td>Place of death. Zip code</td>
  <td>ZIP9_D</td>
  <td>address.postalCode</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>139</td>
  <td>Place of death. County of Death</td>
  <td>COUNTYTEXT_D</td>
  <td>address.district</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>140</td>
  <td>Place of death. City FIPS code</td>
  <td>CITYCODE_D</td>
  <td>address.city.extension[cityCode]</td>
  <td>integer</td>
  <td>see <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#city-codes'>CityCodes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>141</td>
  <td>Place of death. Longitude</td>
  <td>LONG_D</td>
  <td>position.longitude</td>
  <td>float</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>142</td>
  <td>Place of Death. Latitude</td>
  <td>LAT_D</td>
  <td>position.latitude</td>
  <td>float</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>239</td>
  <td>Country of Death - Code</td>
  <td>DTHCOUNTRYCD</td>
  <td>address.country </td>
  <td>string </td>
  <td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-residence-country-vr.html'>ValueSetResidenceCountryVitalRecords</a>.  Note: For US Death certificates should be US</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>240</td>
  <td>Country of Death - Literal</td>
  <td>DTHCOUNTRY</td>
  <td>address.country  (expanded from 2 letter code)</td>
  <td>string </td>
  <td>See <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#country-literals'>CountryLiterals</a>.   Not used. For US Death certificates should be 'United States'.</td>
</tr>

</tbody>
</table>

</details>
<p></p>

<details>

<summary>

<strong class='context-menu'> Mortality Roster </strong>

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
  <td style='text-align: center'>Mortality Roster</td>
  <td>6</td>
  <td>State, U.S. Territory or Canadian Province of Death - literal</td>
  <td>STATETEXT_D</td>
  <td>address.state (expanded from 2 letter code)</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality Roster</td>
  <td>7</td>
  <td>State, U.S. Territory or Canadian Province of Death - code</td>
  <td>DSTATE</td>
  <td>address.state or address.state.extension[nationalReportingJurisdictionId]</td>
  <td>codeable</td>
  <td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-states-territories-provinces-vr.html'>ValueSetStatesTerritoriesAndProvincesVitalRecords</a> or <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-jurisdiction-vr.html'>ValueSetJurisdictionVitalRecords</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality Roster</td>
  <td>30</td>
  <td>Death Country - Code</td>
  <td>DCOUNTRYC</td>
  <td>address.country </td>
  <td>string </td>
  <td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-residence-country-vr.html'>ValueSetResidenceCountryVitalRecords</a>.  Note: For US Death certificates should be US.   </td>
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
  <td style='text-align: center'>17</td>
  <td>County of Death</td>
  <td>address.district</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
</tbody>
</table>
