### Death Roster Data Dictionary

| **#** |  **Description**   |  **Roster Name** |  **IJE Name**  | **Profile**  |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | --------------- | ------------ | ---------- | :------------: | ---------- | ---------- | -------------- |
| 8 | Date of Death--Month | DOD_MO|| [DeathDate]| |value | dateTime | See [PartialDatesAndTimes] | 
| 9 | Date of Death--Day | DOD_DY|| [DeathDate]| |value | dateTime | See [PartialDatesAndTimes] | 
| 10 | Date of Death--Year | DOD_YR|| [DeathDate]| |value | dateTime | Required for processing | 
| 6 | State, U.S. Territory or Canadian Province of Death - literal | STATETEXT_D|| [DeathLocation]| |address.state (expanded from 2 letter code) | string | - | 
| 7 | State, U.S. Territory or Canadian Province of Death - code | DSTATE|| [DeathLocation]| |address.state or address.state.extension[nationalReportingJurisdictionId ] | codeable | [StatesTerritoriesProvincesVS] or [JurisdictionVS] | 
| 30 | Death Country - Code | DCOUNTRYC|DTHCOUNTRYCD | [DeathLocation]| |address.country  | string  | [ResidenceCountryVS].  Note: For US Death certificates should be US.    | 
| 1 | State, U.S. Territory or Canadian Province of Birth - literal | STATEBTH|| [Decedent]| |extension[patient-birthPlace].value[x].state or extension[patient-birthPlace].value[x].state.extension[ nationalReportingJurisdictionId] if present    (expanded from 2 letter code) | string | See [StateLiterals] | 
| 2 | State, U.S. Territory or Canadian Province of Birth - code | BPLACE_ST|| [Decedent]| |extension[patient-birthPlace].value[x].state or extension[patient-birthPlace].value[x].state.extension[ nationalReportingJurisdictionId] if present  | string | [JurisdictionsProvincesVS] | 
| 3 | Decedent's Legal Name--Given  | GNAME|| [Decedent]| |name.given , name.use = official | string | - | 
| 4 | Decedent's Legal Name--Middle | MIDNAME|| [Decedent]| |name.given , name.use = official (first letter) | string | - | 
| 5 | Decedent's Legal Name--Last | LNAME|| [Decedent]| |name.family , name.use = official | string | - | 
| 11 | Date of Birth--Month | DOB_MO|| [Decedent]| |birthDate | dateTime | See [PartialDatesAndTimes] | 
| 12 | Date of Birth--Day | DOB_DY|| [Decedent]| |birthDate | dateTime | See [PartialDatesAndTimes] | 
| 13 | Date of Birth--Year | DOB_YR|| [Decedent]| |birthDate | dateTime | See [PartialDatesAndTimes] | 
| 14 | Sex | SEX|| [Decedent]| |extension[NVSS-SexAtDeath]  | codeable | [AdministrativeGenderVS] | 
| 22 | Decedent's Suffix | SUFF|| [Decedent]| |name.suffix , name.use = official | string | - | 
| 26 | Decedent's Maiden Name | DMAIDEN|| [Decedent]| |name.text , name.use=maiden | string |  | 
| 27 | State, U.S. Territory or Canadian Province of Decedent's Residence - literal | STATETEXT_R || [Decedent]| |address.state (expanded from 2 letter code) | string | See [StateLiterals] | 
| 28 | State, U.S. Territory or Canadian Province of Decedent's Residence - code | STATEC|| [Decedent]| |address.state | string | [StatesTerritoriesProvincesVS] | 
| 29 | Birthplace Country - Code | BPLACE_CT|BIRTPHPLACE_CNT| [Decedent]| |extension[patient-birthPlace].value[x].country  | string | [BirthplaceCountryVS]. | 
| 31 | Decedent's Residence Country - Code | COUNTRYC|| [Decedent]| |address.country | string | [ResidenceCountryVS] | 
| 32 | Decedent's SSN (may be used by some jurisdictions when allowed by law, to match with the SSN contained with the birth record) | SSN|| [Decedent]| |identifier.value where system = 'http://hl7.org/fhir/sid/us-ssn and type.coding.code="SB" | string | - | 
| 16 | Father's First Name | DADFNAME|DDADF| [DecedentFather]| |name.given , name.use = official | string | - | 
| 17 | Father's Middle Name | DADMIDNAME|DDADMID| [DecedentFather]| |name.given , name.use = official | string | - | 
| 18 | Father's Surname | DADLNAME|FLNAME| [DecedentFather]| |name.family | string | - | 
| 23 | Father's Suffix | DADSUFF|FATHERSUFFIX| [DecedentFather]| |name.suffix , name.use = official | string | - | 
| 19 | Mother's Given Name | MOMGNAME|DMOMF| [DecedentMother]| |name.given , name.use = official | string | - | 
| 20 | Mother's Middle Name | MOMMIDNAME|DMOMMID| [DecedentMother]| |name.given , name.use = official | string | - | 
| 21 | Mother's Maiden Surname | MOMMAIDNAME|DMOMMDN| [DecedentMother]| |name.family , name.type=maiden | string  | - | 
| 24 | Mother's Suffix | MOMSUFF|MOTHERSUFFIX| [DecedentMother]| |name.suffix , name.use = official | string | - | 
{: .grid }
{% include markdown-link-references.md %}
