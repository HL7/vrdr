The following table illustrates the mappings of fields in the Interjurisdictional Exchange (IJE) formats for mortality to profiles and fields within this FHIR Implementation guide. This information is provided to guide implementers who are transitioning from the familiar IJE to the new FHIR format for this information.

<style>
    table.style1 { 
        border-collapse: collapse; 
        width: 100%; 
        table-layout: fixed;
    }  
    table.style1 tbody tr {
    border-bottom: 1px solid #dddddd;
    } 
    table.style1 tbody tr:nth-of-type(even) { 
        background-color: #f3f3f3; 
    } 
    table.style1 tbody tr:last-of-type {
    border-bottom: 2px solid #98c1d9;
    }
    </style>
### Mortality Roster IJE Mapping

<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>
<tbody>
<tr>
<td style='background-color:#98c1d9; text-align: center; width: 4%;'><b>#</b></td>
<td style='background-color:#98c1d9; width: 16%;'><b>Description</b></td>
<td style='background-color:#98c1d9; text-align: center; width: 8%;'><b>IJE Name*</b></td>
<td style='background-color:#98c1d9; width: 27%;'><b>Profile</b></td>
<td style='background-color:#98c1d9;'><b>Field</b></td>
<td style='background-color:#98c1d9; text-align: center; width: 6%;'><b>Type</b></td>
<td style='background-color:#98c1d9; width: 14%;'><b>Value Set/Comments</b></td>
</tr>
<tr><td style='text-align: center;'>8</td><td>Date of Death--Month</td><td style='text-align: center;'>DOD_MO</td><td><a href='StructureDefinition-vrdr-death-date.html'>DeathDate</a></td><td>value</td><td>dateTime</td><td>See <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td></tr>
<tr><td style='text-align: center;'>9</td><td>Date of Death--Day</td><td style='text-align: center;'>DOD_DY</td><td><a href='StructureDefinition-vrdr-death-date.html'>DeathDate</a></td><td>value</td><td>dateTime</td><td>See <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td></tr>
<tr><td style='text-align: center;'>10</td><td>Date of Death--Year</td><td style='text-align: center;'>DOD_YR</td><td><a href='StructureDefinition-vrdr-death-date.html'>DeathDate</a></td><td>value</td><td>dateTime</td><td>Required for processing</td></tr>
<tr><td style='text-align: center;'>6</td><td>State, U.S. Territory or Canadian Province of Death - literal</td><td style='text-align: center;'>STATETEXT_D</td><td><a href='StructureDefinition-vrdr-death-location.html'>DeathLocation</a></td><td>address.state (expanded from 2 letter code)</td><td>string</td><td>-</td></tr>
<tr><td style='text-align: center;'>7</td><td>State, U.S. Territory or Canadian Province of Death - code</td><td style='text-align: center;'>DSTATE</td><td><a href='StructureDefinition-vrdr-death-location.html'>DeathLocation</a></td><td>address.state or address.state.extension[nationalReportingJurisdictionId]</td><td>codeable</td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-states-territories-provinces-vr.html'>ValueSetStatesTerritoriesAndProvincesVitalRecords</a> or <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-jurisdiction-vr.html'>ValueSetJurisdictionVitalRecords</a></td></tr>
<tr><td style='text-align: center;'>30</td><td>Death Country - Code</td><td style='text-align: center;'>DCOUNTRYC</td><td><a href='StructureDefinition-vrdr-death-location.html'>DeathLocation</a></td><td>address.country </td><td>string </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-residence-country-vr.html'>ValueSetResidenceCountryVitalRecords</a>.  Note: For US Death certificates should be US.   </td></tr>
<tr><td style='text-align: center;'>1</td><td>State, U.S. Territory or Canadian Province of Birth - literal</td><td style='text-align: center;'>STATEBTH</td><td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td><td>extension[patient-birthPlace].value[x].state or extension[patient-birthPlace].value[x].state.extension[nationalReportingJurisdictionId] if present    (expanded from 2 letter code)</td><td>string</td><td>See <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#state-literals'>StateLiterals</a></td></tr>
<tr><td style='text-align: center;'>2</td><td>State, U.S. Territory or Canadian Province of Birth - code</td><td style='text-align: center;'>BPLACE_ST</td><td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td><td>extension[patient-birthPlace].value[x].state or extension[patient-birthPlace].value[x].state.extension[nationalReportingJurisdictionId] if present </td><td>string</td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-jurisdiction-vr.html'>ValueSetJurisdictionVitalRecords</a></td></tr>
<tr><td style='text-align: center;'>3</td><td>Decedent's Legal Name--Given </td><td style='text-align: center;'>GNAME</td><td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td><td>name.given , name.use = official</td><td>string</td><td>See <a href='usage.html#decedent-name'>Note on Decedent Name</a></td></tr>
<tr><td style='text-align: center;'>4</td><td>Decedent's Legal Name--Middle</td><td style='text-align: center;'>MIDNAME</td><td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td><td>name.given , name.use = official (first letter)</td><td>string</td><td>See <a href='usage.html#decedent-name'>Note on Decedent Name</a></td></tr>
<tr><td style='text-align: center;'>5</td><td>Decedent's Legal Name--Last</td><td style='text-align: center;'>LNAME</td><td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td><td>name.family , name.use = official</td><td>string</td><td>See <a href='usage.html#decedent-name'>Note on Decedent Name</a></td></tr>
<tr><td style='text-align: center;'>11</td><td>Date of Birth--Month</td><td style='text-align: center;'>DOB_MO</td><td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td><td>birthDate.value</td><td>dateTime</td><td>See <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td></tr>
<tr><td style='text-align: center;'>12</td><td>Date of Birth--Day</td><td style='text-align: center;'>DOB_DY</td><td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td><td>birthDate.value</td><td>dateTime</td><td>See <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td></tr>
<tr><td style='text-align: center;'>13</td><td>Date of Birth--Year</td><td style='text-align: center;'>DOB_YR</td><td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td><td>birthDate.value</td><td>dateTime</td><td>See <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td></tr>
<tr><td style='text-align: center;'>14</td><td>Sex</td><td style='text-align: center;'>SEX</td><td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td><td>extension[NVSS-SexAtDeath] </td><td>codeable</td><td><a href='ValueSet-vrdr-administrative-gender-vs.html'>AdministrativeGenderVS</a></td></tr>
<tr><td style='text-align: center;'>NA</td><td>Gender</td><td style='text-align: center;'>*NO IJE MAPPING*</td><td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td><td>gender</td><td>codeable</td><td><a href='ValueSet-vrdr-administrative-gender-vs.html'>AdministrativeGenderVS</a> - See <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#gender'>Note on Gender</a></td></tr>
<tr><td style='text-align: center;'>22</td><td>Decedent's Suffix</td><td style='text-align: center;'>SUFF</td><td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td><td>name.suffix , name.use = official</td><td>string</td><td>-</td></tr>
<tr><td style='text-align: center;'>26</td><td>Decedent's Maiden Name</td><td style='text-align: center;'>DMAIDEN</td><td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td><td>name.text , name.use=maiden</td><td>string</td><td></td></tr>
<tr><td style='text-align: center;'>27</td><td>State, U.S. Territory or Canadian Province of Decedent's Residence - literal</td><td style='text-align: center;'>STATETEXT_R </td><td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td><td>address.state (expanded from 2 letter code)</td><td>string</td><td>See <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#state-literals'>StateLiterals</a></td></tr>
<tr><td style='text-align: center;'>28</td><td>State, U.S. Territory or Canadian Province of Decedent's Residence - code</td><td style='text-align: center;'>STATEC</td><td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td><td>address.state</td><td>string</td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-states-territories-provinces-vr.html'>ValueSetStatesTerritoriesAndProvincesVitalRecords</a></td></tr>
<tr><td style='text-align: center;'>29</td><td>Birthplace Country - Code</td><td style='text-align: center;'>BPLACE_CT</td><td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td><td>extension[patient-birthPlace].value[x].country </td><td>string</td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-birthplace-country-vr.html'>ValueSetBirthplaceCountryVitalRecords</a>.</td></tr>
<tr><td style='text-align: center;'>31</td><td>Decedent's Residence Country - Code</td><td style='text-align: center;'>COUNTRYC</td><td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td><td>address.country</td><td>string</td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-residence-country-vr.html'>ValueSetResidenceCountryVitalRecords</a></td></tr>
<tr><td style='text-align: center;'>32</td><td>Decedent's SSN (may be used by some jurisdictions when allowed by law, to match with the SSN contained with the birth record)</td><td style='text-align: center;'>SSN</td><td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td><td>identifier.value where system = 'http://hl7.org/fhir/sid/us-ssn and type.coding.code="SS"</td><td>string</td><td>type.coding.code="SB" is deprecated but also supported for compatibility</td></tr>
<tr><td style='text-align: center;'>16</td><td>Father's First Name</td><td style='text-align: center;'>DADFNAME</td><td><a href='StructureDefinition-vrdr-decedent-father.html'>DecedentFather</a></td><td>name.given , name.use = official</td><td>string</td><td>-</td></tr>
<tr><td style='text-align: center;'>17</td><td>Father's Middle Name</td><td style='text-align: center;'>DADMIDNAME</td><td><a href='StructureDefinition-vrdr-decedent-father.html'>DecedentFather</a></td><td>name.given , name.use = official</td><td>string</td><td>-</td></tr>
<tr><td style='text-align: center;'>18</td><td>Father's Surname</td><td style='text-align: center;'>DADLNAME</td><td><a href='StructureDefinition-vrdr-decedent-father.html'>DecedentFather</a></td><td>name.family</td><td>string</td><td>-</td></tr>
<tr><td style='text-align: center;'>23</td><td>Father's Suffix</td><td style='text-align: center;'>DADSUFF</td><td><a href='StructureDefinition-vrdr-decedent-father.html'>DecedentFather</a></td><td>name.suffix , name.use = official</td><td>string</td><td>-</td></tr>
<tr><td style='text-align: center;'>19</td><td>Mother's Given Name</td><td style='text-align: center;'>MOMGNAME</td><td><a href='StructureDefinition-vrdr-decedent-mother.html'>DecedentMother</a></td><td>name.given , name.use = official</td><td>string</td><td>-</td></tr>
<tr><td style='text-align: center;'>20</td><td>Mother's Middle Name</td><td style='text-align: center;'>MOMMIDNAME</td><td><a href='StructureDefinition-vrdr-decedent-mother.html'>DecedentMother</a></td><td>name.given , name.use = official</td><td>string</td><td>-</td></tr>
<tr><td style='text-align: center;'>21</td><td>Mother's Maiden Surname</td><td style='text-align: center;'>MOMMAIDNAME</td><td><a href='StructureDefinition-vrdr-decedent-mother.html'>DecedentMother</a></td><td>name.family , name.use=maiden</td><td>string </td><td>-</td></tr>
<tr><td style='text-align: center;'>24</td><td>Mother's Suffix</td><td style='text-align: center;'>MOMSUFF</td><td><a href='StructureDefinition-vrdr-decedent-mother.html'>DecedentMother</a></td><td>name.suffix , name.use = official</td><td>string</td><td>-</td></tr>
</tbody>
</table>
### Not Implemented Content

<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>
<tbody>
<tr>
<td style='background-color:#98c1d9; text-align: center; width: 4%;'><b>#</b></td>
<td style='background-color:#98c1d9; width: 16%;'><b>Description</b></td>
<td style='background-color:#98c1d9; text-align: center; width: 8%;'><b>IJE Name*</b></td>
<td style='background-color:#98c1d9; width: 14%;'><b>Value Set/Comments</b></td>
</tr>
<tr><td style='text-align: center;'>25</td><td>Filler</td><td style='text-align: center;'>BLANK1</td><td></td></tr>
<tr><td style='text-align: center;'>35</td><td>Blank for Future Expansion</td><td style='text-align: center;'>BLANK2</td><td></td></tr>
</tbody>
</table>
