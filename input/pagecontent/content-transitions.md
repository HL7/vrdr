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
    table.style1 td:first-of-type {
        text-align: left;
    }
    table.style1 td:nth-of-type(2) {
        text-align: center;
    }
    table.style1 td:nth-of-type(3) {
        text-align: left;
    }
</style>
{% include transitions_documentation.md %}
<br/><br/>

### STU3 Profiles

<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>
<tbody>
<tr>
<td style='background-color:#98c1d9; text-align: center; width: 37%;'><b>Name</b></td>
<td style='background-color:#98c1d9; text-align: center; width: 20%;'><b>Previous Version/Location</b></td>
<td style='background-color:#98c1d9; text-align: center;'><b>Comments/Updates</b></td>
</tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-activity-at-time-of-death'>ActivityAtTimeOfDeath</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-activity-at-time-of-death.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-automated-underlying-cause-of-death'>AutomatedUnderlyingCauseOfDeath</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-automated-underlying-cause-of-death'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-autopsy-performed-indicator'>AutopsyPerformedIndicator</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-autopsy-performed-indicator.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-birth-record-identifier.html'>BirthRecordIdentifier</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-birth-record-identifier.html'>VRDR</a> </td><td>Infant Death Linkeage</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-birth-record-identifier-child.html'>BirthRecordIdentifierChild</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-birth-record-identifier.html'>VRDR</a> </td><td>Added for STU3. Maternal Death Linkeage</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-cause-of-death-coded-bundle'>CauseOfDeathCodedContentBundle</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-cause-of-death-coded-bundle.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-cause-of-death-part1'>CauseOfDeathPart1</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-cause-of-death-part1.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-cause-of-death-part2'>CauseOfDeathPart2</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-cause-of-death-part2.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-certifier.html'>Certifier</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-certifier.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-coding-status-values.html'>CodingStatusValues</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-coding-status-values.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-death-certificate.html'>DeathCertificate</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-death-certificate.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-death-certificate-document'>DeathCertificateDocument</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-death-certificate-document.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-death-certification.html'>DeathCertification</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-death-certification.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-death-location'>DeathLocation</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-death-location.html'>VRDR</a> </td><td>Now depends on abstract <a href='https://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-Location-vr.html'>LocationVitalRecords</a> profile</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-decedent.html'>Decedent</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-decedent.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-decedent-age'>DecedentAge</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-decedent-age.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-decedent-disposition-method'>DecedentDispositionMethod</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-decedent-disposition-method.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-decedent-education-level'>DecedentEducationLevel</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-decedent-education-level.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-decedent-father.html'>DecedentFather</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-decedent-father.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-decedent-military-service.html'>DecedentMilitaryService</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-decedent-military-service.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-decedent-mother'>DecedentMother</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-decedent-mother.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-decedent-spouse.html'>DecedentSpouse</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-decedent-spouse.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-demographic-coded-bundle.html'>DemographicCodedContentBundle</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-demographic-coded-bundle.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-disposition-location.html'>DispositionLocation</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-disposition-location.html'>VRDR</a> </td><td>Now depends on abstract <a href='https://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-Location-vr.html'>LocationVitalRecords</a> profile</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-entity-axis-cause-of-death.html'>EntityAxisCauseOfDeath</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-entity-axis-cause-of-death.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-examiner-contacted.html'>ExaminerContacted</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-examiner-contacted.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-fetal-death-record-identifier.html'>FetalDeathRecordIdentifier</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-birth-record-identifier.html'>VRDR</a> </td><td>Added for STU3. Maternal Death Linkeage</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-funeral-home.html'>FuneralHome</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-funeral-home.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-injury-location'>InjuryLocation</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-injury-location.html'>VRDR</a> </td><td>Now depends on abstract <a href='https://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-Location-vr.html'>LocationVitalRecords</a> profile</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-manner-of-death.html'>MannerOfDeath</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-manner-of-death.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-manual-underlying-cause-of-death.html'>ManualUnderlyingCauseOfDeath</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-manual-underlying-cause-of-death.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-mortality-roster-bundle.html'>MortalityRosterBundle</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-mortality-roster-bundle.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-death-date.html'>DeathDate</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-death-date.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-decedent-pregnancy-status.html'>DecedentPregnancyStatus</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-decedent-pregnancy-status.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-injury-incident.html'>InjuryIncident</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-injury-incident.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-place-of-injury.html'>PlaceOfInjury</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-place-of-injury.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-record-axis-cause-of-death.html'>RecordAxisCauseOfDeath</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-record-axis-cause-of-death.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-surgery-date.html'>SurgeryDate</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-surgery-date.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-vrdr-tobacco-use-contributed-to-death.html'>TobaccoUseContributedToDeath</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-tobacco-use-contributed-to-death.html'>VRDR</a> </td><td>-</td></tr>
</tbody>
</table>


