### Usage

The Decedent profile contains basic information about the decedent, including data that are essential to the death record.


| **Name** |  **Field**   |  **Encoding**  |  **IJE Field Name(s)**  |
| ---------------| ------------------------ | ------------- | ------------------- |
| Birth Place State   | extension[patient-birthPlace].value[x].country  | [StatesTerritoriesAndProvincesVS] | BPLACE_ST  |
| Birth Sex   | extension[us-core-birth-sex]  | [USCoreBirthSex] | SEX  |
| Birthplace Country   | extension[patient-birthPlace].value[x].country  | [BirthplaceCountryVS] | BPLACE_CNT  |
| Date of Birth    | birthDate  | dateTime   | DOB_YR, DOB_MO, DOB_DY  |
| Gender   | gender  | [AdministrativeGenderVS] | <none>  |
| Informant    | contact  |   | <none>  |
| Informant Relationship   | contact.type.text   | string (30 characters)  | INFORMRELATE  |
| Informant    | contact  |   | <none>  |
| Legal Name  | humanName        | String | GNAME, MNAME, LNAME, SUFF |
| Marital Status   | maritalStatus  | [MaritalStatusVS] | MARITAL   |
| Marital Status (Bypass Edit Flag)  | maritalStatus.extension.BypassEditFlag  | [EditBypass01234VS] | MARITAL_BYPASS   |
| NVSS Ethnicity | extension[NVSSEthnicity] | as per IJE | DETHNIC1-5|
| NVSS Race | extension[NVSSRace] | as per IJE | RACE1-23|
| Residence - coded City  | address.city.extension.districtCode  | integer | CITYC  |
| Residence - coded County  | address.district.extension.districtCode  | integer | COUNTYC  |
| Residence - State  | address.state  | [StatesTerritoriesAndProvincesVS] | STATEC  |
| Residence - Country  | address.country  | [ResidenceCountryVS] | COUNTRYC  |
| Residence - Within City Limits  | address.city.extension[withinCityLimits]  | [YesNoUnknownVS] | LIMITS  |
| Social Security Number    | identifier.value where system = 'http://hl7.org/fhir/sid/us-ssn  and type.coding.code="SB"   | String  | SSN  |
{: .grid }


### Conformance


{% include markdown-link-references.md %}
