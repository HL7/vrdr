The Decedent profile contains basic information about the decedent, including data that are essential to the death record.

  Note: The Decedent profile is based on the [US Core Patient Profile](http://hl7.org/fhir/us/core/STU5.0.1/StructureDefinition-us-core-patient.html) which requires gender.  A value of 'unknown' will satisfy this requirement.
  The death record submission use case uses NCHS's definition of sex at time of death which is different than gender.  Complete death record submissions may fail FHIR validation
  due to lack of a value for gender.

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
  <td>7</td>
  <td>Decedent's Legal Name--Given </td>
  <td>GNAME</td>
  <td>name.given , name.use = official</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>8</td>
  <td>Decedent's Legal Name--Middle</td>
  <td>MNAME</td>
  <td>name.given , name.use = official (first letter)</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>9</td>
  <td>Decedent's Legal Name--Last</td>
  <td>LNAME</td>
  <td>name.family , name.use = official. (absence is equivalent to 'UNKNOWN'.)</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>10</td>
  <td>Decedent's Legal Name--Suffix</td>
  <td>SUFF</td>
  <td>name.suffix , name.use = official</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>13</td>
  <td>Sex</td>
  <td>SEX</td>
  <td>extension[NVSS-SexAtDeath] </td>
  <td>codeable</td>
  <td><a href='ValueSet-vrdr-administrative-gender-vs.html'>AdministrativeGenderVS</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>NA</td>
  <td>Gender</td>
  <td>*NO IJE MAPPING*</td>
  <td>gender</td>
  <td>codeable</td>
  <td><a href='ValueSet-vrdr-administrative-gender-vs.html'>AdministrativeGenderVS</a> - See <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#gender'>Note on Gender</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>15</td>
  <td>Social Security Number</td>
  <td>SSN</td>
  <td>identifier.value where system = 'http://hl7.org/fhir/sid/us-ssn and type.coding.code="SS"</td>
  <td>string</td>
  <td>type.coding.code="SB" is deprecated but also supported for compatibility</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>19</td>
  <td>Date of Birth--Year</td>
  <td>DOB_YR</td>
  <td>birthDate.value</td>
  <td>dateTime</td>
  <td>See <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>20</td>
  <td>Date of Birth--Month</td>
  <td>DOB_MO</td>
  <td>birthDate.value</td>
  <td>dateTime</td>
  <td>See <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>21</td>
  <td>Date of Birth--Day</td>
  <td>DOB_DY</td>
  <td>birthDate.value</td>
  <td>dateTime</td>
  <td>See <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>22</td>
  <td>Birthplace--Country</td>
  <td>BPLACE_CNT</td>
  <td>extension[patient-birthPlace].value[x].country </td>
  <td>string</td>
  <td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-birthplace-country-vr.html'>ValueSetBirthplaceCountryVitalRecords</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>23</td>
  <td>State, U.S. Territory or Canadian Province of Birth - code</td>
  <td>BPLACE_ST</td>
  <td>extension[patient-birthPlace].value[x].state</td>
  <td>string</td>
  <td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-states-territories-provinces-vr.html'>ValueSetStatesTerritoriesAndProvincesVitalRecords</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>24</td>
  <td>Decedent's Residence--City</td>
  <td>CITYC</td>
  <td>address.city.extension[cityCode]</td>
  <td>integer</td>
  <td>see <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#city-codes'>CityCodes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>25</td>
  <td>Decedent's Residence--County</td>
  <td>COUNTYC</td>
  <td>address.district.extension[districtCode]</td>
  <td>integer</td>
  <td>see <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#county-codes'>CountyCodes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>26</td>
  <td>State, U.S. Territory or Canadian Province of Decedent's residence - code</td>
  <td>STATEC</td>
  <td>address.state</td>
  <td>string</td>
  <td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-states-territories-provinces-vr.html'>ValueSetStatesTerritoriesAndProvincesVitalRecords</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>27</td>
  <td>Decedent's Residence--Country</td>
  <td>COUNTRYC</td>
  <td>address.country</td>
  <td>string</td>
  <td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-residence-country-vr.html'>ValueSetResidenceCountryVitalRecords</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>28</td>
  <td>Decedent's Residence--Inside City Limits</td>
  <td>LIMITS</td>
  <td>address.city.extension[withinCityLimits] </td>
  <td>codeable</td>
  <td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-yes-no-unknown-vr.html'>ValueSetYesNoUnknownVitalRecords</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>29</td>
  <td>Marital Status</td>
  <td>MARITAL</td>
  <td>maritalStatus</td>
  <td>codeable</td>
  <td> <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-marital-status-vr.html'>ValueSetMaritalStatusVitalRecords</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>30</td>
  <td>Marital Status--Edit Flag</td>
  <td>MARITAL_BYPASS</td>
  <td>maritalStatus.extension[BypassEditFlag] </td>
  <td>codeable</td>
  <td><a href='ValueSet-vrdr-edit-bypass-0124-vs.html'>EditBypass0124VS</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>143</td>
  <td>Decedent's spouse living at decedent's DOD?</td>
  <td>SPOUSELV</td>
  <td>extension[Spouse-Alive] </td>
  <td>codeable</td>
  <td> <a href='ValueSet-vrdr-spouse-alive-vs.html'>SpouseAliveVS</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>146</td>
  <td>Decedent's Residence - Street number</td>
  <td>STNUM_R</td>
  <td>address.extension[stnum]</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>147</td>
  <td>Decedent's Residence - Pre Directional</td>
  <td>PREDIR_R</td>
  <td>address.extension[predir]</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>148</td>
  <td>Decedent's Residence - Street name</td>
  <td>STNAME_R</td>
  <td>address.extension[stname]</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>149</td>
  <td>Decedent's Residence - Street designator</td>
  <td>STDESIG_R</td>
  <td>address.extension[stdesig]</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>150</td>
  <td>Decedent's Residence - Post Directional</td>
  <td>POSTDIR_R</td>
  <td>address.extension[postdir]</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>151</td>
  <td>Decedent's Residence - Unit or apt number</td>
  <td>UNITNUM_R</td>
  <td>address.extension[unitnum]</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>152</td>
  <td>Decedent's Residence - City or Town name</td>
  <td>CITYTEXT_R</td>
  <td>address.city</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>153</td>
  <td>Decedent's Residence - ZIP code</td>
  <td>ZIP9_R</td>
  <td>address.postalCode</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>154</td>
  <td>Decedent's Residence - County</td>
  <td>COUNTYTEXT_R</td>
  <td>address.district</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>155</td>
  <td>Decedent's Residence - State name</td>
  <td>STATETEXT_R </td>
  <td>address.state (expanded from 2 letter code)</td>
  <td>string</td>
  <td>See <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#state-literals'>StateLiterals</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>156</td>
  <td>Decedent's Residence - COUNTRY name</td>
  <td>COUNTRYTEXT_R</td>
  <td>address.country (expanded from 2 letter code)</td>
  <td>string</td>
  <td>See <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#country-literals'>CountryLiterals</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>157</td>
  <td>Long string address for decedent's place of residence same as above but allows states to choose the way they capture information.</td>
  <td>ADDRESS_R</td>
  <td>address.line[0]</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>166</td>
  <td>Middle Name of Decedent </td>
  <td>DMIDDLE</td>
  <td>name.given , name.use = official</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>194</td>
  <td>Decedent's Maiden Name</td>
  <td>DMAIDEN</td>
  <td>name.text , name.use=maiden</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>195</td>
  <td>Decedent's Birth Place City - Code</td>
  <td>DBPLACECITYCODE</td>
  <td>extension[patient-birthPlace].value[x].city.extension[cityCode]</td>
  <td>integer</td>
  <td>see <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#city-codes'>CityCodes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>196</td>
  <td>Decedent's Birth Place City - Literal</td>
  <td>DBPLACECITY</td>
  <td>extension[patient-birthPlace].value[x].city</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>201</td>
  <td>Informant's Relationship</td>
  <td>INFORMRELATE</td>
  <td>contact.relationship.text </td>
  <td>string (30 characters)</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>238</td>
  <td>State, U.S. Territory or Canadian Province of Birth - literal</td>
  <td>STATEBTH</td>
  <td>extension[patient-birthPlace].value[x].state or extension[patient-birthPlace].value[x].state.extension[nationalReportingJurisdictionId] if present    (expanded from 2 letter code)</td>
  <td>string</td>
  <td>See <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#state-literals'>StateLiterals</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>246</td>
  <td>Marital Descriptor</td>
  <td>MARITAL_DESCRIP</td>
  <td>maritalStatus.text </td>
  <td>string</td>
  <td>-</td>
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
  <td>1</td>
  <td>State, U.S. Territory or Canadian Province of Birth - literal</td>
  <td>STATEBTH</td>
  <td>extension[patient-birthPlace].value[x].state or extension[patient-birthPlace].value[x].state.extension[nationalReportingJurisdictionId] if present    (expanded from 2 letter code)</td>
  <td>string</td>
  <td>See <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#state-literals'>StateLiterals</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality Roster</td>
  <td>2</td>
  <td>State, U.S. Territory or Canadian Province of Birth - code</td>
  <td>BPLACE_ST</td>
  <td>extension[patient-birthPlace].value[x].state or extension[patient-birthPlace].value[x].state.extension[nationalReportingJurisdictionId] if present </td>
  <td>string</td>
  <td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-jurisdiction-vr.html'>ValueSetJurisdictionVitalRecords</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality Roster</td>
  <td>3</td>
  <td>Decedent's Legal Name--Given </td>
  <td>GNAME</td>
  <td>name.given , name.use = official</td>
  <td>string</td>
  <td>See <a href='usage.html#decedent-name'>Note on Decedent Name</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality Roster</td>
  <td>4</td>
  <td>Decedent's Legal Name--Middle</td>
  <td>MIDNAME</td>
  <td>name.given , name.use = official (first letter)</td>
  <td>string</td>
  <td>See <a href='usage.html#decedent-name'>Note on Decedent Name</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality Roster</td>
  <td>5</td>
  <td>Decedent's Legal Name--Last</td>
  <td>LNAME</td>
  <td>name.family , name.use = official</td>
  <td>string</td>
  <td>See <a href='usage.html#decedent-name'>Note on Decedent Name</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality Roster</td>
  <td>11</td>
  <td>Date of Birth--Month</td>
  <td>DOB_MO</td>
  <td>birthDate.value</td>
  <td>dateTime</td>
  <td>See <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality Roster</td>
  <td>12</td>
  <td>Date of Birth--Day</td>
  <td>DOB_DY</td>
  <td>birthDate.value</td>
  <td>dateTime</td>
  <td>See <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality Roster</td>
  <td>13</td>
  <td>Date of Birth--Year</td>
  <td>DOB_YR</td>
  <td>birthDate.value</td>
  <td>dateTime</td>
  <td>See <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality Roster</td>
  <td>14</td>
  <td>Sex</td>
  <td>SEX</td>
  <td>extension[NVSS-SexAtDeath] </td>
  <td>codeable</td>
  <td><a href='ValueSet-vrdr-administrative-gender-vs.html'>AdministrativeGenderVS</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality Roster</td>
  <td>NA</td>
  <td>Gender</td>
  <td>*NO IJE MAPPING*</td>
  <td>gender</td>
  <td>codeable</td>
  <td><a href='ValueSet-vrdr-administrative-gender-vs.html'>AdministrativeGenderVS</a> - See <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#gender'>Note on Gender</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality Roster</td>
  <td>22</td>
  <td>Decedent's Suffix</td>
  <td>SUFF</td>
  <td>name.suffix , name.use = official</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality Roster</td>
  <td>26</td>
  <td>Decedent's Maiden Name</td>
  <td>DMAIDEN</td>
  <td>name.text , name.use=maiden</td>
  <td>string</td>
  <td></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality Roster</td>
  <td>27</td>
  <td>State, U.S. Territory or Canadian Province of Decedent's Residence - literal</td>
  <td>STATETEXT_R </td>
  <td>address.state (expanded from 2 letter code)</td>
  <td>string</td>
  <td>See <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#state-literals'>StateLiterals</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality Roster</td>
  <td>28</td>
  <td>State, U.S. Territory or Canadian Province of Decedent's Residence - code</td>
  <td>STATEC</td>
  <td>address.state</td>
  <td>string</td>
  <td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-states-territories-provinces-vr.html'>ValueSetStatesTerritoriesAndProvincesVitalRecords</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality Roster</td>
  <td>29</td>
  <td>Birthplace Country - Code</td>
  <td>BPLACE_CT</td>
  <td>extension[patient-birthPlace].value[x].country </td>
  <td>string</td>
  <td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-birthplace-country-vr.html'>ValueSetBirthplaceCountryVitalRecords</a>.</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality Roster</td>
  <td>31</td>
  <td>Decedent's Residence Country - Code</td>
  <td>COUNTRYC</td>
  <td>address.country</td>
  <td>string</td>
  <td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-residence-country-vr.html'>ValueSetResidenceCountryVitalRecords</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality Roster</td>
  <td>32</td>
  <td>Decedent's SSN (may be used by some jurisdictions when allowed by law, to match with the SSN contained with the birth record)</td>
  <td>SSN</td>
  <td>identifier.value where system = 'http://hl7.org/fhir/sid/us-ssn and type.coding.code="SS"</td>
  <td>string</td>
  <td>type.coding.code="SB" is deprecated but also supported for compatibility</td>
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
  <td style='text-align: center'>1</td>
  <td>Decedent's Legal Name</td>
  <td>name</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>2</td>
  <td>Sex</td>
  <td>extension:NVSS-SexAtDeath</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>3</td>
  <td>Social Security Number</td>
  <td>identifier:SSN</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>5</td>
  <td>Date of Birth</td>
  <td>birthDate</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>6</td>
  <td>Birthplace</td>
  <td>extension:birthPlace</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>7a</td>
  <td>Residence-State</td>
  <td>address.state</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>7b</td>
  <td>County</td>
  <td>address.district</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>7c</td>
  <td>City or Town</td>
  <td>address.city</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>7d</td>
  <td>Street and Number</td>
  <td>address.line</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>7e</td>
  <td>Apt No</td>
  <td>address.extension:unitnumber</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>7f</td>
  <td>Zip Code</td>
  <td>address.postalCode</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>7g</td>
  <td>Inside City Limits?</td>
  <td>address.extension:withinCityLimitsIndicator</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>9</td>
  <td>Marital Status at Time of Death</td>
  <td>maritalStatus</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>13a</td>
  <td>Informant's Name</td>
  <td>contact.name</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>13b</td>
  <td>Informant's Relationship to Decedent</td>
  <td>contact.type.text</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>13c</td>
  <td>Informant's Mailing Address</td>
  <td>contact.type.address</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
</tbody>
</table>
