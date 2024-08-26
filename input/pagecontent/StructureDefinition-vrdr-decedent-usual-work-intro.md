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
  <td>84</td>
  <td>Occupation -- Literal</td>
  <td>OCCUP</td>
  <td>value.text</td>
  <td>string(40)</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>86</td>
  <td>Industry -- Literal</td>
  <td>INDUST</td>
  <td>component [odh-UsualIndustry	].value.text</td>
  <td>string(40)</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>94</td>
  <td>Occupation -- 4 digit Code</td>
  <td>OCCUPC4</td>
  <td>valueCodeableConcept.coding[occupationCDCCensus2018]</td>
  <td>codeable</td>
  <td><a href='https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.8065'>PHVS_Occupation_CDC_Census2018VS</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>94</td>
  <td>Occupation -- 2018 Standard Occupational Classification (SOC)</td>
  <td>*NO IJE MAPPING*</td>
  <td>valueCodeableConcept.coding[occupationCDCSOC2018]</td>
  <td>codeable</td>
  <td><a href='http://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.8068'>PHVS_Occupation_CDC_SOC2018</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>95</td>
  <td>Industry -- 4 digit Code</td>
  <td>INDUSTC4</td>
  <td>component[odh-UsualIndustry].valueCodeableConcept.coding[industryCDCCensus2018]</td>
  <td>codeable</td>
  <td><a href='https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.8066'>PHVS_Industry_CDC_Census2018VS</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>95</td>
  <td>Industry -- North American Industry Classification System (NAICS)</td>
  <td>*NO IJE MAPPING*</td>
  <td>component[odh-UsualIndustry].valueCodeableConcept.coding[industryCDCNAICS2017]</td>
  <td>codeable</td>
  <td><a href='https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.8067'>PHVS_Industry_CDC_NAICS2017</a></td>
</tr>

</tbody>
</table>

</details>
<p></p>

