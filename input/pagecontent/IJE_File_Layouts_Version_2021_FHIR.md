

| **#** |  **Description**   |  **IJE Name**   |   **Profile**  | **Field**  |  **Type**  | **Value Set**  |
| ----- | ------------------ | --------------- | -------------- | ---------- | ---------- | -------------- |
| 7 | Decedent's Legal Name--Given  | GNAME| Decedent| name.given , name.use = official | string |  |
| 8 | Decedent's Legal Name--Middle | MNAME| Decedent| name.given , name.use = official (first letter) | string |  |
| 9 | Decedent's Legal Name--Last | LNAME| Decedent| name.family , name.use = official | string |  |
| 10 | Decedent's Legal Name--Suffix | SUFF| Decedent| name.suffix , name.use = official | string |  |
| 13 | Sex | SEX| Decedent| extension[NVSS-SexAtDeath]  | codeable | [AdministrativeGenderVS] |
| 15 | Social Security Number | SSN| Decedent| identifier.value where system = 'http://hl7.org/fhir/sid/us-ssn and type.coding.code="SB" | string |  |
| 19 | Date of Birth--Year | DOB_YR| Decedent| birthDate | dateTime | See [PartialDatesAndTimes] |
| 20 | Date of Birth--Month | DOB_MO| Decedent| birthDate | dateTime | See [PartialDatesAndTimes] |
| 21 | Date of Birth--Day | DOB_DY| Decedent| birthDate | dateTime | See [PartialDatesAndTimes] |
| 22 | Birthplace--Country | BPLACE_CNT| Decedent| extension[patient-birthPlace].value[x].country  | string | [BirthplaceCountryVS] |
| 23 | State, U.S. Territory or Canadian Province of Birth - code | BPLACE_ST| Decedent| extension[patient-birthPlace].value[x].state or extension[patient-birthPlace].value[x].state.extension[ nationalReportingJurisdictionId] if present  | string | [JurisdictionsProvincesVS] |
| 24 | Decedent's Residence--City | CITYC| Decedent| address.city.extension[cityCode] | string | see [CityCodes] |
| 25 | Decedent's Residence--County | COUNTYC| Decedent| address.district.extension[countyCode] | string | see [CountyCodes] |
| 26 | State, U.S. Territory or Canadian Province of Decedent's residence - code | TOD| Decedent| address.state | string | [StatesTerritoriesProvincesVS] |
| 27 | Decedent's Residence--Country | COUNTRYC| Decedent| address.country | string | [ResidenceCountryVS] |
| 28 | Decedent's Residence--Inside City Limits | LIMITS| Decedent| address.city.extension[ withinCityLimits]  | codeable | [YesNoUnknownVS] |
| 29 | Marital Status | MARITAL| Decedent| maritalStatus | codeable |  [MaritalStatusVS] |
| 30 | Marital Status--Edit Flag | MARITAL_BYPASS| Decedent| maritalStatus.extension[ BypassEditFlag]  | codeable | [EditBypass0124VS] |
| 39 | Decedent of Hispanic Origin?--Mexican | DETHNIC1| Decedent| extension[ NVSSEthnicity].extension[ HispanicMexican].valueCoding | codeable | [YesNoUnknownVS] |
| 40 | Decedent of Hispanic Origin?--Puerto Rican | DETHNIC2| Decedent| extension[ NVSSEthnicity].extension[ HispanicPuertoRican].valueCoding | codeable | [YesNoUnknownVS] |
| 41 | Decedent of Hispanic Origin?--Cuban | DETHNIC3| Decedent| extension[ NVSSEthnicity].extension[ Hispanic Other ].valueCoding | codeable | [YesNoUnknownVS] |
| 42 | Decedent of Hispanic Origin?--Other | DETHNIC4| Decedent| extension[ NVSSEthnicity].extension[ Hispanic Cuban ].valueCoding | codeable | [YesNoUnknownVS] |
| 43 | Decedent of Hispanic Origin?--Other, Literal | DETHNIC5| Decedent| extension[ NVSSEthnicity].extension[ HispanicLiteral ].valueString | string |  |
| 44 | Decedent's Race--White | RACE1| Decedent| extension[ NVSSRace].extension[ White].valueBoolean | boolean |  |
| 45 | Decedent's Race--Black or African American | RACE2| Decedent| extension[ NVSSRace].extension[ BlackOrAfricanAmerican].valueBoolean | boolean |  |
| 46 | Decedent's Race--American Indian or Alaska Native | RACE3| Decedent| extension[ NVSSRace].extension[ AmericanIndianOrAlaskaNative].valueBoolean | boolean |  |
| 47 | Decedent's Race--Asian Indian | RACE4| Decedent| extension[ NVSSRace].extension[ AsianIndian].valueBoolean | boolean |  |
| 48 | Decedent's Race--Chinese | RACE5| Decedent| extension[ NVSSRace].extension[ Chinese].valueBoolean | boolean |  |
| 49 | Decedent's Race--Filipino | RACE6| Decedent| extension[ NVSSRace].extension[ Filipino].valueBoolean | boolean |  |
| 50 | Decedent's Race--Japanese | RACE7| Decedent| extension[ NVSSRace].extension[ Japanese].valueBoolean | boolean |  |
| 51 | Decedent's Race--Korean | RACE8| Decedent| extension[ NVSSRace].extension[ Korean].valueBoolean | boolean |  |
| 52 | Decedent's Race--Vietnamese | RACE9| Decedent| extension[ NVSSRace].extension[ Vietnamese].valueBoolean | boolean |  |
| 53 | Decedent's Race--Other Asian | RACE10| Decedent| extension[ NVSSRace].extension[ OtherAsian].valueBoolean | boolean |  |
| 54 | Decedent's Race--Native Hawaiian | RACE11| Decedent| extension[ NVSSRace].extension[ NativeHawaiian].valueBoolean | boolean |  |
| 55 | Decedent's Race--Guamanian or Chamorro | RACE12| Decedent| extension[ NVSSRace].extension[ GuamanianOrChamorro].valueBoolean | boolean |  |
| 56 | Decedent's Race--Samoan | RACE13| Decedent| extension[ NVSSRace].extension[ Samoan].valueBoolean | boolean |  |
| 57 | Decedent's Race--Other Pacific Islander | RACE14| Decedent| extension[ NVSSRace].extension[ OtherPacificIslander].valueBoolean | boolean |  |
| 58 | Decedent's Race--Other | RACE15| Decedent| extension[ NVSSRace].extension[ OtherRace].valueBoolean | boolean |  |
| 59 | Decedent's Race--First American Indian or Alaska Native Literal | RACE16| Decedent| extension[ NVSSRace].extension[ AmericanIndianorAlaskanNativeLiteral][0].valueString | string |  |
| 60 | Decedent's Race--Second American Indian or Alaska Native Literal | RACE17| Decedent| extension[ NVSSRace].extension[ AmericanIndianorAlaskanNativeLiteral][1].valueString | string |  |
| 61 | Decedent's Race--First Other Asian Literal | RACE18| Decedent| extension[ NVSSRace].extension[ OtherAsianLiteral].valueString[0] | string |  |
| 62 | Decedent's Race--Second Other Asian Literal | RACE19| Decedent| extension[ NVSSRace].extension[ OtherAsianLiteral].valueString[1] | string |  |
| 63 | Decedent's Race--First Other Pacific Islander Literal | RACE20| Decedent| extension[ NVSSRace].extension[ OtherPacificIslandLiteral].valueString[0]   | string |  |
| 64 | Decedent's Race--Second Other Pacific Islander Literal | RACE21| Decedent| extension[ NVSSRace].extension[ OtherPacificIslandLiteral].valueString[1]   | string |  |
| 65 | Decedent's Race--First Other Literal | RACE22| Decedent| extension[ NVSSRace].extension[ OtherRaceLiteral].valueString[0] | string |  |
| 66 | Decedent's Race--Second Other Literal | RACE23| Decedent| extension[ NVSSRace].extension[ OtherRaceLiteral].valueString[1] | string |  |
| 83 | Decedent's Race--Missing | RACE_MVR| Decedent| extension[ NVSSRace].extension[ MissingValueReason].valueCoding | codeable | [RaceMissingValueReasonVS]  |
| 143 | Decedent's spouse living at decedent's DOD? | SPOUSELV| Decedent| extension[SpounseAlive]  | codeable |  [YesNoUnknownNotApplicableVS] |
| 146 | Decedent's Residence - Street number | STNUM_R| Decedent| address.extension[stnum] | string |  |
| 147 | Decedent's Residence - Pre Directional | PREDIR_R| Decedent| address.extension[predir] | string |  |
| 148 | Decedent's Residence - Street name | STNAME_R| Decedent| address.extension[stname] | string |  |
| 149 | Decedent's Residence - Street designator | STDESIG_R| Decedent| address.extension[stdesig] | string |  |
| 150 | Decedent's Residence - Post Directional | POSTDIR_R| Decedent| address.extension[postdir] | string |  |
| 151 | Decedent's Residence - Unit or apt number | UNITNUM_R| Decedent| address.extension[unitnum] | string |  |
| 152 | Decedent's Residence - City or Town name | CITYTEXT_R| Decedent| address.city | string |  |
| 153 | Decedent's Residence - ZIP code | ZIP9_R| Decedent| address.postalCode | string |  |
| 154 | Decedent's Residence - County | COUNTYTEXT_R| Decedent| address.district | string |  |
| 155 | Decedent's Residence - State name | STATETEXT_R | Decedent| address.state (expanded from 2 letter code) | string |  |
| 156 | Decedent's Residence - COUNTRY name | COUNTRYTEXT_R| Decedent| address.country (expanded from 2 letter code) | string |  |
| 157 | Long string address for decedent's place of residence same as above but allows states to choose the way they capture information. | ADDRESS_R| Decedent| address.line | string |  |
| 166 | Middle Name of Decedent  | DMIDDLE| Decedent| name.given , name.use = official | string |  |
| 194 | Decedent's Maiden Name | DMAIDEN| Decedent| name.text , name.use=maiden | string |  |
| 195 | Decedent's Birth Place City - Code | DBPLACECITYCODE| Decedent| extension[patient-birthPlace].value[x].city.extension[ cityCode] | integer | see [CityCodes] |
| 196 | Decedent's Birth Place City - Literal | DBPLACECITY| Decedent| extension[patient-birthPlace].value[x].city | string |  |
| 201 | Informant's Relationship | INFORMRELATE| Decedent| contact.type.text  | string (30 characters) |  |
| 238 | State, U.S. Territory or Canadian Province of Birth - literal | STATEBTH| Decedent| extension[patient-birthPlace].value[x].state or extension[patient-birthPlace].value[x].state.extension[ nationalReportingJurisdictionId] if present  | string | Expanded from coded value |
| 246 | Marital Descriptor | MARITAL_DESCRIP| Decedent| maritalStatus.text  | string |  |
| 2 | State, U.S. Territory or Canadian Province of Death - code | DSTATE| DeathLocation| address.state or address.state.extension[nationalReportingJurisdictionId ] | codeable | [StatesTerritoriesProvincesVS] or [JurisdictionVS] |
| 31 | Place of Death | DPLACE| DeathLocation| type | codeable | [PlaceOfDeathVS] |
| 32 | County of Death Occurrence | COD| DeathLocation| address.district.extension[countyCode] | integer | see [CountyCodes] |
| 130 | Long String address for place of death | ADDRESS_D| DeathLocation| address.line | string  |  |
| 131 | Place of death. Street number | STNUM_D| DeathLocation| address.extension[stnum] | string |  |
| 132 | Place of death. Pre Directional | PREDIR_D| DeathLocation| address.extension[predir] | string |  |
| 133 | Place of death. Street name | STNAME_D| DeathLocation| address.extension[stname] | string |  |
| 134 | Place of death. Street designator | STDESIG_D| DeathLocation| address.extension[stdesig] | string |  |
| 135 | Place of death. Post Directional | POSTDIR_D| DeathLocation| address.extension[postdir] | string |  |
| 136 | Place of death. City or Town name | CITYTEXT_D| DeathLocation| address.city | string |  |
| 137 | Place of death. State name literal | STATETEXT_D| DeathLocation| address.state | string |  |
| 138 | Place of death. Zip code | ZIP9_D| DeathLocation| address.postalCode | string |  |
| 139 | Place of death. County of Death | COUNTYTEXT_D| DeathLocation| address.district | string |  |
| 140 | Place of death. City FIPS code | CITYCODE_D| DeathLocation| address.city.extension[cityCode] | integer | see [CityCodes] |
| 141 | Place of death. Longitude | LONG_D| DeathLocation| position.longitude | float |  |
| 142 | Place of Death. Latitude | LAT_D| DeathLocation| position.latitude | float |  |
| 239 | Country of Death - Code | DTHCOUNTRYCD| DeathLocation| address.country  | string  | Not Used.  For US Death certificates should be US |
| 240 | Country of Death - Literal | DTHCOUNTRY| DeathLocation| address.country  | string  | Not used. For US Death certificates should be US |
| 109 | Was Autopsy performed | AUTOP| AutopsyPerformedIndicator| value | codeable | [YesNoUnknownVS] |
| 110 | Were Autopsy Findings Available to Complete the Cause of Death? | AUTOPF| AutopsyPerformedIndicator| component[$loinc#69436-4].value | codeable | [YesNoUnknownNotApplicableVS] |
| 88 | Infant Death/Birth Linking - birth certificate number | BCNO| BirthRecordIdentifier| value | string(6) |  |
| 89 | Infant Death/Birth Linking - year of birth | IDOB_YR| BirthRecordIdentifier| component[birthYear].value | dateTime | YYYY component |
| 90 | Infant Death/Birth Linking - State, U.S. Territory or Canadian Province of Birth - code | BSTATE| BirthRecordIdentifier| component[birthJurisdiction].value | string | [JurisdictionVS] |
| 185 | Cause of Death Part I Line a | COD1A| CauseOfDeathPart1| value.text | string(120) |  |
| 186 | Cause of Death Part I Interval, Line a | INTERVAL1A| CauseOfDeathPart1| component[$loinc#69440-6].value | string(20) |  |
| 187 | Cause of Death Part I Line b | COD1B| CauseOfDeathPart1| value.text | string(120) |  |
| 188 | Cause of Death Part I Interval, Line b | INTERVAL1B| CauseOfDeathPart1| component[$loinc#69440-6].value | string(20) |  |
| 189 | Cause of Death Part I Line c | COD1C| CauseOfDeathPart1| value.text | string(120) |  |
| 190 | Cause of Death Part I Interval, Line c | INTERVAL1C| CauseOfDeathPart1| component[$loinc#69440-6].value | string(20) |  |
| 191 | Cause of Death Part I Line d | COD1D| CauseOfDeathPart1| value.text | string(120) |  |
| 192 | Cause of Death Part I Interval, Line d | INTERVAL1D| CauseOfDeathPart1| component[$loinc#69440-6].value | string(20) |  |
| 193 | Cause of Death Part II | OTHERCONDITION| CauseOfDeathPart2| value.text | string(240) |  |
| 220 | Certifier's First Name | CERTFIRST| Certifier| name.given  | string |  |
| 221 | Certifier's Middle Name | CERTMIDDLE| Certifier| name.given  | string |  |
| 222 | Certifier's Last Name | CERTLAST| Certifier| name.family  | string |  |
| 223 | Certifier's Suffix Name | CERTSUFFIX| Certifier| name.suffix  | string |  |
| 224 | Certifier - Street number | CERTSTNUM| Certifier| address.extension[stnum] | string |  |
| 225 | Certifier - Pre Directional | CERTPREDIR| Certifier| address.extension[predir] | string |  |
| 226 | Certifier - Street name | CERTSTRNAME| Certifier| address.extension[stname] | string |  |
| 227 | Certifier - Street designator | CERTSTRDESIG| Certifier| address.extension[stdesig] | string |  |
| 228 | Certifier - Post Directional | CERTPOSTDIR| Certifier| address.extension[postdir] | string |  |
| 229 | Certifier - Unit or apt number | CERTUNITNUM| Certifier| address.extension[unitnum] | string |  |
| 230 | Long string address for Certifier same as above but allows states to choose the way they capture information. | CERTADDRESS| Certifier| address.line  | string |  |
| 231 | Certifier - City or Town name | CERTCITYTEXT| Certifier| address.city  | string |  |
| 232 | State, U.S. Territory or Canadian Province of Certifier - code | CERTSTATECD| Certifier| address.state | string | [StateTerritoryProvinceVS] |
| 233 | State, U.S. Territory or Canadian Province of Certifier - literal | CERTSTATE| Certifier| address.state | string | [StateTerritoryProvinceVS] |
| 234 | Certifier - Zip | CERTZIP| Certifier| address.postalCode | string |  |
| 3 | Certificate Number | FILENO| DeathCertificateDocument| identifier.value | string(6) |  |
| 5 | Auxiliary State file number | AUXNO| DeathCertificateDocument| identifier.extension[auxiliaryStateIdentifier1].value | string(12) |  |
| 121 | Auxiliary State file number | AUXNO2| DeathCertificateDocument| identifier.extension[auxiliaryStateIdentifier2].value | string(12) |  |
| 6 | Source flag: paper/electronic | MFILED| DeathCertificate| extension[ filingFormat]  | codeable |  [FilingFormatVS] |
| 96 | Date of Registration--Year | DOR_YR| DeathCertificate| date | dateTime |  |
| 97 | Date of Registration--Month | DOR_MO| DeathCertificate| date | dateTime |  |
| 98 | Date of Registration--Day | DOR_DY| DeathCertificate| date | dateTime |  |
| 122 | State Specific Data  | STATESP| DeathCertificate| extension[ stateSpecificField] | string(30) |  |
| 119 | Title of Certifier | CERTL| DeathCertification| performer.function (note that if value is "OTH" then performed.function.text should contain 'Full Text for Other Individual Legally Allowed to Certify') | codeable | [CertifierTypesVS] |
| 235 | Certifier Date Signed | CERTDATE| DeathCertification| performed | dateTime |  |
| 1 | Date of Death--Year | DOD_YR| DeathDate| value | dateTime | Required for processing |
| 34 | Date of Death--Month | DOD_MO| DeathDate| value | dateTime | See [PartialDatesAndTimes] |
| 35 | Date of Death--Day | DOD_DY| DeathDate| value | dateTime | See [PartialDatesAndTimes] |
| 36 | Time of Death | TOD| DeathDate| value | dateTime | See [PartialDatesAndTimes] |
| 218 | Person Pronouncing Date Signed | PPDATESIGNED| DeathDate| component[$loinc#80616-6].value | dateTime |  |
| 219 | Person Pronouncing Time Pronounced | PPTIME| DeathDate| component[$loinc#80616-6].value | dateTime |  |
| 16 | Decedent's Age--Type | AGETYPE| DecedentAge| valueQuantity.system | codeable | [UnitsOfAgeVS] |
| 17 | Decedent's Age--Units | AGE | DecedentAge| valueQuantity.value | decimal |  |
| 18 | Decedent's Age--Edit Flag | AGE_BYPASS| DecedentAge| value.extension[BypassEditFlag].value | codeable | [EditBypass01VS] |
| 33 | Method of Disposition | DISP| DecedentDispositionMethod| value | codeable | [MethodOfDispositionVS] |
| 37 | Decedent's Education | DEDUC| DecedentEducationLevel| value | codeable | [EducationLevelVS] |
| 38 | Decedent's Education--Edit Flag | DEDUC_BYPASS| DecedentEducationLevel| value.extension[ByPassEdit].value | codeable | [EditBypass01234VS] |
| 12 | Father's Surname | FLNAME| DecedentFather| name.family | string |  |
| 167 | Father's First Name | DDADF| DecedentFather| name.given | string |  |
| 168 | Father's Middle Name | DDADMID| DecedentFather| name.given | string |  |
| 199 | Father's Suffix | FATHERSUFFIX| DecedentFather| name.suffix | string |  |
| 128 | Decedent ever served in Armed Forces? | ARMEDF| DecedentMilitaryService| value | codeable | [YesNoUnknownVS] |
| 169 | Mother's First Name | DMOMF| DecedentMother| name.given | string |  |
| 170 | Mother's Middle Name | DMOMMID| DecedentMother| name.given | string |  |
| 171 | Mother's Maiden Surname | DMOMMDN| DecedentMother| name.family , name.type=maiden | string  |  |
| 200 | Mother's Suffix | MOTHERSSUFFIX| DecedentMother| name.suffix | string |  |
| 144 | Spouse's First Name | SPOUSEF| DecedentSpouse| name.given | string |  |
| 145 | Husband's Surname/Wife's Maiden Last Name | SPOUSEL | DecedentSpouse| name.family, name.use = 'maiden | string |  |
| 197 | Spouse's Middle Name | SPOUSEMIDNAME| DecedentSpouse| name.given | string |  |
| 198 | Spouse's Suffix | SPOUSESUFFIX| DecedentSpouse| name.suffix | string |  |
| 112 | Pregnancy
Note: sending state will use format they send to NCHS. Receiving state may wish to call "near" neighboring states where they receive the greatest volume of their resident transcripts to double check on time items a particular state uses to collect this information. It appears to be highly variable. | PREG| DecedentPregnancyStatus| value | codeable | [PregnancyStatusVS] |
| 113 | If Female--Edit Flag: From EDR only | PREG_BYPASS| DecedentPregnancyStatus| value.extension[BypassEditFlag].value | codeable | [EditBypass012VS] |
| 84 | Occupation -- Literal (REQUIRED) | OCCUP| DecedentUsualWork| value.text | string(40) |  |
| 86 | Industry -- Literal (REQUIRED) | INDUST| DecedentUsualWork| component.value.text | string(40) |  |
| 129 | Death Institution name | DINSTI| DispositionLocation| name | string  |  |
| 202 | State, U.S. Territory or Canadian Province of Disposition - code | DISPSTATECD| DispositionLocation| address.state | string | [StatesTerritoriesProvincesVS] |
| 203 | Disposition State or Territory - Literal | DISPSTATE| DispositionLocation| address.state | string | [StatesTerritoriesProvincesVS] |
| 204 | Disposition City - Code | DISPCITYCODE| DispositionLocation| address.city.extension[ cityCode].value | integer | see [CityCodes] |
| 205 | Disposition City - Literal | DISPCITY| DispositionLocation| address.city | string |  |
| 172 | Was case Referred to Medical Examiner/Coroner? | REFERRED| ExaminerContacted| value | codeable | [YesNoUnknownVS] |
| 206 | Funeral Facility Name | FUNFACNAME| FuneralHome| name | string |  |
| 207 | Funeral Facility - Street number | FUNFACSTNUM| FuneralHome| address.extension[stnum] | string |  |
| 208 | Funeral Facility - Pre Directional | FUNFACPREDIR| FuneralHome| address.extension[predir] | string |  |
| 209 | Funeral Facility - Street name | FUNFACSTRNAME| FuneralHome| address.extension[stname] | string |  |
| 210 | Funeral Facility - Street designator | FUNFACSTRDESIG| FuneralHome| address.extension[stdesig] | string |  |
| 211 | Funeral Facility - Post Directional | FUNPOSTDIR| FuneralHome| address.extension[postdir] | string |  |
| 212 | Funeral Facility - Unit or apt number | FUNUNITNUM| FuneralHome| address.extension[unitnum] | string |  |
| 213 | Long string address for Funeral Facility same as above but allows states to choose the way they capture information. | FUNFACADDRESS| FuneralHome| address.line | string | address.line  |
| 214 | Funeral Facility - City or Town name | FUNCITYTEXT| FuneralHome| address.city | string | address.city  |
| 215 | State, U.S. Territory or Canadian Province of Funeral Facility - code | FUNSTATECD| FuneralHome| address.state | string | [StateTerritoryProvinceVS] |
| 216 | State, U.S. Territory or Canadian Province of Funeral Facility - literal | FUNSTATE| FuneralHome| address.state. (expanded from code) | string | [StateTerritoryProvinceVS] |
| 217 | Funeral Facility - ZIP | FUNZIP| FuneralHome| address.postalCode | string |  |
| 114 | Date of injury--month | DOI_MO| InjuryIncident| effective | dateTime | See [PartialDatesAndTimes] |
| 115 | Date of injury--day | DOI_DY| InjuryIncident| effective | dateTime | See [PartialDatesAndTimes] |
| 116 | Date of injury--year | DOI_YR| InjuryIncident| effective | dateTime | See [PartialDatesAndTimes] |
| 117 | Time of injury | TOI_HR| InjuryIncident| effective | dateTime | See [PartialDatesAndTimes] |
| 118 | Injury at work | WORKINJ| InjuryIncident| component[InjuryAtWork].value | codeable | [YesNoUnknownNotApplicableVS] |
| 126 | Time of Injury Unit | TOI_UNIT| InjuryIncident| effective | dateTime | See [PartialDatesAndTimes] |
| 173 | Place of Injury- literal | POILITRL| InjuryIncident| component[placeOfInjury].value.text | string |  |
| 174 | Describe How Injury Occurred | HOWINJ| InjuryIncident| value.text | string |  |
| 237 | State, U.S. Territory or Canadian Province of Injury - literal | STINJURY| InjuryIncident| address.state (expanded from 2 letter code) | string | [StateTerritoryProvinceVS] |
| 176 | County of Injury - literal | COUNTYTEXT_I| InjuryLocation| address.district | string |  |
| 177 | County of Injury code | COUNTYCODE_I| InjuryLocation| address.district.extension[countyCode].value | integer | see [CountyCodes] |
| 178 | Town/city of Injury - literal | CITYTEXT_I| InjuryLocation| address.city | string |  |
| 179 | Town/city of Injury code | CITYCODE_I| InjuryLocation| address.city.extension[ cityCode].value | integer | see [CityCodes] |
| 180 | State, U.S. Territory or Canadian Province of Injury - code | STATECODE_I| InjuryLocation| address.state | string | [StatesTerritoriesProvincesVS] |
| 181 | Place of injury. Longitude | LONG_I| InjuryLocation| position.longitude | float |  |
| 182 | Place of injury. Latitude | LAT_I| InjuryLocation| position.latitude | float |  |
| 100 | Manner of Death | MANNER| MannerOfDeath| value | codeable | [MannerOfDeathVS] |
| 248 | Blank for One-Byte Field 1 | PLACE1_1| ParamsForEmergingIssues| parameter[PLACE1_1].value | string(1) |  |
| 249 | Blank for One-Byte Field 2 | PLACE1_2| ParamsForEmergingIssues| parameter[PLACE1_2].value | string(1) |  |
| 250 | Blank for One-Byte Field 3 | PLACE1_3| ParamsForEmergingIssues| parameter[PLACE1_3].value | string(1) |  |
| 251 | Blank for One-Byte Field 4 | PLACE1_4| ParamsForEmergingIssues| parameter[PLACE1_4].value | string(1) |  |
| 252 | Blank for One-Byte Field 5 | PLACE1_5| ParamsForEmergingIssues| parameter[PLACE1_5].value | string(1) |  |
| 253 | Blank for One-Byte Field 6 | PLACE1_6| ParamsForEmergingIssues| parameter[PLACE1_6].value | string(1) |  |
| 254 | Blank for Eight-Byte Field 1 | PLACE8_1| ParamsForEmergingIssues| parameter[PLACE8_1].value | string(8) |  |
| 255 | Blank for Eight-Byte Field 2 | PLACE8_2| ParamsForEmergingIssues| parameter[PLACE8_2].value | string(8) |  |
| 256 | Blank for Eight-Byte Field 3 | PLACE8_3| ParamsForEmergingIssues| parameter[PLACE8_3].value | string(8) |  |
| 257 | Blank for Twenty-Byte Field | PLACE20| ParamsForEmergingIssues| parameter[PLACE20_1].value | string(20) |  |
| 123 | Surgery Date--month | SUR_MO| SurgeryDate| value | dateTime | See [PartialDatesAndTimes] |
| 124 | Surgery Date--day | SUR_DY| SurgeryDate| value | dateTime | See [PartialDatesAndTimes] |
| 125 | Surgery Date--year | SUR_YR| SurgeryDate| value | dateTime | See [PartialDatesAndTimes] |
| 111 | Did Tobacco Use Contribute to Death? | TOBAC| TobaccoUseContributedToDeath| value | codeable | [ContributoryTobaccoUseVS] |
{: .grid }
{% include markdown-link-references.md %}
