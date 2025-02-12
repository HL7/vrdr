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


### New STU3 Profiles

<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>
<tbody>
<tr>
<td style='background-color:#98c1d9; text-align: center; width: 37%;'><b>Name</b></td>
<td style='background-color:#98c1d9; text-align: center;'><b>Comments/Updates</b></td>
</tr>
<tr><td> <a href='StructureDefinition-vrdr-birth-record-identifier-child.html'>BirthRecordIdentifierChild</a> </td><td>Maternal Death Linkeage</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-fetal-death-record-identifier.html'>FetalDeathRecordIdentifier</a> </td><td>Maternal Death Linkeage</td></tr>
<tr><td> <a href='StructureDefinition-industry-occupation-coded-content-bundle.html'>IndustryOccupationCodedContentBundle</a></td> <td>Support exchange of Coded Industry and Occupation</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-mortician.html'>Mortician</a> </td><td>Support of Funeral Home use cases</td></tr>
</tbody>
</table>


### STU3 Profiles

<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>
<tbody>
<tr>
<td style='background-color:#98c1d9; text-align: center; width: 37%;'><b>Name</b></td>
<td style='background-color:#98c1d9; text-align: center; width: 20%;'><b>Previous Version/Location</b></td>
<td style='background-color:#98c1d9; text-align: center;'><b>Comments/Updates</b></td>
</tr>
<tr><td> <a href='StructureDefinition-vrdr-activity-at-time-of-death.html'>ActivityAtTimeOfDeath</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-activity-at-time-of-death.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-automated-underlying-cause-of-death.html'>AutomatedUnderlyingCauseOfDeath</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-automated-underlying-cause-of-death.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-autopsy-performed-indicator.html'>AutopsyPerformedIndicator</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-autopsy-performed-indicator.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-birth-record-identifier.html'>BirthRecordIdentifier</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-birth-record-identifier.html'>VRDR</a> </td><td>Infant Death Linkeage</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-cause-of-death-coded-content-bundle.html'>CauseOfDeathCodedContentBundle</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-cause-of-death-coded-content-bundle.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-cause-of-death-part1.html'>CauseOfDeathPart1</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-cause-of-death-part1.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-cause-of-death-part2.html'>CauseOfDeathPart2</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-cause-of-death-part2.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-certifier.html'>Certifier</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-certifier.html'>VRDR</a> </td><td>Now depends on <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/StructureDefinition-Practitioner-vr.html'>PractitionerVitalRecords</a> profile</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-coding-status-values.html'>CodingStatusValues</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-coding-status-values.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-death-certificate.html'>DeathCertificate</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-death-certificate.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-death-certificate-document.html'>DeathCertificateDocument</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-death-certificate-document.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-death-certification.html'>DeathCertification</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-death-certification.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-death-location.html'>DeathLocation</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-death-location.html'>VRDR</a> </td><td>Now depends on abstract <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/StructureDefinition-Location-vr.html'>LocationVitalRecords</a> profile</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-decedent.html'>Decedent</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-decedent.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-decedent-age.html'>DecedentAge</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-decedent-age.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-decedent-disposition-method.html'>DecedentDispositionMethod</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-decedent-disposition-method.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-decedent-education-level.html'>DecedentEducationLevel</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-decedent-education-level.html'>VRDR</a> </td><td>Based on VRCL Profile</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-decedent-father.html'>DecedentFather</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-decedent-father.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-decedent-military-service.html'>DecedentMilitaryService</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-decedent-military-service.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-decedent-mother.html'>DecedentMother</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-decedent-mother.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-decedent-spouse.html'>DecedentSpouse</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-decedent-spouse.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-decedent-usual-work.html'>DecedentUsualWork</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-decedent-usual-work.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-demographic-coded-content-bundle.html'>DemographicCodedContentBundle</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-demographic-coded-content-bundle.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-disposition-location.html'>DispositionLocation</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-disposition-location.html'>VRDR</a> </td><td>Now depends on abstract <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/StructureDefinition-Location-vr.html'>LocationVitalRecords</a> profile</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-entity-axis-cause-of-death.html'>EntityAxisCauseOfDeath</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-entity-axis-cause-of-death.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-death-date.html'>DeathDate</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-death-date.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-examiner-contacted.html'>ExaminerContacted</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-examiner-contacted.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-funeral-home.html'>FuneralHome</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-funeral-home.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-injury-location.html'>InjuryLocation</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-injury-location.html'>VRDR</a> </td><td>Now depends on abstract <a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/StructureDefinition-Location-vr.html'>LocationVitalRecords</a> profile</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-manner-of-death.html'>MannerOfDeath</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-manner-of-death.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-manual-underlying-cause-of-death.html'>ManualUnderlyingCauseOfDeath</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-manual-underlying-cause-of-death.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-mortality-roster-bundle.html'>MortalityRosterBundle</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-mortality-roster-bundle.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-decedent-pregnancy-status.html'>DecedentPregnancyStatus</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-decedent-pregnancy-status.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-injury-incident.html'>InjuryIncident</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-injury-incident.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-place-of-injury.html'>PlaceOfInjury</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-place-of-injury.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-record-axis-cause-of-death.html'>RecordAxisCauseOfDeath</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-record-axis-cause-of-death.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-surgery-date.html'>SurgeryDate</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-surgery-date.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-vrdr-tobacco-use-contributed-to-death.html'>TobaccoUseContributedToDeath</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-tobacco-use-contributed-to-death.html'>VRDR</a> </td><td>-</td></tr>
</tbody>
</table>

