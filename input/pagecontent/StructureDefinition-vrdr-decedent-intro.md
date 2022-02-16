### Usage

The Decedent profile contains basic information about the decedent, including data that are essential to the death record.


| **Name** |  **Field**   |  **Encoding**  |  **IJE Field Name(s) **  |
| ---------------| ------------------------ | ------------- | ------------------- |
| Legal Name  | humanName        | String | GNAME, MNAME, LNAME, SUFF |
| Birth Place   | extension.place-of-birth  | various | BPLACE_CNT, BPLACE_ST  |
| Birth Sex   | extension.us-core-birth-sex  | [USCoreBirthSex](http://hl7.org/fhir/us/core/STU4/ValueSet-birthsex.html) | SEX  |
| Date of Birth    | birthDate  | date  | DOB_YR, DOB_MO, DOB_DY  |
| NVSS Ethnicity | extension.NVSSEthnicity | as per IJE | DETHNIC1-5|
| NVSS Race | extension.NVSSRace | as per IJE | RACE1-23|
| Gender   | gender  | [AdministrativeGender](http://build.fhir.org/ig/saulakravitz/vrdr/branches/FSHVersion2/ValueSet-vrdr-administrative-gender-vs.html) | <none>  |
| Informant    | contact  |   | <none>  |
| Informant Relationship   | contact.type   | [RelationshipType](http://build.fhir.org/ig/saulakravitz/vrdr/branches/FSHVersion2/ValueSet-vrdr-RelatedPersonRelationshipType.html)  | INFORMRELATE  |
| Informant    | contact  |   | <none>  |
| Marital Status   | maritalStatus  | [MaritalStatusVS](http://build.fhir.org/ig/saulakravitz/vrdr/branches/FSHVersion2/ValueSet-vrdr-marital-status-vs.html) | MARITAL   |
| Marital Status (Bypass Edit Flag)  | maritalStatus.extension.BypassEditFlag  | [BypassFlags0124](http://build.fhir.org/ig/saulakravitz/vrdr/branches/FSHVersion2/ValueSet-Edit-Bypass-0124.html) | BYPASS   |
| Residence - coded County  | address.district.extension.districtCode  | integer | CountyC  |
| Residence - coded City  | address.district.extension.cityCode  | integer | CityC  |
| Residence - Within City Limits  | address.district.extension.withinCityLimits  | [YesNoUnknown](http://build.fhir.org/ig/saulakravitz/vrdr/branches/FSHVersion2/ValueSet-vrdr-yes-no-unknown-vs.html) | LIMITS  |
| Social Security Number    | identifier.value  | String  | SSN  |
{: .grid }


### Conformance


{% include markdown-link-references.md %}
