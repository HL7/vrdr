### Usage

The Decedent profile contains basic information about the decedent, including data that are essential to the death record.


| **Name** |  **Field**   |  **Encoding**  |  **IJE Field Name(s)**  |
| ---------------| ------------------------ | ------------- | ------------------- |
| Legal Name  | humanName        | String | GNAME, MNAME, LNAME, SUFF |
| Birth Place   | extension.place-of-birth  | various | BPLACE_CNT, BPLACE_ST  |
| Birth Sex   | extension.us-core-birth-sex  | [USCoreBirthSex] | SEX  |
| Date of Birth    | birthDate  | dateTime   | DOB_YR, DOB_MO, DOB_DY  |
| NVSS Ethnicity | extension.NVSSEthnicity | as per IJE | DETHNIC1-5|
| NVSS Race | extension.NVSSRace | as per IJE | RACE1-23|
| Gender   | gender  | [AdministrativeGenderVS] | <none>  |
| Informant    | contact  |   | <none>  |
| Informant Relationship   | contact.type   | [RelationshipTypeVS]  | INFORMRELATE  |
| Informant    | contact  |   | <none>  |
| Marital Status   | maritalStatus  | [MaritalStatusVS] | MARITAL   |
| Marital Status (Bypass Edit Flag)  | maritalStatus.extension.BypassEditFlag  | [BypassFlags0124VS] | MARITAL_BYPASS   |
| Residence - coded County  | address.district.extension.districtCode  | integer | COUNTYC  |
| Residence - coded City  | address.district.extension.cityCode  | integer | CITYC  |
| Residence - Within City Limits  | address.district.extension.withinCityLimits  | [YesNoUnknownVS] | LIMITS  |
| Social Security Number    | identifier.value  | String  | SSN  |
{: .grid }


### Conformance


{% include markdown-link-references.md %}