### New STU3 Extensions

<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>
<tbody>
<tr>
<td style='background-color:#98c1d9; text-align: center; width: 37%;'><b>Name</b></td>
<td style='background-color:#98c1d9; text-align: center;'><b>Comments/Updates</b></td>
</tr>
<tr><td> <a href='StructureDefinition-practitioner-role.html'>PractitionerRole</a> </td><td>Distinguishes Death Certifier and Mortician from other Practitioner types</td></tr>
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
<tr><td> <a href='StructureDefinition-AliasStatus.html'>AliasStatus</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-AliasStatus.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-FilingFormat.html'>FilingFormat</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-FilingFormat.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-NVSS-SexAtDeath.html'>NVSSSexAtDeath</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-NVSS-SexAtDeath.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-ReplaceStatus.html'>ReplaceStatus</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-ReplaceStatus.html'>VRDR</a> </td><td> Deprecated </td></tr>
<tr><td> <a href='StructureDefinition-SpouseAlive.html'>SpouseAlive</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-SpouseAlive.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-StateSpecificField.html'>StateSpecificField</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-StateSpecificField.html'>VRDR</a> </td><td>-</td></tr>
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
<tr><td> <a href='ValueSet-vrdr-activity-at-time-of-death-vs.html'>ActivityAtTimeOfDeathVS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-activity-at-time-of-death-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='ValueSet-vrdr-administrative-gender-vs.html'>AdministrativeGenderVS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-administrative-gender-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='ValueSet-vrdr-certifier-types-vs.html'>CertifierTypesVS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-certifier-types-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='ValueSet-vrdr-contributory-tobacco-use-vs.html'>ContributoryTobaccoUseVS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-contributory-tobacco-use-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='ValueSet-vrdr-date-of-death-determination-methods-vs.html'>DateOfDeathDeterminationMethodsVS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-date-of-death-determination-methods-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='ValueSet-vrdr-edit-bypass-01-vs.html'>EditBypass01VS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-edit-bypass-01-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='ValueSet-vrdr-edit-bypass-012-vs.html'>EditBypass012VS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-edit-bypass-012-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='ValueSet-vrdr-edit-bypass-0124-vs.html'>EditBypass0124VS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-edit-bypass-0124-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='ValueSet-vrdr-filing-format-vs.html'>FilingFormatVS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-filing-format-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='ValueSet-vrdr-icd10-causes-of-death-vs.html'>ICD10CausesOfDeathVS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-icd10-causes-of-death-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='ValueSet-vrdr-intentional-reject-vs.html'>IntentionalRejectVS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-intentional-reject-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='ValueSet-vrdr-manner-of-death-vs.html'>MannerOfDeathVS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-manner-of-death-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='ValueSet-vrdr-method-of-disposition-vs.html'>MethodOfDispositionVS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-method-of-disposition-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='ValueSet-vrdr-place-of-death-vs.html'>PlaceOfDeathVS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-place-of-death-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='ValueSet-vrdr-place-of-injury-vs.html'>PlaceOfInjuryVS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-place-of-injury-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='ValueSet-vrdr-replace-status-vs.html'>ReplaceStatusVS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-replace-status-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='ValueSet-vrdr-spouse-alive-vs.html'>SpouseAliveVS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-spouse-alive-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='ValueSet-vrdr-system-reject-vs.html'>SystemRejectVS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-system-reject-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='ValueSet-vrdr-transax-conversion-vs.html'>TransaxConversionVS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-transax-conversion-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='ValueSet-vrdr-transportation-incident-role-vs.html'>TransportationIncidentRoleVS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-transportation-incident-role-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='ValueSet-vrdr-death-pregnancy-status-vs.html'>DeathPregnancyStatusVS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-pregnancy-status-vs.html'>VRDR</a> </td><td>-</td></tr>
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
<tr><td> <a href='CodeSystem-vrdr-activity-at-time-of-death-cs.html'>ActivityAtTimeOfDeathCS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-activity-at-time-of-death-cs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='CodeSystem-CodeSystem-death-pregnancy-status.html'>DeathPregnancyStatusCS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-pregnancy-status-cs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='CodeSystem-vrdr-date-of-death-determination-methods-cs.html'>DateOfDeathDeterminationMethodsCS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-date-of-death-determination-methods-cs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='CodeSystem-vrdr-document-section-cs.html'>DocumentSectionCS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-document-section-cs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='CodeSystem-vrdr-filing-format-cs.html'>FilingFormatCS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-filing-format-cs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='CodeSystem-vrdr-intentional-reject-cs.html'>IntentionalRejectCS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-intentional-reject-cs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='CodeSystem-vrdr-organization-type-cs.html'>OrganizationTypeCS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-organization-type-cs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='CodeSystem-vrdr-location-type-cs.html'>LocationTypeCS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-location-type-cs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='CodeSystem-vrdr-replace-status-cs.html'>ReplaceStatusCS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-replace-status-cs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='CodeSystem-vrdr-system-reject-cs.html'>SystemRejectCS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-system-reject-cs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='CodeSystem-vrdr-transax-conversion-cs.html'>TransaxConversionCS</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-transax-conversion-cs.html'>VRDR</a> </td><td>-</td></tr>
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
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-emerging-issues.html'>EmergingIssues</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/StructureDefinition-Observation-emerging-issues-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-input-race-and-ethnicity.html'>InputRaceAndEthnicity</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/StructureDefinition-input-race-and-ethnicity-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-coded-race-and-ethnicity.html'>CodedRaceAndEthnicity</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/StructureDefinition-coded-race-and-ethnicity-vr.html'>VRCL</a> </td><td>-</td></tr>
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
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-AuxiliaryStateIdentifier1.html'>AuxiliaryStateIdentifier1</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/StructureDefinition-AuxiliaryStateIdentifier1.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-AuxiliaryStateIdentifier2.html'>AuxiliaryStateIdentifier2</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/StructureDefinition-AuxiliaryStateIdentifier2.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-BypassEditFlag.html'>BypassEditFlag</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/StructureDefinition-BypassEditFlag.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-CertificateNumber.html'>CertificateNumber</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/StructureDefinition-CertificateNumber.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-CityCode.html'>CityCode</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/StructureDefinition-CityCode.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-Date-Day.html'>DateDay</a> </td><td>Removed</td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-Date-Month.html'>DateMonth</a> </td><td>Removed</td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-Date-Time.html'>DateTime</a> </td><td>Removed</td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-Date-Year.html'>DateYear</a> </td><td>Removed</td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-DistrictCode.html'>DistrictCode</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/StructureDefinition-DistrictCode.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-Location-Jurisdiction-Id.html'>LocationJurisdictionId</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/StructureDefinition-Extension-jurisdiction-id-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-PartialDate.html'>PartialDate</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/StructureDefinition-Extension-partial-date-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-PartialDateTime.html'>PartialDateTime</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/StructureDefinition-Extension-partial-date-time-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-PostDirectional.html'>PostDirectional</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/StructureDefinition-PostDirectional.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-PreDirectional.html'>PreDirectional</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/StructureDefinition-PreDirectional.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-StreetDesignator.html'>StreetDesignator</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/StructureDefinition-StreetDesignator.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-StreetName.html'>StreetName</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/StructureDefinition-StreetName.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-StreetNumber.html'>StreetNumber</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/StructureDefinition-StreetNumber.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-UnitOrAptNumber.html'>UnitOrAptNumber</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/StructureDefinition-UnitOrAptNumber.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-WithinCityLimitsIndicator.html'>WithinCityLimitsIndicator</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/StructureDefinition-Extension-within-city-limits-indicator-vr.html'>VRCL</a> </td><td>-</td></tr>
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
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-birthplace-country-vs.html'>BirthplaceCountryVS</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-birthplace-country-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-canada-provinces-vs.html'>CanadaProvincesVS</a> </td><td>-</td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-edit-bypass-01234-vs.html'>EditBypass01234VS</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-valueset-edit-bypass-01234-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-education-level-vs.html'>EducationLevelVS</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-education-level-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-hispanic-no-unknown-vs.html'>HispanicNoUnknownVS</a> </td><td>-</td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-hispanic-origin-vs.html'>HispanicOriginVS</a> </td><td>-</td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-jurisdiction-vs.html'>JurisdictionVS</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-jurisdiction-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-marital-status-vs.html'>MaritalStatusVS</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-marital-status-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-race-code-vs.html'>RaceCodeVS</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-race-code-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-race-missing-value-reason-vs.html'>RaceMissingValueReasonVS</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-race-missing-value-reason-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-race-recode-40-vs.html'>RaceRecode40VS</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-race-recode-40-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-residence-country-vs.html'>ResidenceCountryVS</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-residence-country-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-states-territories-provinces-vs.html'>StatesTerritoriesAndProvincesVS</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-states-territories-provinces-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-usstates-territories-vs.html'>USStatesAndTerritoriesVS</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-usstates-territories-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-units-of-age-vs.html'>UnitsOfAgeVS</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-units-of-age-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-yes-no-unknown-vs.html'>YesNoUnknownVS</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-yes-no-unknown-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/ValueSet-vrdr-yes-no-unknown-not-applicable-vs.html'>YesNoUnknownNotApplicableVS</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/ValueSet-ValueSet-yes-no-unknown-not-applicable-vr.html'>VRCL</a> </td><td>-</td></tr>
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
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-bypass-edit-flag-cs.html'>BypassEditFlagCS</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/CodeSystem-CodeSystem-vr-edit-flags.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-canadian-provinces-cs.html'>CanadianProvincesCS</a> </td><td>-</td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-country-code-cs.html'>CountryCodeCS</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/CodeSystem-CodeSystem-country-code-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-hispanic-origin-cs.html'>HispanicOriginCS</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/CodeSystem-CodeSystem-hispanic-origin-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-jurisdictions-cs.html'>JurisdictionsCS</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/CodeSystem-CodeSystem-jurisdictions-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-missing-value-reason-cs.html'>MissingValueReasonCS</a> </td><td>-</td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-race-code-cs.html'>RaceCodeCS</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/CodeSystem-CodeSystem-race-code-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-race-recode-40-cs.html'>RaceRecode40CS</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/CodeSystem-CodeSystem-race-recode-40-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-component-cs.html'>ComponentCS</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/CodeSystem-codesystem-vr-component.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/vrdr/STU2.2/CodeSystem-vrdr-observations-cs.html'>ObservationsCS</a> </td><td><a href='{{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/CodeSystem-CodeSystem-local-observation-codes-vr.html'>VRCL</a> </td><td>-</td></tr>
</tbody>
</table>

