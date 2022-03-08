### Usage

The Decedent profile contains basic information about the decedent, including data that are essential to the death record.


| **Name** |  **Field**   |  **Encoding**  |  **IJE Field Name(s)**  |
| ---------------| ------------------------ | ------------- | ------------------- |
| Birthplace City - literal   | extension[patient-birthPlace].value[x].city  | STring | DBPLACECITY  |
| Birthplace City - code   | extension[patient-birthPlace].value[x].city.extension[cityCode]  | integer | DBPLACECITYCODE  |
| Birthplace Country   | extension[patient-birthPlace].value[x].country  | [BirthplaceCountryVS] | BPLACE_CNT  |
| Birth Place State   | extension[patient-birthPlace].value[x].state  | [JurisdictionsProvincesVS] | BPLACE_ST, STATEBTH (expansion of coded value)  |
| Sex at Death   | extension[NVSS-SexAtDeath]  | [AdministrativeGenderVS] | SEX  |
| Date of Birth    | birthDate  | dateTime   | DOB_YR, DOB_MO, DOB_DY  |
| Informant    | contact  |   | none  |
| Informant Relationship   | contact.type.text   | string (30 characters)  | INFORMRELATE  |
| Legal Name - first name | name.given  | String | GNAME |
| Legal Name - middle initial | name.given        | String | MNAME (1st letter should be mapped)|
| Legal Name - middle name | name.given        | String | DMIDDLE (full string should be mapped)|
| Legal Name - last name | name.surname        | String | LNAME |
| Legal Name - suffix | name.suffix        | String | SUFF |
| Marital Status   | maritalStatus  | [MaritalStatusVS] | MARITAL   |
| Spouse is Alive?   | extension[SpounseAlive]  | [YesNoUnknownNotApplicableVS] |  SPOUSELV  |
| Marital Status (Bypass Edit Flag)  | maritalStatus.extension[ BypassEditFlag]  | [EditBypass01234VS] | MARITAL_BYPASS   |
| NVSS Ethnicity | extension[ NVSSEthnicity] | [NVSSEthnicity] [] | DETHNIC1-5|
| NVSS Race | extension[ NVSSRace] | [NVSSRace] | RACE1-23, RACE_MVR|
| Residence - address(predirectional) | address.extension[predir]  | string | PREDIR_D  |
| Residence - address(street number) | address.extension[stnum]  | string | STNUM_R  |
| Residence - address(street name) | address.extension[stname]  | string | STNAME_R  |
| Residence - address(street designator) | address.extension[stdesig]  | string | STDESIG_R  |
| Residence - address(postdirectional) | address.extension[postdir]  | string | POSTDIR_R  |
| Residence - address(unit number) | address.extension[unitnum]  | string | UNITNUM_R  |
| Residence - address  | address.line  | string | ADDRESS_R  |
| Residence - City  | address.city  | string | CITYTEXT_R  |
| Residence - coded City  | address.city.extension.cityCode  | integer | CITYC  |
| Residence - County  | address.district  | string | COUNTYTEXT_R  |
| Residence - coded County  | address.district.extension.districtCode  | integer | COUNTYC  |
| Residence - State  | address.state  | [StatesTerritoriesProvincesVS] | STATEC, STATETEXT_R  |
| Residence - Country  | address.country  | [ResidenceCountryVS] | COUNTRYC, COUNTRYTEXT_R  |
| Residence - Zipcode  | address.postalCode | string | ZIP9_R  |
| Residence - Within City Limits  | address.city.extension[ withinCityLimits]  | [YesNoUnknownVS] | LIMITS  |
| Social Security Number    | identifier.value where system = 'http://hl7.org/fhir/sid/us-ssn  and type.coding.code="SB"   | String  | SSN  |
{: .grid }



### Conformance


{% include markdown-link-references.md %}
