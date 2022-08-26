### Usage
The Decedent profile contains basic information about the decedent, including data that are essential to the death record.

  Note: The Decedent profile is based on the [US Core Patient Profile](http://hl7.org/fhir/us/core/StructureDefinition-us-core-patient.html) which requires gender.
  The death record submission use case uses NCHS's definition of sex at time of death which is different than gender.  Complete death record submissions may fail FHIR validation
  due to lack of a value for gender.

| **#** |  **Description**   |  **IJE Name**   | IJE only |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | ------------- | ------------ | :----------: |---------- | -------- | -------- |
| 7 | Decedent's Legal Name--Given  | GNAME| |name.given , name.use = official | string | - | 
| 8 | Decedent's Legal Name--Middle | MNAME| |name.given , name.use = official (first letter) | string | - | 
| 9 | Decedent's Legal Name--Last | LNAME| |name.family , name.use = official | string | - | 
| 10 | Decedent's Legal Name--Suffix | SUFF| |name.suffix , name.use = official | string | - | 
| 13 | Sex | SEX| |extension[NVSS-SexAtDeath]  | codeable | [AdministrativeGenderVS] | 
| 15 | Social Security Number | SSN| |identifier.value where system = 'http://hl7.org/fhir/sid/us-ssn and type.coding.code="SB" | string | - | 
| 19 | Date of Birth--Year | DOB_YR| |birthDate | dateTime | See [PartialDatesAndTimes] | 
| 20 | Date of Birth--Month | DOB_MO| |birthDate | dateTime | See [PartialDatesAndTimes] | 
| 21 | Date of Birth--Day | DOB_DY| |birthDate | dateTime | See [PartialDatesAndTimes] | 
| 22 | Birthplace--Country | BPLACE_CNT| |extension[patient-birthPlace].value[x].country  | string | [BirthplaceCountryVS] | 
| 23 | State, U.S. Territory or Canadian Province of Birth - code | BPLACE_ST| |extension[patient-birthPlace].value[x].state | string | [StatesTerritoriesProvincesVS] | 
| 24 | Decedent's Residence--City | CITYC| |address.city.extension[ cityCode ] | string | see [CityCodes] | 
| 25 | Decedent's Residence--County | COUNTYC| |address.district.extension[ countyCode ] | string | see [CountyCodes] | 
| 26 | State, U.S. Territory or Canadian Province of Decedent's residence - code | STATEC| |address.state | string | [StatesTerritoriesProvincesVS] | 
| 27 | Decedent's Residence--Country | COUNTRYC| |address.country | string | [ResidenceCountryVS] | 
| 28 | Decedent's Residence--Inside City Limits | LIMITS| |address.city.extension[ withinCityLimits]  | codeable | [YesNoUnknownVS] | 
| 29 | Marital Status | MARITAL| |maritalStatus | codeable |  [MaritalStatusVS] | 
| 30 | Marital Status--Edit Flag | MARITAL_BYPASS| |maritalStatus.extension[ BypassEditFlag]  | codeable | [EditBypass0124VS] | 
| 143 | Decedent's spouse living at decedent's DOD? | SPOUSELV| x|extension[SpouseAlive]  | codeable |  [SpouseAliveVS] | 
| 146 | Decedent's Residence - Street number | STNUM_R| |address.extension[stnum] | string | - | 
| 147 | Decedent's Residence - Pre Directional | PREDIR_R| |address.extension[predir] | string | - | 
| 148 | Decedent's Residence - Street name | STNAME_R| |address.extension[stname] | string | - | 
| 149 | Decedent's Residence - Street designator | STDESIG_R| |address.extension[stdesig] | string | - | 
| 150 | Decedent's Residence - Post Directional | POSTDIR_R| |address.extension[postdir] | string | - | 
| 151 | Decedent's Residence - Unit or apt number | UNITNUM_R| |address.extension[unitnum] | string | - | 
| 152 | Decedent's Residence - City or Town name | CITYTEXT_R| |address.city | string | - | 
| 153 | Decedent's Residence - ZIP code | ZIP9_R| |address.postalCode | string | - | 
| 154 | Decedent's Residence - County | COUNTYTEXT_R| |address.district | string | - | 
| 155 | Decedent's Residence - State name | STATETEXT_R | |address.state (expanded from 2 letter code) | string | See [StateLiterals] | 
| 156 | Decedent's Residence - COUNTRY name | COUNTRYTEXT_R| |address.country (expanded from 2 letter code) | string | See [CountryLiterals] | 
| 157 | Long string address for decedent's place of residence same as above but allows states to choose the way they capture information. | ADDRESS_R| |address.line[0] | string | - | 
| 166 | Middle Name of Decedent  | DMIDDLE| x|name.given , name.use = official | string | - | 
| 194 | Decedent's Maiden Name | DMAIDEN| x|name.text , name.use=maiden | string | - | 
| 195 | Decedent's Birth Place City - Code | DBPLACECITYCODE| x|extension[patient-birthPlace].value[x].city.extension[ cityCode] | integer | see [CityCodes] | 
| 196 | Decedent's Birth Place City - Literal | DBPLACECITY| x|extension[patient-birthPlace].value[x].city | string | - | 
| 201 | Informant's Relationship | INFORMRELATE| x|contact.type.text  | string (30 characters) | - | 
| 238 | State, U.S. Territory or Canadian Province of Birth - literal | STATEBTH| x|extension[patient-birthPlace].value[x].state or extension[patient-birthPlace].value[x].state.extension[ nationalReportingJurisdictionId] if present    (expanded from 2 letter code) | string | See [StateLiterals] | 
| 246 | Marital Descriptor | MARITAL_DESCRIP| x|maritalStatus.text  | string | - | 
{: .grid }
{% include markdown-link-references.md %}