### STU3 Extensions

<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>
<tbody>
<tr>
<td style='background-color:#98c1d9; text-align: center; width: 37%;'><b>Name</b></td>
<td style='background-color:#98c1d9; text-align: center; width: 20%;'><b>Previous Version/Location</b></td>
<td style='background-color:#98c1d9; text-align: center;'><b>Comments/Updates</b></td>
</tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-AliasStatus.html'>AliasStatus</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-AliasStatus.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-FilingFormat.html'>FilingFormat</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-FilingFormat.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-NVSS-SexAtDeath.html'>NVSSSexAtDeath</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-NVSS-SexAtDeath.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-ReplaceStatus.html'>ReplaceStatus</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-ReplaceStatus.html'>VRDR</a> </td><td> Deprecated </td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-SpouseAlive.html'>SpouseAlive</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-SpouseAlive.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/StructureDefinition-StateSpecificField.html'>StateSpecificField</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-StateSpecificField.html'>VRDR</a> </td><td>-</td></tr>
</tbody>
</table>


### STU3 Valuesets

<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>
<tbody>
<tr>
<td style='background-color:#98c1d9; text-align: center; width: 37%;'><b>Name</b></td>
<td style='background-color:#98c1d9; text-align: center; width: 20%;'><b>Previous Version/Location</b></td>
<td style='background-color:#98c1d9; text-align: center;'><b>Comments/Updates</b></td>
</tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/ValueSet-vrdr-activity-at-time-of-death-vs.html'>ActivityAtTimeOfDeathVS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-activity-at-time-of-death-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/ValueSet-vrdr-administrative-gender-vs.html'>AdministrativeGenderVS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-administrative-gender-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/ValueSet-vrdr-certifier-types-vs.html'>CertifierTypesVS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-certifier-types-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/ValueSet-vrdr-contributory-tobacco-use-vs.html'>ContributoryTobaccoUseVS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-contributory-tobacco-use-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/ValueSet-vrdr-date-of-death-determination-methods-vs.html'>DateOfDeathDeterminationMethodsVS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-date-of-death-determination-methods-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/ValueSet-vrdr-edit-bypass-01-vs.html'>EditBypass01VS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-edit-bypass-01-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/ValueSet-vrdr-edit-bypass-012-vs.html'>EditBypass012VS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-edit-bypass-012-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/ValueSet-vrdr-edit-bypass-0124-vs.html'>EditBypass0124VS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-edit-bypass-0124-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/ValueSet-vrdr-filing-format-vs.html'>FilingFormatVS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-filing-format-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/ValueSet-vrdr-icd10-causes-of-death-vs.html'>ICD10CausesOfDeathVS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-icd10-causes-of-death-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/ValueSet-vrdr-intentional-reject-vs.html'>IntentionalRejectVS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-intentional-reject-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/ValueSet-vrdr-manner-of-death-vs.html'>MannerOfDeathVS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-manner-of-death-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/ValueSet-vrdr-method-of-disposition-vs.html'>MethodOfDispositionVS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-method-of-disposition-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/ValueSet-vrdr-place-of-death-vs.html'>PlaceOfDeathVS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-place-of-death-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/ValueSet-vrdr-place-of-injury-vs.html'>PlaceOfInjuryVS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-place-of-injury-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/ValueSet-vrdr-replace-status-vs.html'>ReplaceStatusVS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-replace-status-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/ValueSet-vrdr-spouse-alive-vs.html'>SpouseAliveVS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-spouse-alive-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/ValueSet-vrdr-system-reject-vs.html'>SystemRejectVS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-system-reject-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/ValueSet-vrdr-transax-conversion-vs.html'>TransaxConversionVS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-transax-conversion-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/ValueSet-vrdr-transportation-incident-role-vs.html'>TransportationIncidentRoleVS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-transportation-incident-role-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/ValueSet-ValueSet-death-pregnancy-status.html'>DeathPregnancyStatusVS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-pregnancy-status-vs.html'>VRDR</a> </td><td>-</td></tr>
</tbody>
</table>


### STU3 Codesystems

