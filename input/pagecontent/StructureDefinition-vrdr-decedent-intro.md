### Usage
The Decedent profile contains basic information about the decedent, including data that are essential to the death record.

| **#** |  **Description**   |  **IJE Name**   |  **Field**  |  **Type**  | **Value Set**  |
| ---------| ------------- | ------------ | -------------- | -------- | -------- |
| 7 | Decedent's Legal Name--Given  | GNAME| name.given , name.use = official | string |  | 
| 8 | Decedent's Legal Name--Middle | MNAME| name.given , name.use = official (first letter) | string |  | 
| 9 | Decedent's Legal Name--Last | LNAME| name.family , name.use = official | string |  | 
| 10 | Decedent's Legal Name--Suffix | SUFF| name.suffix , name.use = official | string |  | 
| 13 | Sex | SEX| extension[NVSS-SexAtDeath]  | codeable | [AdministrativeGenderVS] | 
| 15 | Social Security Number | SSN| identifier.value where system = 'http://hl7.org/fhir/sid/us-ssn and type.coding.code="SB" | string |  | 
| 19 | Date of Birth--Year | DOB_YR| birthDate | dateTime |  | 
| 20 | Date of Birth--Month | DOB_MO| birthDate | dateTime |  | 
| 21 | Date of Birth--Day | DOB_DY| birthDate | dateTime |  | 
| 22 | Birthplace--Country | BPLACE_CNT| extension[patient-birthPlace].value[x].country  | string | [BirthplaceCountryVS] | 
| 23 | State, U.S. Territory or Canadian Province of Birth - code | BPLACE_ST| extension[patient-birthPlace].value[x].state or extension[patient-birthPlace].value[x].state.extension[ nationalReportingJurisdictionId] if present  | string | [JurisdictionsProvincesVS] | 
| 24 | Decedent's Residence--City | CITYC| address.city.extension[cityCode] | string |  | 
| 25 | Decedent's Residence--County | COUNTYC| address.district.extension[countyCode] | string |  | 
| 26 | State, U.S. Territory or Canadian Province of Decedent's residence - code | TOD| address.state | string | [StatesTerritoriesProvincesVS] | 
| 27 | Decedent's Residence--Country | COUNTRYC| address.country | string | [ResidenceCountryVS] | 
| 28 | Decedent's Residence--Inside City Limits | LIMITS| address.city.extension[ withinCityLimits]  | codeable | [YesNoUnknownVS] | 
| 29 | Marital Status | MARITAL| maritalStatus | codeable |  [MaritalStatusVS] | 
| 30 | Marital Status--Edit Flag | MARITAL_BYPASS| maritalStatus.extension[ BypassEditFlag]  | codeable | [EditBypass0124VS] | 
| 39 | Decedent of Hispanic Origin?--Mexican | DETHNIC1| extension[ NVSSEthnicity].extension[ HispanicMexican].valueCoding | codeable | [YesNoUnknownVS] | 
| 40 | Decedent of Hispanic Origin?--Puerto Rican | DETHNIC2| extension[ NVSSEthnicity].extension[ HispanicPuertoRican].valueCoding | codeable | [YesNoUnknownVS] | 
| 41 | Decedent of Hispanic Origin?--Cuban | DETHNIC3| extension[ NVSSEthnicity].extension[ Hispanic Other ].valueCoding | codeable | [YesNoUnknownVS] | 
| 42 | Decedent of Hispanic Origin?--Other | DETHNIC4| extension[ NVSSEthnicity].extension[ Hispanic Cuban ].valueCoding | codeable | [YesNoUnknownVS] | 
| 43 | Decedent of Hispanic Origin?--Other, Literal | DETHNIC5| extension[ NVSSEthnicity].extension[ HispanicLiteral ].valueString | string |  | 
| 44 | Decedent's Race--White | RACE1| extension[ NVSSRace].extension[ White].valueBoolean | boolean |  | 
| 45 | Decedent's Race--Black or African American | RACE2| extension[ NVSSRace].extension[ BlackOrAfricanAmerican].valueBoolean | boolean |  | 
| 46 | Decedent's Race--American Indian or Alaska Native | RACE3| extension[ NVSSRace].extension[ AmericanIndianOrAlaskaNative].valueBoolean | boolean |  | 
| 47 | Decedent's Race--Asian Indian | RACE4| extension[ NVSSRace].extension[ AsianIndian].valueBoolean | boolean |  | 
| 48 | Decedent's Race--Chinese | RACE5| extension[ NVSSRace].extension[ Chinese].valueBoolean | boolean |  | 
| 49 | Decedent's Race--Filipino | RACE6| extension[ NVSSRace].extension[ Filipino].valueBoolean | boolean |  | 
| 50 | Decedent's Race--Japanese | RACE7| extension[ NVSSRace].extension[ Japanese].valueBoolean | boolean |  | 
| 51 | Decedent's Race--Korean | RACE8| extension[ NVSSRace].extension[ Korean].valueBoolean | boolean |  | 
| 52 | Decedent's Race--Vietnamese | RACE9| extension[ NVSSRace].extension[ Vietnamese].valueBoolean | boolean |  | 
| 53 | Decedent's Race--Other Asian | RACE10| extension[ NVSSRace].extension[ OtherAsian].valueBoolean | boolean |  | 
| 54 | Decedent's Race--Native Hawaiian | RACE11| extension[ NVSSRace].extension[ NativeHawaiian].valueBoolean | boolean |  | 
| 55 | Decedent's Race--Guamanian or Chamorro | RACE12| extension[ NVSSRace].extension[ GuamanianOrChamorro].valueBoolean | boolean |  | 
| 56 | Decedent's Race--Samoan | RACE13| extension[ NVSSRace].extension[ Samoan].valueBoolean | boolean |  | 
| 57 | Decedent's Race--Other Pacific Islander | RACE14| extension[ NVSSRace].extension[ OtherPacificIslander].valueBoolean | boolean |  | 
| 58 | Decedent's Race--Other | RACE15| extension[ NVSSRace].extension[ OtherRace].valueBoolean | boolean |  | 
| 59 | Decedent's Race--First American Indian or Alaska Native Literal | RACE16| extension[ NVSSRace].extension[ AmericanIndianorAlaskanNativeLiteral][0].valueString | string |  | 
| 60 | Decedent's Race--Second American Indian or Alaska Native Literal | RACE17| extension[ NVSSRace].extension[ AmericanIndianorAlaskanNativeLiteral][1].valueString | string |  | 
| 61 | Decedent's Race--First Other Asian Literal | RACE18| extension[ NVSSRace].extension[ OtherAsianLiteral].valueString[0] | string |  | 
| 62 | Decedent's Race--Second Other Asian Literal | RACE19| extension[ NVSSRace].extension[ OtherAsianLiteral].valueString[1] | string |  | 
| 63 | Decedent's Race--First Other Pacific Islander Literal | RACE20| extension[ NVSSRace].extension[ OtherPacificIslandLiteral].valueString[0]   | string |  | 
| 64 | Decedent's Race--Second Other Pacific Islander Literal | RACE21| extension[ NVSSRace].extension[ OtherPacificIslandLiteral].valueString[1]   | string |  | 
| 65 | Decedent's Race--First Other Literal | RACE22| extension[ NVSSRace].extension[ OtherRaceLiteral].valueString[0] | string |  | 
| 66 | Decedent's Race--Second Other Literal | RACE23| extension[ NVSSRace].extension[ OtherRaceLiteral].valueString[1] | string |  | 
| 83 | Decedent's Race--Missing | RACE_MVR| extension[ NVSSRace].extension[ MissingValueReason].valueCoding | codeable | [RaceMissingValueReasonVS]  | 
| 143 | Decedent's spouse living at decedent's DOD? | SPOUSELV| extension[SpounseAlive]  | codeable |  [YesNoUnknownNotApplicableVS] | 
| 146 | Decedent's Residence - Street number | STNUM_R| address.extension[stnum] | string |  | 
| 147 | Decedent's Residence - Pre Directional | PREDIR_R| address.extension[predir] | string |  | 
| 148 | Decedent's Residence - Street name | STNAME_R| address.extension[stname] | string |  | 
| 149 | Decedent's Residence - Street designator | STDESIG_R| address.extension[stdesig] | string |  | 
| 150 | Decedent's Residence - Post Directional | POSTDIR_R| address.extension[postdir] | string |  | 
| 151 | Decedent's Residence - Unit or apt number | UNITNUM_R| address.extension[unitnum] | string |  | 
| 152 | Decedent's Residence - City or Town name | CITYTEXT_R| address.city | string |  | 
| 153 | Decedent's Residence - ZIP code | ZIP9_R| address.postalCode | string |  | 
| 154 | Decedent's Residence - County | COUNTYTEXT_R| address.district | string |  | 
| 155 | Decedent's Residence - State name | STATETEXT_R | address.state (expanded from 2 letter code) | string |  | 
| 156 | Decedent's Residence - COUNTRY name | COUNTRYTEXT_R| address.country (expanded from 2 letter code) | string |  | 
| 157 | Long string address for decedent's place of residence same as above but allows states to choose the way they capture information. | ADDRESS_R| address.line | string |  | 
| 166 | Middle Name of Decedent  | DMIDDLE| name.given , name.use = official | string |  | 
| 194 | Decedent's Maiden Name | DMAIDEN| name.text , name.use=maiden | string |  | 
| 195 | Decedent's Birth Place City - Code | DBPLACECITYCODE| extension[patient-birthPlace].value[x].city.extension[ cityCode] | integer |  | 
| 196 | Decedent's Birth Place City - Literal | DBPLACECITY| extension[patient-birthPlace].value[x].city | string |  | 
| 201 | Informant's Relationship | INFORMRELATE| contact.type.text  | string (30 characters) |  | 
| 238 | State, U.S. Territory or Canadian Province of Birth - literal | STATEBTH| extension[patient-birthPlace].value[x].state or extension[patient-birthPlace].value[x].state.extension[ nationalReportingJurisdictionId] if present  | string | Expanded from coded value | 
| 246 | Marital Descriptor | MARITAL_DESCRIP| maritalStatus.text  | string |  | 
{: .grid }
{% include markdown-link-references.md %}
