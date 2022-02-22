### Usage

The Decedent profile contains basic information about the decedent, including data that are essential to the death record.


| **Name** |  **Field**   |  **Encoding**  |  **IJE Field Name(s)**  |
| ---------------| ------------------------ | ------------- | ------------------- |
| Birthplace Country   | extension[patient-birthPlace].value[x].country  | [BirthplaceCountryVS] | BPLACE_CNT  |
| Birth Place State   | extension[patient-birthPlace].value[x].state  | [StatesTerritoriesProvincesVS] | BPLACE_ST  |
| Birth Sex   | extension[us-core-birth-sex]  | [USCoreBirthSex] | SEX  |
| Date of Birth    | birthDate  | dateTime   | DOB_YR, DOB_MO, DOB_DY  |
| Gender   | gender  | [AdministrativeGenderVS] | <none>  |
| Informant    | contact  |   | <none>  |
| Informant Relationship   | contact.type.text   | string (30 characters)  | INFORMRELATE  |
| Informant    | contact  |   | <none>  |
| Legal Name  | name        | String | GNAME, MNAME, LNAME, SUFF |
| Marital Status   | maritalStatus  | [MaritalStatusVS] | MARITAL   |
| Marital Status (Bypass Edit Flag)  | maritalStatus.extension[ BypassEditFlag]  | [EditBypass01234VS] | MARITAL_BYPASS   |
| NVSS Ethnicity | extension[ NVSSEthnicity] | as per IJE | DETHNIC1-5|
| NVSS Race | extension[ NVSSRace] | as per IJE | RACE1-23, RACE_MVR|
| Residence - address  | address.line  | string | ADDRESS_R  |
| Residence - City  | address.city  | string | CITYTEXT_R  |
| Residence - coded City  | address.city.extension.districtCode  | integer | CITYC  |
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
