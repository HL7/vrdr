The profile includes a component for the time of death pronouncement that is not currently used for death certificate submission.

  The certificate signing date is passed via the <a href='StructureDefinition-vrdr-death-certification.html'>DeathCertification</a> profile.

  The death date specifies the date the death occurred, not the date the record was submitted.

  The pronouncer of death can be specified by reference to a USCore Practitioner instance from the 'performer' field.   This instance should be included in the <a href='StructureDefinition-vrdr-death-certificate-document.html'>DeathCertificateDocument</a> and referenced from the <a href='StructureDefinition-vrdr-death-certificate.html'>DeathCertificate</a>.

  The method of date of death determination is not used for the Death Record submission process, and thus does not appear in the table below.  The binding
  to <a href='ValueSet-vrdr-date-of-death-determination-methods-vs.html'>DateOfDeathDeterminationMethodsVS</a> is included for compatibility with the Medicolegal Death Investigation (<a href='https://hl7.org/fhir/us/mdi/'>MDI</a>) Implementation Guide.  The valueset only
includes the values used by MDI, but is bound [extensibly](http://hl7.org/fhir/R4/terminologies.html#extensible).  If a jurisdiction chooses to use this field, and requires additional values (e.g., 'presumed'), these values can be used
while remaining in full conformance with the VRDR IG.

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
  <td>1</td>
  <td>Date of Death--Year</td>
  <td>DOD_YR</td>
  <td>value</td>
  <td>dateTime</td>
  <td>Required for processing</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>31</td>
  <td>Place of Death</td>
  <td>DPLACE</td>
  <td>component[placeOfDeath].value</td>
  <td>codeable</td>
  <td><a href='ValueSet-vrdr-place-of-death-vs.html'>PlaceOfDeathVS</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>34</td>
  <td>Date of Death--Month</td>
  <td>DOD_MO</td>
  <td>value</td>
  <td>dateTime</td>
  <td>See <a href='usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>35</td>
  <td>Date of Death--Day</td>
  <td>DOD_DY</td>
  <td>value</td>
  <td>dateTime</td>
  <td>See <a href='usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>36</td>
  <td>Time of Death</td>
  <td>TOD</td>
  <td>value</td>
  <td>dateTime</td>
  <td>See <a href='usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>218</td>
  <td>Person Pronouncing Date Signed</td>
  <td>PPDATESIGNED</td>
  <td>component[datetimePronouncedDead].valueDateTime</td>
  <td>dateTime</td>
  <td>See <a href='usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>219</td>
  <td>Person Pronouncing Time Pronounced</td>
  <td>PPTIME</td>
  <td>component[datetimePronouncedDead].valueDateTime if a date is also specified, or component[datetimePronouncedDead].valueTime if no date is specified</td>
  <td>dateTime or time</td>
  <td>See <a href='usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td>
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
  <td>8</td>
  <td>Date of Death--Month</td>
  <td>DOD_MO</td>
  <td>value</td>
  <td>dateTime</td>
  <td>See <a href='usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality Roster</td>
  <td>9</td>
  <td>Date of Death--Day</td>
  <td>DOD_DY</td>
  <td>value</td>
  <td>dateTime</td>
  <td>See <a href='usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality Roster</td>
  <td>10</td>
  <td>Date of Death--Year</td>
  <td>DOD_YR</td>
  <td>value</td>
  <td>dateTime</td>
  <td>Required for processing</td>
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
  <td style='text-align: center'>14</td>
  <td>Place of Death</td>
  <td>component[placeOfDeath].value</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>24</td>
  <td>Date Pronounced Dead</td>
  <td>component[datetimePronouncedDead ].valueDateTime</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>25</td>
  <td>Time Pronounced Dead</td>
  <td>component[datetimePronouncedDead ].valueDateTime</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>28</td>
  <td>Date signed</td>
  <td>effective</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>29</td>
  <td>Actual or Presumed Date of Death</td>
  <td>value</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>30</td>
  <td>Actual or Presumed Time of Death</td>
  <td>value</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
</tbody>
</table>