<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>
<tbody>
<tr>
<td style='background-color:#98c1d9; text-align: center; width: 37%;'><b>Name</b></td>
<td style='background-color:#98c1d9; text-align: center; width: 20%;'><b>Previous Version/Location</b></td>
<td style='background-color:#98c1d9; text-align: center;'><b>Comments/Updates</b></td>
</tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/CodeSystem-vrdr-activity-at-time-of-death-cs.html'>ActivityAtTimeOfDeathCS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-activity-at-time-of-death-cs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/CodeSystem-CodeSystem-death-pregnancy-status.html'>DeathPregnancyStatusCS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-pregnancy-status-cs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/CodeSystem-vrdr-date-of-death-determination-methods-cs.html'>DateOfDeathDeterminationMethodsCS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-date-of-death-determination-methods-cs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/CodeSystem-vrdr-document-section-cs.html'>DocumentSectionCS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-document-section-cs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/CodeSystem-vrdr-filing-format-cs.html'>FilingFormatCS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-filing-format-cs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/CodeSystem-vrdr-intentional-reject-cs.html'>IntentionalRejectCS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-intentional-reject-cs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/CodeSystem-vrdr-organization-type-cs.html'>OrganizationTypeCS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-organization-type-cs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/CodeSystem-vrdr-location-type-cs.html'>LocationTypeCS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-location-type-cs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/CodeSystem-vrdr-replace-status-cs.html'>ReplaceStatusCS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-replace-status-cs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/CodeSystem-vrdr-system-reject-cs.html'>SystemRejectCS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-system-reject-cs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://build.fhir.org/ig/nightingaleproject/vital_records_sandbox_ig/CodeSystem-vrdr-transax-conversion-cs.html'>TransaxConversionCS</a> </td><td><a href='http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-transax-conversion-cs.html'>VRDR</a> </td><td>-</td></tr>
</tbody>
</table>


### Removed Profiles

<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>
<tbody>
<tr>
<td style='background-color:#98c1d9; text-align: center; width: 37%;'><b>Name</b></td>
<td style='background-color:#98c1d9; text-align: center; width: 20%;'><b>Current Version/Location</b></td>
<td style='background-color:#98c1d9; text-align: center;'><b>Comments/Updates</b></td>
</tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-decedent-usual-work.html'>DecedentUsualWork</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-Observation-usual-work-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-emerging-issues.html'>EmergingIssues</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-Observation-emerging-issues-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-input-race-and-ethnicity.html'>InputRaceAndEthnicity</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-input-race-and-ethnicity-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-coded-race-and-ethnicity.html'>CodedRaceAndEthnicity</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-coded-race-and-ethnicity-vr.html'>VRCL</a> </td><td>-</td></tr>
</tbody>
</table>


### Removed Extensions

<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>
<tbody>
<tr>
<td style='background-color:#98c1d9; text-align: center; width: 37%;'><b>Name</b></td>
<td style='background-color:#98c1d9; text-align: center; width: 20%;'><b>Current Version/Location</b></td>
<td style='background-color:#98c1d9; text-align: center;'><b>Comments/Updates</b></td>
</tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-AuxiliaryStateIdentifier1.html'>AuxiliaryStateIdentifier1</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition/AuxiliaryStateIdentifier1'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-AuxiliaryStateIdentifier2.html'>AuxiliaryStateIdentifier2</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition/AuxiliaryStateIdentifier2'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-BypassEditFlag.html'>BypassEditFlag</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-BypassEditFlag.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-CertificateNumber.html'>CertificateNumber</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition/CertificateNumber'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-CityCode.html'>CityCode</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-CityCode.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-Date-Day.html'>DateDay</a> </td><td>Removed</td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-Date-Month.html'>DateMonth</a> </td><td>Removed</td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-Date-Time.html'>DateTime</a> </td><td>Removed</td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-Date-Year.html'>DateYear</a> </td><td>Removed</td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-DistrictCode.html'>DistrictCode</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-DistrictCode.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-Location-Jurisdiction-Id.html'>LocationJurisdictionId</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-Extension-jurisdiction-id-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-PartialDate.html'>PartialDate</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-ExtensionPartialDateVitalRecords.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-PartialDateTime.html'>PartialDateTime</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-ExtensionPartialDateTimeVitalRecords.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-PostDirectional.html'>PostDirectional</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-PostDirectional.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-PreDirectional.html'>PreDirectional</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-PreDirectional.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-StreetDesignator.html'>StreetDesignator</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-StreetDesignator.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-StreetName.html'>StreetName</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-StreetName.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-StreetNumber.html'>StreetNumber</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-StreetNumber.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-UnitOrAptNumber.html'>UnitOrAptNumber</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-UnitOrAptNumber.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-WithinCityLimitsIndicator.html'>WithinCityLimitsIndicator</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/StructureDefinition-Extension-within-city-limits-indicator-vr.html'>VRCL</a> </td><td>-</td></tr>
</tbody>
</table>


