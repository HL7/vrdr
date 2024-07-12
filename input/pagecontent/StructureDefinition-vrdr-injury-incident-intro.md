
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
  <td>114</td>
  <td>Date of injury--month</td>
  <td>DOI_MO</td>
  <td>effective</td>
  <td>dateTime</td>
  <td>See <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>115</td>
  <td>Date of injury--day</td>
  <td>DOI_DY</td>
  <td>effective</td>
  <td>dateTime</td>
  <td>See <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>116</td>
  <td>Date of injury--year</td>
  <td>DOI_YR</td>
  <td>effective</td>
  <td>dateTime</td>
  <td>See <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>117</td>
  <td>Time of injury</td>
  <td>TOI_HR</td>
  <td>effective</td>
  <td>dateTime</td>
  <td>See <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>118</td>
  <td>Injury at work</td>
  <td>WORKINJ</td>
  <td>component[InjuryAtWork].value</td>
  <td>codeable</td>
  <td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-yes-no-unknown-not-applicable-vr.html'>ValueSetYesNoUnknownNotApplicableVitalRecords</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>126</td>
  <td>Time of Injury Unit</td>
  <td>TOI_UNIT</td>
  <td>effective</td>
  <td>implicit</td>
  <td></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>173</td>
  <td>Place of Injury- literal</td>
  <td>POILITRL</td>
  <td>component[placeOfInjury].value.text</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>174</td>
  <td>Describe How Injury Occurred</td>
  <td>HOWINJ</td>
  <td>value.text</td>
  <td>string</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>175</td>
  <td>If Transportation Accident, Specify</td>
  <td>TRANSPRT</td>
  <td>component[transportationRole].value.  (if value.code = OTH) the role should be specified in value.text)</td>
  <td>codeable</td>
  <td><a href='ValueSet-vrdr-transportation-incident-role-vs.html'>TransportationIncidentRoleVS</a></td>
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
  <td style='text-align: center'>38</td>
  <td>Date of Injury</td>
  <td>effective</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>39</td>
  <td>Time of Injury</td>
  <td>effective</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>40</td>
  <td>Place of Injury</td>
  <td>component[placeOfInjury].value.text</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>41</td>
  <td>Injury at Work?</td>
  <td>component[InjuryAtWork].value</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>43</td>
  <td>Describe How Injury Occurred</td>
  <td>value.text</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>44</td>
  <td>If Transportation Injury, Specify</td>
  <td>component[transportationRole].value</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
</tbody>
</table>
