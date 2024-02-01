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
This page provides the mapping from standard forms and worksheets used to exchange death information to the FHIR resources as defined in this IG.

This IG supports communicating information from an EHR system to the jurisdictional vital records offices and to NCHS for standard reporting forms:
 * [U.S. Standard Certificate Of Death](https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf) ([see table](vrdr_forms_mapping.html#us-standard-certificate-of-death-mapping))

Information on updates to the death forms can be found at NVSS [Revisions of the U.S. Standard Certificates and Reports](https://www.cdc.gov/nchs/nvss/revisions-of-the-us-standard-certificates-and-reports.htm)

### <a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'>U.S. Standard Certificate of Death Mapping</a>

<table  align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>
<thead>
  <tr>
    <td style='background-color:#98c1d9; text-align: center; width: 5%;'><b>Item #</b></td>
    <td style='background-color:#98c1d9; width: 25%;'><b>Form Element</b></td>
    <td style='background-color:#98c1d9; width: 25%;'><b>FHIR Profile</b></td>
    <td style='background-color:#98c1d9; width: 20%;'><b>FHIR Field</b></td>
  </tr>
</thead>
<tbody>
<tr>
  <td style='text-align: center'>1</td>
  <td>Decedent's Legal Name</td>
  <td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td>
  <td>name</td>
</tr>
<tr>
  <td style='text-align: center'>2</td>
  <td>Sex</td>
  <td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td>
  <td><a href='{{site.data.fhir.ver.hl7fhiruscore}}/StructureDefinition-NVSS-SexAtDeath.html'>extension:NVSS-SexAtDeath</a></td>
</tr>
<tr>
  <td style='text-align: center'>3</td>
  <td>Social Security Number</td>
  <td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td>
  <td>identifier:SSN</td>
</tr>
<tr>
  <td style='text-align: center'>4a</td>
  <td>Age</td>
  <td><a href='StructureDefinition-vrdr-decedent-age.html'>DecedentAge</a></td>
  <td>value</td>
</tr>
<tr>
  <td style='text-align: center'>4b</td>
  <td>Under 1 Year</td>
  <td><a href='StructureDefinition-vrdr-decedent-age.html'>DecedentAge</a></td>
  <td>value</td>
</tr>
<tr>
  <td style='text-align: center'>4c</td>
  <td>Under 1 Day</td>
  <td><a href='StructureDefinition-vrdr-decedent-age.html'>DecedentAge</a></td>
  <td>value</td>
</tr>
<tr>
  <td style='text-align: center'>5</td>
  <td>Date of Birth</td>
  <td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td>
  <td>birthDate</td>
</tr>
<tr>
  <td style='text-align: center'>6</td>
  <td>Birthplace</td>
  <td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td>
  <td><a href='http://hl7.org/fhir/extensions/StructureDefinition-patient-birthPlace.html'>extension:birthPlace</a></td>
</tr>
<tr>
  <td style='text-align: center'>7a</td>
  <td>Residence-State</td>
  <td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td>
  <td>address.state</td>
</tr>
<tr>
  <td style='text-align: center'>7b</td>
  <td>County</td>
  <td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td>
  <td>address.district</td>
</tr>
<tr>
  <td style='text-align: center'>7c</td>
  <td>City or Town</td>
  <td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td>
  <td>address.city</td>
</tr>
<tr>
  <td style='text-align: center'>7d</td>
  <td>Street and Number</td>
  <td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td>
  <td>address.line</td>
</tr>
<tr>
  <td style='text-align: center'>7e</td>
  <td>Apt No</td>
  <td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td>
  <td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/StructureDefinition-UnitOrAptNumber.html'>address.extension:unitnumber</a></td>
</tr>
<tr>
  <td style='text-align: center'>7f</td>
  <td>Zip Code</td>
  <td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td>
  <td>address.postalCode</td>
</tr>
<tr>
  <td style='text-align: center'>7g</td>
  <td>Inside City Limits?</td>
  <td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td>
  <td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/StructureDefinition-Extension-within-city-limits-indicator-vr.html'>address.extension:withinCityLimitsIndicator</a></td>
</tr>
<tr>
  <td style='text-align: center'>8</td>
  <td>Ever in US Armed Forces?</td>
  <td><a href='StructureDefinition-vrdr-decedent-military-service.html'>DecedentMilitaryService</a></td>
  <td>value</td>
</tr>
<tr>
  <td style='text-align: center'>9</td>
  <td>Marital Status at Time of Death</td>
  <td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td>
  <td>maritalStatus</td>
</tr>
<tr>
  <td style='text-align: center'>10</td>
  <td>Surviving Spouse's Name</td>
  <td><a href='StructureDefinition-vrdr-decedent-spouse.html'>DecedentSpouse</a></td>
  <td>name</td>
</tr>
<tr>
  <td style='text-align: center'>11</td>
  <td>Father's Name</td>
  <td><a href='StructureDefinition-vrdr-decedent-father.html'>DecedentFather</a></td>
  <td>name</td>
</tr>
<tr>
  <td style='text-align: center'>12</td>
  <td>Mother's Name Prior to First Marriage</td>
  <td><a href='StructureDefinition-vrdr-decedent-mother.html'>DecedentMother</a></td>
  <td>name</td>
</tr>
<tr>
  <td style='text-align: center'>13a</td>
  <td>Informant's Name</td>
  <td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td>
  <td>contact.name</td>
</tr>
<tr>
  <td style='text-align: center'>13b</td>
  <td>Informant's Relationship to Decedent</td>
  <td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td>
  <td>contact.type.text</td>
</tr>
<tr>
  <td style='text-align: center'>13c</td>
  <td>Informant's Mailing Address</td>
  <td><a href='StructureDefinition-vrdr-decedent.html'>Decedent</a></td>
  <td>contact.type.address</td>
</tr>
<tr>
  <td style='text-align: center'>14</td>
  <td>Place of Death</td>
  <td><a href='StructureDefinition-vrdr-death-date.html'>DeathDate</a></td>
  <td>component[placeOfDeath].value</td>
</tr>
<tr>
  <td style='text-align: center'>15</td>
  <td>Facility Name</td>
  <td><a href='StructureDefinition-vrdr-funeral-home.html'>FuneralHome</a></td>
  <td>name</td>
</tr>
<tr>
  <td style='text-align: center'>16</td>
  <td>City or Town, State, and Zip Code</td>
  <td><a href='StructureDefinition-vrdr-funeral-home.html'>FuneralHome</a></td>
  <td>address</td>
</tr>
<tr>
  <td style='text-align: center'>17</td>
  <td>County of Death</td>
  <td><a href='StructureDefinition-vrdr-death-location.html'>DeathLocation</a></td>
  <td>address.district</td>
</tr>
<tr>
  <td style='text-align: center'>18</td>
  <td>Method of Disposition</td>
  <td><a href='StructureDefinition-vrdr-decedent-disposition-method.html'>DecedentDispositionMethod</a></td>
  <td>value</td>
</tr>
<tr>
  <td style='text-align: center'>19</td>
  <td>Place of Disposition</td>
  <td><a href='StructureDefinition-vrdr-disposition-location.html'>DispositionLocation</a></td>
  <td>name</td>
</tr>
<tr>
  <td style='text-align: center'>20</td>
  <td>Location-City, Town, and State</td>
  <td><a href='StructureDefinition-vrdr-disposition-location.html'>DispositionLocation</a></td>
  <td>address</td>
</tr>
<tr>
  <td style='text-align: center'>21</td>
  <td>Name and Complete Address of Funeral Facility</td>
  <td><a href='StructureDefinition-vrdr-funeral-home.html'>FuneralHome</a></td>
  <td>name, address</td>
</tr>
<tr>
  <td style='text-align: center'>23</td>
  <td>License Number</td>
  <td><a href='StructureDefinition-vrdr-funeral-home.html'>FuneralHome</a></td>
  <td>identifier:NPI</td>
</tr>
<tr>
  <td style='text-align: center'>24</td>
  <td>Date Pronounced Dead</td>
  <td><a href='StructureDefinition-vrdr-death-date.html'>DeathDate</a></td>
  <td>component[datetimePronouncedDead ].valueDateTime</td>
</tr>
<tr>
  <td style='text-align: center'>25</td>
  <td>Time Pronounced Dead</td>
  <td><a href='StructureDefinition-vrdr-death-date.html'>DeathDate</a></td>
  <td>component[datetimePronouncedDead ].valueDateTime</td>
</tr>
<tr>
  <td style='text-align: center'>27</td>
  <td>License Number</td>
  <td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/StructureDefinition-Practitioner-vr.html'>PractitionerVitalRecords</a></td>
  <td>identifier:NPI</td>
</tr>
<tr>
  <td style='text-align: center'>28</td>
  <td>Date signed</td>
  <td><a href='StructureDefinition-vrdr-death-date.html'>DeathDate</a></td>
  <td>effective</td>
</tr>
<tr>
  <td style='text-align: center'>29</td>
  <td>Actual or Presumed Date of Death</td>
  <td><a href='StructureDefinition-vrdr-death-date.html'>DeathDate</a></td>
  <td>value</td>
</tr>
<tr>
  <td style='text-align: center'>30</td>
  <td>Actual or Presumed Time of Death</td>
  <td><a href='StructureDefinition-vrdr-death-date.html'>DeathDate</a></td>
  <td>value</td>
</tr>
<tr>
  <td style='text-align: center'>31</td>
  <td>Was Medical Examiner or Coroner Contacted?</td>
  <td><a href='StructureDefinition-vrdr-examiner-contacted.html'>ExaminerContacted</a></td>
  <td>value</td>
</tr>
<tr>
  <td style='text-align: center'>32Part1</td>
  <td>Cause of Death Line a</td>
  <td><a href='StructureDefinition-vrdr-cause-of-death-part1.html'>CauseOfDeathPart1</a></td>
  <td>value.text, component[lineNumber] = 1</td>
</tr>
<tr>
  <td style='text-align: center'>32Part1</td>
  <td>Cause of Death Line b</td>
  <td><a href='StructureDefinition-vrdr-cause-of-death-part1.html'>CauseOfDeathPart1</a></td>
  <td>value.text, component[lineNumber] = 2</td>
</tr>
<tr>
  <td style='text-align: center'>32Part1</td>
  <td>Cause of Death Line c</td>
  <td><a href='StructureDefinition-vrdr-cause-of-death-part1.html'>CauseOfDeathPart1</a></td>
  <td>value.text, component[lineNumber] = 3</td>
</tr>
<tr>
  <td style='text-align: center'>32Part1</td>
  <td>Cause of Death Line d</td>
  <td><a href='StructureDefinition-vrdr-cause-of-death-part1.html'>CauseOfDeathPart1</a></td>
  <td>value.text, component[lineNumber] = 4</td>
</tr>
<tr>
  <td style='text-align: center'>32Part2</td>
  <td>Other Cause of Death</td>
  <td><a href='StructureDefinition-vrdr-cause-of-death-part2.html'>CauseOfDeathPart2</a></td>
  <td>value.text</td>
</tr>
<tr>
  <td style='text-align: center'>33</td>
  <td>Was an Autopsy Performed?</td>
  <td><a href='StructureDefinition-vrdr-autopsy-performed-indicator.html'>AutopsyPerformedIndicator</a></td>
  <td>value</td>
</tr>
<tr>
  <td style='text-align: center'>34</td>
  <td>Were Autopsy Findings Available to Complete the Cause of Death?</td>
  <td><a href='StructureDefinition-vrdr-autopsy-performed-indicator.html'>AutopsyPerformedIndicator</a></td>
  <td>component[ autopsyResultsAvailable ].value</td>
</tr>
<tr>
  <td style='text-align: center'>35</td>
  <td>Did Tobacco Use Contribute to Death?</td>
  <td><a href='StructureDefinition-vrdr-tobacco-use-contributed-to-death.html'>TobaccoUseContributedToDeath</a></td>
  <td>value</td>
</tr>
<tr>
  <td style='text-align: center'>36</td>
  <td>Pregnancy Status</td>
  <td><a href='StructureDefinition-vrdr-decedent-pregnancy-status.html'>DecedentPregnancyStatus</a></td>
  <td>value</td>
</tr>
<tr>
  <td style='text-align: center'>37</td>
  <td>Manner of Death</td>
  <td><a href='StructureDefinition-vrdr-manner-of-death.html'>MannerOfDeath</a></td>
  <td>value</td>
</tr>
<tr>
  <td style='text-align: center'>38</td>
  <td>Date of Injury</td>
  <td><a href='StructureDefinition-vrdr-injury-incident.html'>InjuryIncident</a></td>
  <td>effective</td>
</tr>
<tr>
  <td style='text-align: center'>39</td>
  <td>Time of Injury</td>
  <td><a href='StructureDefinition-vrdr-injury-incident.html'>InjuryIncident</a></td>
  <td>effective</td>
</tr>
<tr>
  <td style='text-align: center'>40</td>
  <td>Place of Injury</td>
  <td><a href='StructureDefinition-vrdr-injury-incident.html'>InjuryIncident</a></td>
  <td>component[ placeOfInjury ].value.text</td>
</tr>
<tr>
  <td style='text-align: center'>41</td>
  <td>Injury at Work?</td>
  <td><a href='StructureDefinition-vrdr-injury-incident.html'>InjuryIncident</a></td>
  <td>component[InjuryAtWork].value</td>
</tr>
<tr>
  <td style='text-align: center'>42</td>
  <td>Location of Injury</td>
  <td><a href='StructureDefinition-vrdr-injury-location.html'>InjuryLocation</a></td>
  <td>address</td>
</tr>
<tr>
  <td style='text-align: center'>43</td>
  <td>Describe How Injury Occurred</td>
  <td><a href='StructureDefinition-vrdr-injury-incident.html'>InjuryIncident</a></td>
  <td>value.text</td>
</tr>
<tr>
  <td style='text-align: center'>44</td>
  <td>If Transportation Injury, Specify</td>
  <td><a href='StructureDefinition-vrdr-injury-incident.html'>InjuryIncident</a></td>
  <td>component[ transportationRole ].value</td>
</tr>
<tr>
  <td style='text-align: center'>45</td>
  <td>Certifier</td>
  <td><a href='StructureDefinition-vrdr-death-certification.html'>DeathCertification</a></td>
  <td>performer.function</td>
</tr>
<tr>
  <td style='text-align: center'>46</td>
  <td>Name, Address, and Zip Code of Person Completing Cause of Death</td>
  <td><a href='StructureDefinition-vrdr-certifier.html'>Certifier</a></td>
  <td>name, address</td>
</tr>
<tr>
  <td style='text-align: center'>47</td>
  <td>Title of Certifier</td>
  <td><a href='StructureDefinition-vrdr-certifier.html'>Certifier</a></td>
  <td>qualification</td>
</tr>
<tr>
  <td style='text-align: center'>48</td>
  <td>License Number</td>
  <td><a href='StructureDefinition-vrdr-certifier.html'>Certifier</a></td>
  <td>identifier:NPI</td>
</tr>
<tr>
  <td style='text-align: center'>49</td>
  <td>Date Certified</td>
  <td><a href='StructureDefinition-vrdr-death-certification.html'>DeathCertification</a></td>
  <td>performed</td>
</tr>
<tr>
  <td style='text-align: center'>50</td>
  <td>For Registrar Only-Date Filed</td>
  <td><a href='StructureDefinition-vrdr-death-certificate.html'>DeathCertificate</a></td>
  <td>date</td>
</tr>
<tr>
  <td style='text-align: center'>51</td>
  <td>Decedent's Education</td>
  <td><a href='StructureDefinition-vrdr-decedent-education-level.html'>DecedentEducationLevel</a></td>
  <td>value</td>
</tr>
<tr>
  <td style='text-align: center'>52</td>
  <td>Decedent of Hispanic Origin?</td>
  <td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/StructureDefinition-input-race-and-ethnicity-vr.html'>ObservationInputRaceAndEthnicityVitalRecords</a></td>
  <td></td>
</tr>
<tr>
  <td style='text-align: center'>53</td>
  <td>Decedent's Race</td>
  <td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/StructureDefinition-input-race-and-ethnicity-vr.html'>ObservationInputRaceAndEthnicityVitalRecords</a></td>
  <td></td>
</tr>
<tr>
  <td style='text-align: center'>54</td>
  <td>Decedent's Usual Occupation</td>
  <td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/StructureDefinition-Observation-usual-work-vr.html'>ObservationUsualWorkVitalRecords</a></td>
  <td>value.text</td>
</tr>
<tr>
  <td style='text-align: center'>55</td>
  <td>Kind of Business/Industry</td>
  <td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/StructureDefinition-Observation-usual-work-vr.html'>ObservationUsualWorkVitalRecords</a></td>
  <td>component [odh-UsualIndustry].value.text</td>
</tr>
</tbody>
</table>