### Removed Valuesets

<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>
<tbody>
<tr>
<td style='background-color:#98c1d9; text-align: center; width: 37%;'><b>Name</b></td>
<td style='background-color:#98c1d9; text-align: center; width: 20%;'><b>Current Version/Location</b></td>
<td style='background-color:#98c1d9; text-align: center;'><b>Comments/Updates</b></td>
</tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-birthplace-country-vs.html'>BirthplaceCountryVS</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/ValueSet-ValueSet-birthplace-country-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-canada-provinces-vs.html'>CanadaProvincesVS</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/CodeSystem-CodeSystem-canadian-provinces-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-edit-bypass-01234-vs.html'>EditBypass01234VS</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/ValueSet-valueset-edit-bypass-01234-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-education-level-vs.html'>EducationLevelVS</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/ValueSet-ValueSet-education-level-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-hispanic-no-unknown-vs.html'>HispanicNoUnknownVS</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/ValueSet-ValueSet-hispanic-no-unknown-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-hispanic-origin-vs.html'>HispanicOriginVS</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/ValueSet-ValueSet-hispanic-origin-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-jurisdiction-vs.html'>JurisdictionVS</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/ValueSet-ValueSet-jurisdiction-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-marital-status-vs.html'>MaritalStatusVS</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/ValueSet-ValueSet-marital-status-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-race-code-vs.html'>RaceCodeVS</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/ValueSet-ValueSet-race-code-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-race-missing-value-reason-vs.html'>RaceMissingValueReasonVS</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/ValueSet-ValueSet-race-missing-value-reason-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-race-recode-40-vs.html'>RaceRecode40VS</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/ValueSet-ValueSet-race-recode-40-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-residence-country-vs.html'>ResidenceCountryVS</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/ValueSet-ValueSet-residence-country-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-states-territories-provinces-vs.html'>StatesTerritoriesAndProvincesVS</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/ValueSet-ValueSet-states-territories-provinces-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-usstates-territories-vs.html'>USStatesAndTerritoriesVS</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/ValueSet-ValueSet-usstates-territories-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-units-of-age-vs.html'>UnitsOfAgeVS</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/ValueSet-ValueSet-units-of-age-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-yes-no-unknown-vs.html'>YesNoUnknownVS</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/ValueSet-ValueSet-yes-no-unknown-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-yes-no-unknown-not-applicable-vs.html'>YesNoUnknownNotApplicableVS</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/ValueSet-ValueSet-yes-no-unknown-not-applicable-vr.html'>VRCL</a> </td><td>-</td></tr>
</tbody>
</table>


### Removed Codesystems

<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>
<tbody>
<tr>
<td style='background-color:#98c1d9; text-align: center; width: 37%;'><b>Name</b></td>
<td style='background-color:#98c1d9; text-align: center; width: 20%;'><b>Current Version/Location</b></td>
<td style='background-color:#98c1d9; text-align: center;'><b>Comments/Updates</b></td>
</tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-bypass-edit-flag-cs.html'>BypassEditFlagCS</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/CodeSystem-CodeSystem-vr-edit-flags.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-canadian-provinces-cs.html'>CanadianProvincesCS</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/CodeSystem-CodeSystem-canadian-provinces-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-country-code-cs.html'>CountryCodeCS</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/CodeSystem-CodeSystem-country-code-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-hispanic-origin-cs.html'>HispanicOriginCS</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/CodeSystem-CodeSystem-hispanic-origin-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-jurisdictions-cs.html'>JurisdictionsCS</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/CodeSystem-CodeSystem-jurisdictions-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-missing-value-reason-cs.html'>MissingValueReasonCS</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/CodeSystem-CodeSystem-missing-value-reason-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-race-code-cs.html'>RaceCodeCS</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/CodeSystem-CodeSystem-missing-value-reason-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-race-recode-40-cs.html'>RaceRecode40CS</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/CodeSystem-CodeSystem-race-recode-40-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-component-cs.html'>ComponentCS</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/CodeSystem-codesystem-vr-component.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='http://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-observations-cs.html'>ObservationsCS</a> </td><td><a href='http://build.fhir.org/ig/HL7/vr-common-library/CodeSystem-CodeSystem-local-observation-codes-vr.html'>VRCL</a> </td><td>-</td></tr>
</tbody>
</table>

