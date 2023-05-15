### Death Record Data Dictionary

| **#** |  **Description**   |  **IJE Name**  | **Profile**  | **IJE only** |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | --------------- | ------------ | ---------- | :------------: | ---------- | ---------- | -------------- |
| 109 | Was Autopsy performed | AUTOP| [AutopsyPerformedIndicator]| |value | codeable | [YesNoUnknownVS] | 
| 110 | Were Autopsy Findings Available to Complete the Cause of Death? | AUTOPF| [AutopsyPerformedIndicator]| |component[ autopsyResultsAvailable ].value | codeable | [YesNoUnknownNotApplicableVS] | 
| 88 | Infant Death/Birth Linking - birth certificate number | BCNO| [BirthRecordIdentifier]| |value | string(6) | - | 
| 89 | Infant Death/Birth Linking - year of birth | IDOB_YR| [BirthRecordIdentifier]| |component[birthYear].value | dateTime | YYYY component | 
| 90 | Infant Death/Birth Linking - State, U.S. Territory or Canadian Province of Birth - code | BSTATE| [BirthRecordIdentifier]| |component[birthJurisdiction].value | string | [JurisdictionsProvincesVS] | 
| 185 | Cause of Death Part I Line a | COD1A| [CauseOfDeathPart1]| |value.text,   component[lineNumber] = 1 | string(120) | - | 
| 186 | Cause of Death Part I Interval, Line a | INTERVAL1A| [CauseOfDeathPart1]| |component[interval].value, component[lineNumber] = 1 | string(20) | - | 
| 187 | Cause of Death Part I Line b | COD1B| [CauseOfDeathPart1]| |value.text,   component[lineNumber] = 2 | string(120) | - | 
| 188 | Cause of Death Part I Interval, Line b | INTERVAL1B| [CauseOfDeathPart1]| |component[interval].value, component[lineNumber] = 2 | string(20) | - | 
| 189 | Cause of Death Part I Line c | COD1C| [CauseOfDeathPart1]| |value.text,   component[lineNumber] = 3 | string(120) | - | 
| 190 | Cause of Death Part I Interval, Line c | INTERVAL1C| [CauseOfDeathPart1]| |component[interval].value, component[lineNumber] = 3 | string(20) | - | 
| 191 | Cause of Death Part I Line d | COD1D| [CauseOfDeathPart1]| |value.text,   component[lineNumber] = 4 | string(120) | - | 
| 192 | Cause of Death Part I Interval, Line d | INTERVAL1D| [CauseOfDeathPart1]| |component[interval].value, component[lineNumber] = 4 | string(20) | - | 
| 193 | Cause of Death Part II | OTHERCONDITION| [CauseOfDeathPart2]| |value.text | string(240) | - | 
| 220 | Certifier's First Name | CERTFIRST| [Certifier]| x|name.given , name.use = official | string | - | 
| 221 | Certifier's Middle Name | CERTMIDDLE| [Certifier]| x|name.given , name.use = official | string | - | 
| 222 | Certifier's Last Name | CERTLAST| [Certifier]| x|name.family , name.use = official | string | - | 
| 223 | Certifier's Suffix Name | CERTSUFFIX| [Certifier]| x|name.suffix , name.use = official | string | - | 
| 224 | Certifier - Street number | CERTSTNUM| [Certifier]| x|address.extension[stnum] | string | - | 
| 225 | Certifier - Pre Directional | CERTPREDIR| [Certifier]| x|address.extension[predir] | string | - | 
| 226 | Certifier - Street name | CERTSTRNAME| [Certifier]| x|address.extension[stname] | string | - | 
| 227 | Certifier - Street designator | CERTSTRDESIG| [Certifier]| x|address.extension[stdesig] | string | - | 
| 228 | Certifier - Post Directional | CERTPOSTDIR| [Certifier]| x|address.extension[postdir] | string | - | 
| 229 | Certifier - Unit or apt number | CERTUNITNUM| [Certifier]| x|address.extension[unitnum] | string | - | 
| 230 | Long string address for Certifier same as above but allows states to choose the way they capture information. | CERTADDRESS| [Certifier]| x|address.line  | string | - | 
| 231 | Certifier - City or Town name | CERTCITYTEXT| [Certifier]| x|address.city  | string | - | 
| 232 | State, U.S. Territory or Canadian Province of Certifier - code | CERTSTATECD| [Certifier]| x|address.state | string | [StatesTerritoriesProvincesVS] | 
| 233 | State, U.S. Territory or Canadian Province of Certifier - literal | CERTSTATE| [Certifier]| x|address.state (expanded from 2 letter code) | string | See [StateLiterals] | 
| 234 | Certifier - Zip | CERTZIP| [Certifier]| x|address.postalCode | string | - | 
| 6 | Source flag: paper/electronic | MFILED| [DeathCertificate]| |extension[ filingFormat]  | codeable |  [FilingFormatVS] | 
| 96 | Date of Registration--Year | DOR_YR| [DeathCertificate]| |date | dateTime | - | 
| 97 | Date of Registration--Month | DOR_MO| [DeathCertificate]| |date | dateTime | - | 
| 98 | Date of Registration--Day | DOR_DY| [DeathCertificate]| |date | dateTime | - | 
| 122 | State Specific Data  | STATESP| [DeathCertificate]| |extension[ stateSpecificField] | string(30) | - | 
| 184 | Replacement Record  | REPLACE (*deprecated*)| [DeathCertificate]| |extension[replaceStatus].value | codeable | [ReplaceStatusVS] | 
| NA | Death Record Identifier | *NO IJE MAPPING*| [DeathCertificateDocument]| |identifier.value | string(12) | YYYYJJNNNNNN,  YYYY = death year JJ = jurisdiction  and NNNNNN = certificate number | 
| 3 | Certificate Number | FILENO| [DeathCertificateDocument]| |identifier.extension[ certificateNumber].value | string(6) | - | 
| 5 | Auxiliary State file number | AUXNO| [DeathCertificateDocument]| |identifier.extension[auxiliaryStateIdentifier1].value | string(12) | - | 
| 121 | Auxiliary State file number | AUXNO2| [DeathCertificateDocument]| |identifier.extension[auxiliaryStateIdentifier2].value | string(12) | - | 
| 1 | Date of Death--Year | DOD_YR| [DeathDate]| |value | dateTime | Required for processing | 
| 31 | Place of Death | DPLACE| [DeathDate]| |component[placeOfDeath].value | codeable | [PlaceOfDeathVS] | 
| 34 | Date of Death--Month | DOD_MO| [DeathDate]| |value | dateTime | See [PartialDatesAndTimes] | 
| 35 | Date of Death--Day | DOD_DY| [DeathDate]| |value | dateTime | See [PartialDatesAndTimes] | 
| 36 | Time of Death | TOD| [DeathDate]| |value | dateTime | See [PartialDatesAndTimes] | 
| 218 | Person Pronouncing Date Signed | PPDATESIGNED| [DeathDate]| x|component[datetimePronouncedDead	].valueDateTime | dateTime |  | 
| 219 | Person Pronouncing Time Pronounced | PPTIME| [DeathDate]| x|component[datetimePronouncedDead].valueDateTime if a date is also specified, or component[datetimePronouncedDead].valueTime if no date is specified | dateTime or time |  | 
| 119 | Title of Certifier | CERTL| [DeathCertification]| |performer.function (note that if value is "OTH" then performed.function.text should contain 'Full Text for Other Individual Legally Allowed to Certify') | codeable | [CertifierTypesVS] | 
| 235 | Certifier Date Signed | CERTDATE| [DeathCertification]| x|performed | dateTime | - | 
| 2 | State, U.S. Territory or Canadian Province of Death - code | DSTATE| [DeathLocation]| |address.state or address.state.extension[nationalReportingJurisdictionId ] | codeable | [StatesTerritoriesProvincesVS] in state field or [JurisdictionVS] in extension | 
| 32 | County of Death Occurrence | COD| [DeathLocation]| |address.district.extension[countyCode] | integer | see [CountyCodes] | 
| 129 | Death Institution name | DINSTI| [DeathLocation]| x|name | string  | - | 
| 130 | Long String address for place of death | ADDRESS_D| [DeathLocation]| x|address.line | string  | - | 
| 131 | Place of death. Street number | STNUM_D| [DeathLocation]| x|address.extension[stnum] | string | - | 
| 132 | Place of death. Pre Directional | PREDIR_D| [DeathLocation]| x|address.extension[predir] | string | - | 
| 133 | Place of death. Street name | STNAME_D| [DeathLocation]| x|address.extension[stname] | string | - | 
| 134 | Place of death. Street designator | STDESIG_D| [DeathLocation]| x|address.extension[stdesig] | string | - | 
| 135 | Place of death. Post Directional | POSTDIR_D| [DeathLocation]| x|address.extension[postdir] | string | - | 
| 136 | Place of death. City or Town name | CITYTEXT_D| [DeathLocation]| x|address.city | string | - | 
| 137 | Place of death. State name literal | STATETEXT_D| [DeathLocation]| x|address.state (expanded from 2 letter code) | string | - | 
| 138 | Place of death. Zip code | ZIP9_D| [DeathLocation]| x|address.postalCode | string | - | 
| 139 | Place of death. County of Death | COUNTYTEXT_D| [DeathLocation]| x|address.district | string | - | 
| 140 | Place of death. City FIPS code | CITYCODE_D| [DeathLocation]| x|address.city.extension[ cityCode] | integer | see [CityCodes] | 
| 141 | Place of death. Longitude | LONG_D| [DeathLocation]| x|position.longitude | float | - | 
| 142 | Place of Death. Latitude | LAT_D| [DeathLocation]| x|position.latitude | float | - | 
| 239 | Country of Death - Code | DTHCOUNTRYCD| [DeathLocation]| x|address.country  | string  | [ResidenceCountryVS].  Note: For US Death certificates should be US | 
| 240 | Country of Death - Literal | DTHCOUNTRY| [DeathLocation]| x|address.country  (expanded from 2 letter code) | string  | See [CountryLIterals].   Not used. For US Death certificates should be 'United States'. | 
| 7 | Decedent's Legal Name--Given  | GNAME| [Decedent]| |name.given , name.use = official | string | - | 
| 8 | Decedent's Legal Name--Middle | MNAME| [Decedent]| |name.given , name.use = official (first letter) | string | - | 
| 9 | Decedent's Legal Name--Last | LNAME| [Decedent]| |name.family , name.use = official | string | - | 
| 10 | Decedent's Legal Name--Suffix | SUFF| [Decedent]| |name.suffix , name.use = official | string | - | 
| 13 | Sex | SEX| [Decedent]| |extension[NVSS-SexAtDeath]  | codeable | [AdministrativeGenderVS] | 
| 15 | Social Security Number | SSN| [Decedent]| |identifier.value where system = 'http://hl7.org/fhir/sid/us-ssn and type.coding.code="SB" | string | - | 
| 19 | Date of Birth--Year | DOB_YR| [Decedent]| |birthDate | dateTime | See [PartialDatesAndTimes] | 
| 20 | Date of Birth--Month | DOB_MO| [Decedent]| |birthDate | dateTime | See [PartialDatesAndTimes] | 
| 21 | Date of Birth--Day | DOB_DY| [Decedent]| |birthDate | dateTime | See [PartialDatesAndTimes] | 
| 22 | Birthplace--Country | BPLACE_CNT| [Decedent]| |extension[patient-birthPlace].value[x].country  | string | [BirthplaceCountryVS] | 
| 23 | State, U.S. Territory or Canadian Province of Birth - code | BPLACE_ST| [Decedent]| |extension[patient-birthPlace].value[x].state | string | [StatesTerritoriesProvincesVS] | 
| 24 | Decedent's Residence--City | CITYC| [Decedent]| |address.city.extension[ cityCode ] | string | see [CityCodes] | 
| 25 | Decedent's Residence--County | COUNTYC| [Decedent]| |address.district.extension[ countyCode ] | string | see [CountyCodes] | 
| 26 | State, U.S. Territory or Canadian Province of Decedent's residence - code | STATEC| [Decedent]| |address.state | string | [StatesTerritoriesProvincesVS] | 
| 27 | Decedent's Residence--Country | COUNTRYC| [Decedent]| |address.country | string | [ResidenceCountryVS] | 
| 28 | Decedent's Residence--Inside City Limits | LIMITS| [Decedent]| |address.city.extension[ withinCityLimits]  | codeable | [YesNoUnknownVS] | 
| 29 | Marital Status | MARITAL| [Decedent]| |maritalStatus | codeable |  [MaritalStatusVS] | 
| 30 | Marital Status--Edit Flag | MARITAL_BYPASS| [Decedent]| |maritalStatus.extension[ BypassEditFlag]  | codeable | [EditBypass0124VS] | 
| 143 | Decedent's spouse living at decedent's DOD? | SPOUSELV| [Decedent]| x|extension[SpouseAlive]  | codeable |  [SpouseAliveVS] | 
| 146 | Decedent's Residence - Street number | STNUM_R| [Decedent]| |address.extension[stnum] | string | - | 
| 147 | Decedent's Residence - Pre Directional | PREDIR_R| [Decedent]| |address.extension[predir] | string | - | 
| 148 | Decedent's Residence - Street name | STNAME_R| [Decedent]| |address.extension[stname] | string | - | 
| 149 | Decedent's Residence - Street designator | STDESIG_R| [Decedent]| |address.extension[stdesig] | string | - | 
| 150 | Decedent's Residence - Post Directional | POSTDIR_R| [Decedent]| |address.extension[postdir] | string | - | 
| 151 | Decedent's Residence - Unit or apt number | UNITNUM_R| [Decedent]| |address.extension[unitnum] | string | - | 
| 152 | Decedent's Residence - City or Town name | CITYTEXT_R| [Decedent]| |address.city | string | - | 
| 153 | Decedent's Residence - ZIP code | ZIP9_R| [Decedent]| |address.postalCode | string | - | 
| 154 | Decedent's Residence - County | COUNTYTEXT_R| [Decedent]| |address.district | string | - | 
| 155 | Decedent's Residence - State name | STATETEXT_R | [Decedent]| |address.state (expanded from 2 letter code) | string | See [StateLiterals] | 
| 156 | Decedent's Residence - COUNTRY name | COUNTRYTEXT_R| [Decedent]| |address.country (expanded from 2 letter code) | string | See [CountryLiterals] | 
| 157 | Long string address for decedent's place of residence same as above but allows states to choose the way they capture information. | ADDRESS_R| [Decedent]| |address.line[0] | string | - | 
| 166 | Middle Name of Decedent  | DMIDDLE| [Decedent]| x|name.given , name.use = official | string | - | 
| 194 | Decedent's Maiden Name | DMAIDEN| [Decedent]| x|name.text , name.use=maiden | string | - | 
| 195 | Decedent's Birth Place City - Code | DBPLACECITYCODE| [Decedent]| x|extension[patient-birthPlace].value[x].city.extension[ cityCode] | integer | see [CityCodes] | 
| 196 | Decedent's Birth Place City - Literal | DBPLACECITY| [Decedent]| x|extension[patient-birthPlace].value[x].city | string | - | 
| 201 | Informant's Relationship | INFORMRELATE| [Decedent]| x|contact.type.text  | string (30 characters) | - | 
| 238 | State, U.S. Territory or Canadian Province of Birth - literal | STATEBTH| [Decedent]| x|extension[patient-birthPlace].value[x].state or extension[patient-birthPlace].value[x].state.extension[ nationalReportingJurisdictionId] if present    (expanded from 2 letter code) | string | See [StateLiterals] | 
| 246 | Marital Descriptor | MARITAL_DESCRIP| [Decedent]| x|maritalStatus.text  | string | - | 
| 16 | Decedent's Age--Type | AGETYPE| [DecedentAge]| |valueQuantity.code | codeable | [UnitsOfAgeVS] | 
| 17 | Decedent's Age--Units | AGE | [DecedentAge]| |valueQuantity.value | decimal | - | 
| 18 | Decedent's Age--Edit Flag | AGE_BYPASS| [DecedentAge]| |value.extension[BypassEditFlag].value | codeable | [EditBypass01VS] | 
| 33 | Method of Disposition | DISP| [DecedentDispositionMethod]| |value | codeable | [MethodOfDispositionVS] | 
| 37 | Decedent's Education | DEDUC| [DecedentEducationLevel]| |value | codeable | [EducationLevelVS] | 
| 38 | Decedent's Education--Edit Flag | DEDUC_BYPASS| [DecedentEducationLevel]| |value.extension[ByPassEdit].value | codeable | [EditBypass01234VS] | 
| 12 | Father's Surname | FLNAME| [DecedentFather]| |name.family | string | - | 
| 167 | Father's First Name | DDADF| [DecedentFather]| x|name.given , name.use = official | string | - | 
| 168 | Father's Middle Name | DDADMID| [DecedentFather]| x|name.given , name.use = official | string | - | 
| 199 | Father's Suffix | FATHERSUFFIX| [DecedentFather]| x|name.suffix , name.use = official | string | - | 
| 128 | Decedent ever served in Armed Forces? | ARMEDF| [DecedentMilitaryService]| x|value | codeable | [YesNoUnknownVS] | 
| 169 | Mother's First Name | DMOMF| [DecedentMother]| x|name.given , name.use = official | string | - | 
| 170 | Mother's Middle Name | DMOMMID| [DecedentMother]| x|name.given , name.use = official | string | - | 
| 171 | Mother's Maiden Surname | DMOMMDN| [DecedentMother]| x|name.family , name.type=maiden | string  | - | 
| 200 | Mother's Suffix | MOTHERSSUFFIX| [DecedentMother]| x|name.suffix , name.use = official | string | - | 
| 144 | Spouse's First Name | SPOUSEF| [DecedentSpouse]| x|name.given | string | - | 
| 145 | Husband's Surname/Wife's Maiden Last Name | SPOUSEL | [DecedentSpouse]| x|name.family, name.use = 'maiden | string | - | 
| 197 | Spouse's Middle Name | SPOUSEMIDNAME| [DecedentSpouse]| x|name.given , name.use = official | string | - | 
| 198 | Spouse's Suffix | SPOUSESUFFIX| [DecedentSpouse]| x|name.suffix , name.use = official | string | - | 
| 112 | Pregnancy | PREG| [DecedentPregnancyStatus]| |value | codeable | [PregnancyStatusVS] | 
| 113 | If Female--Edit Flag: From EDR only | PREG_BYPASS| [DecedentPregnancyStatus]| |value.extension[BypassEditFlag].value | codeable | [EditBypass012VS] | 
| 84 | Occupation -- Literal  | OCCUP| [DecedentUsualWork]| |value.text | string(40) | - | 
| 86 | Industry -- Literal  | INDUST| [DecedentUsualWork]| |component [ odh-UsualIndustry	].value.text | string(40) | - | 
| 94 | Occupation -- 4 digit Code  | OCCUPC4| [DecedentUsualWork]| |valueCodeableConcept.coding[occupationCDCCensus2018]  | codeable | [PHVS_Occupation_CDC_Census2018VS] | 
| 95 | Industry -- 4 digit Code | INDUSTC4| [DecedentUsualWork]| |component[odh-UsualIndustry].valueCodeableConcept.coding[industryCDCCensus2018]  | codeable | [PHVS_Industry_CDC_Census2018VS] | 
| 202 | State, U.S. Territory or Canadian Province of Disposition - code | DISPSTATECD| [DispositionLocation]| x|address.state | string | [StatesTerritoriesProvincesVS] | 
| 203 | Disposition State or Territory - Literal | DISPSTATE| [DispositionLocation]| x|address.state (expanded from 2 letter code) | string | See [StateLiterals] | 
| 204 | Disposition City - Code | DISPCITYCODE| [DispositionLocation]| x|address.city.extension[ cityCode].value | integer | see [CityCodes] | 
| 205 | Disposition City - Literal | DISPCITY| [DispositionLocation]| x|address.city | string | - | 
| 172 | Was case Referred to Medical Examiner/Coroner? | REFERRED| [ExaminerContacted]| x|value | codeable | [YesNoUnknownVS] | 
| 206 | Funeral Facility Name | FUNFACNAME| [FuneralHome]| x|name | string | - | 
| 207 | Funeral Facility - Street number | FUNFACSTNUM| [FuneralHome]| x|address.extension[stnum] | string | - | 
| 208 | Funeral Facility - Pre Directional | FUNFACPREDIR| [FuneralHome]| x|address.extension[predir] | string | - | 
| 209 | Funeral Facility - Street name | FUNFACSTRNAME| [FuneralHome]| x|address.extension[stname] | string | - | 
| 210 | Funeral Facility - Street designator | FUNFACSTRDESIG| [FuneralHome]| x|address.extension[stdesig] | string | - | 
| 211 | Funeral Facility - Post Directional | FUNPOSTDIR| [FuneralHome]| x|address.extension[postdir] | string | - | 
| 212 | Funeral Facility - Unit or apt number | FUNUNITNUM| [FuneralHome]| x|address.extension[unitnum] | string | - | 
| 213 | Long string address for Funeral Facility same as above but allows states to choose the way they capture information. | FUNFACADDRESS| [FuneralHome]| x|address.line | string | address.line  | 
| 214 | Funeral Facility - City or Town name | FUNCITYTEXT| [FuneralHome]| x|address.city | string | address.city  | 
| 215 | State, U.S. Territory or Canadian Province of Funeral Facility - code | FUNSTATECD| [FuneralHome]| x|address.state | string | [StatesTerritoriesProvincesVS] | 
| 216 | State, U.S. Territory or Canadian Province of Funeral Facility - literal | FUNSTATE| [FuneralHome]| x|address.state (expanded from 2 letter code) | string | See [StateLiterals] | 
| 217 | Funeral Facility - ZIP | FUNZIP| [FuneralHome]| x|address.postalCode | string | - | 
| 114 | Date of injury--month | DOI_MO| [InjuryIncident]| |effective | dateTime | See [PartialDatesAndTimes] | 
| 115 | Date of injury--day | DOI_DY| [InjuryIncident]| |effective | dateTime | See [PartialDatesAndTimes] | 
| 116 | Date of injury--year | DOI_YR| [InjuryIncident]| |effective | dateTime | See [PartialDatesAndTimes] | 
| 117 | Time of injury | TOI_HR| [InjuryIncident]| |effective | dateTime | See [PartialDatesAndTimes] | 
| 118 | Injury at work | WORKINJ| [InjuryIncident]| |component[InjuryAtWork].value | codeable | [YesNoUnknownNotApplicableVS] | 
| 126 | Time of Injury Unit | TOI_UNIT| [InjuryIncident]| |effective | implicit |  | 
| 173 | Place of Injury- literal | POILITRL| [InjuryIncident]| |component[ placeOfInjury ].value.text | string | - | 
| 174 | Describe How Injury Occurred | HOWINJ| [InjuryIncident]| |value.text | string | - | 
| 175 | If Transportation Accident, Specify | TRANSPRT| [InjuryIncident]| |component[ transportationRole ].value.  (if value.code = OTH) the role should be specified in value.text) | codeable | [TransportationIncidentRoleVS] | 
| 176 | County of Injury - literal | COUNTYTEXT_I| [InjuryLocation]| x|address.district | string | - | 
| 177 | County of Injury code | COUNTYCODE_I| [InjuryLocation]| x|address.district.extension[ countyCode].value | integer | see [CountyCodes] | 
| 178 | Town/city of Injury - literal | CITYTEXT_I| [InjuryLocation]| x|address.city | string | - | 
| 179 | Town/city of Injury code | CITYCODE_I| [InjuryLocation]| x|address.city.extension[ cityCode].value | integer | see [CityCodes] | 
| 180 | State, U.S. Territory or Canadian Province of Injury - code | STATECODE_I| [InjuryLocation]| x|address.state | string | [StatesTerritoriesProvincesVS] | 
| 181 | Place of injury. Longitude | LONG_I| [InjuryLocation]| x|position.longitude | float | - | 
| 182 | Place of injury. Latitude | LAT_I| [InjuryLocation]| x|position.latitude | float | - | 
| 237 | State, U.S. Territory or Canadian Province of Injury - literal | STINJURY| [InjuryLocation]| x|address.state (expanded from 2 letter code) | string | See [StateLiterals] | 
| 39 | Decedent of Hispanic Origin?--Mexican | DETHNIC1| [InputRaceAndEthnicity]| |component[ HispanicMexican].valueCoding | codeable | [HispanicNoUnknownVS] | 
| 40 | Decedent of Hispanic Origin?--Puerto Rican | DETHNIC2| [InputRaceAndEthnicity]| |component[ HispanicPuertoRican].valueCoding | codeable | [HispanicNoUnknownVS] | 
| 41 | Decedent of Hispanic Origin?--Cuban | DETHNIC3| [InputRaceAndEthnicity]| |component[ HispanicCuban ].valueCoding | codeable | [HispanicNoUnknownVS] | 
| 42 | Decedent of Hispanic Origin?--Other | DETHNIC4| [InputRaceAndEthnicity]| |component[ HispanicOther ].valueCoding | codeable | [HispanicNoUnknownVS] | 
| 43 | Decedent of Hispanic Origin?--Other, Literal | DETHNIC5| [InputRaceAndEthnicity]| |component[ HispanicLiteral ].valueString | string | - | 
| 44 | Decedent's Race--White | RACE1| [InputRaceAndEthnicity]| |component[ White].valueBoolean | boolean | - | 
| 45 | Decedent's Race--Black or African American | RACE2| [InputRaceAndEthnicity]| |component[ BlackOrAfricanAmerican].valueBoolean | boolean | - | 
| 46 | Decedent's Race--American Indian or Alaska Native | RACE3| [InputRaceAndEthnicity]| |component[ AmericanIndianOrAlaskanNative].valueBoolean | boolean | - | 
| 47 | Decedent's Race--Asian Indian | RACE4| [InputRaceAndEthnicity]| |component[ AsianIndian].valueBoolean | boolean | - | 
| 48 | Decedent's Race--Chinese | RACE5| [InputRaceAndEthnicity]| |component[ Chinese].valueBoolean | boolean | - | 
| 49 | Decedent's Race--Filipino | RACE6| [InputRaceAndEthnicity]| |component[ Filipino].valueBoolean | boolean | - | 
| 50 | Decedent's Race--Japanese | RACE7| [InputRaceAndEthnicity]| |component[ Japanese].valueBoolean | boolean | - | 
| 51 | Decedent's Race--Korean | RACE8| [InputRaceAndEthnicity]| |component[ Korean].valueBoolean | boolean | - | 
| 52 | Decedent's Race--Vietnamese | RACE9| [InputRaceAndEthnicity]| |component[ Vietnamese].valueBoolean | boolean | - | 
| 53 | Decedent's Race--Other Asian | RACE10| [InputRaceAndEthnicity]| |component[ OtherAsian].valueBoolean | boolean | - | 
| 54 | Decedent's Race--Native Hawaiian | RACE11| [InputRaceAndEthnicity]| |component[ NativeHawaiian].valueBoolean | boolean | - | 
| 55 | Decedent's Race--Guamanian or Chamorro | RACE12| [InputRaceAndEthnicity]| |component[ GuamanianOrChamorro].valueBoolean | boolean | - | 
| 56 | Decedent's Race--Samoan | RACE13| [InputRaceAndEthnicity]| |component[ Samoan].valueBoolean | boolean | - | 
| 57 | Decedent's Race--Other Pacific Islander | RACE14| [InputRaceAndEthnicity]| |component[ OtherPacificIslander].valueBoolean | boolean | - | 
| 58 | Decedent's Race--Other | RACE15| [InputRaceAndEthnicity]| |component[ OtherRace].valueBoolean | boolean | - | 
| 59 | Decedent's Race--First American Indian or Alaska Native Literal | RACE16| [InputRaceAndEthnicity]| |component[ FirstAmericanIndianOrAlaskanNativeLiteral].valueString | string | - | 
| 60 | Decedent's Race--Second American Indian or Alaska Native Literal | RACE17| [InputRaceAndEthnicity]| |component[ SecondAmericanIndianOrAlaskanNativeLiteral].valueString | string | - | 
| 61 | Decedent's Race--First Other Asian Literal | RACE18| [InputRaceAndEthnicity]| |component[ FirstOtherAsianLiteral].valueString | string | - | 
| 62 | Decedent's Race--Second Other Asian Literal | RACE19| [InputRaceAndEthnicity]| |component[ SecondOtherAsianLiteral].valueString | string | - | 
| 63 | Decedent's Race--First Other Pacific Islander Literal | RACE20| [InputRaceAndEthnicity]| |component[ FirstOtherPacificIslanderLiteral].valueString | string | - | 
| 64 | Decedent's Race--Second Other Pacific Islander Literal | RACE21| [InputRaceAndEthnicity]| |component[ SecondOtherPacificIslanderLiteral].valueString | string | - | 
| 65 | Decedent's Race--First Other Literal | RACE22| [InputRaceAndEthnicity]| |component[ FirstOtherRaceLiteral].valueString | string | - | 
| 66 | Decedent's Race--Second Other Literal | RACE23| [InputRaceAndEthnicity]| |component[ SecondOtherRaceLiteral].valueString | string | - | 
| 83 | Decedent's Race--Missing | RACE_MVR| [InputRaceAndEthnicity]| |component[ MissingValueReason].valueCoding | codeable | [RaceMissingValueReasonVS]  | 
| 100 | Manner of Death | MANNER| [MannerOfDeath]| |value | codeable | [MannerOfDeathVS] | 
| 248 | Blank for One-Byte Field 1 | PLACE1_1| [EmergingIssues]| |component[EmergingIssue1_1].value | string(1) | - | 
| 249 | Blank for One-Byte Field 2 | PLACE1_2| [EmergingIssues]| |component[EmergingIssue1_2].value | string(1) | - | 
| 250 | Blank for One-Byte Field 3 | PLACE1_3| [EmergingIssues]| |component[EmergingIssue1_3].value | string(1) | - | 
| 251 | Blank for One-Byte Field 4 | PLACE1_4| [EmergingIssues]| |component[EmergingIssue1_4].value | string(1) | - | 
| 252 | Blank for One-Byte Field 5 | PLACE1_5| [EmergingIssues]| |component[EmergingIssue1_5].value | string(1) | - | 
| 253 | Blank for One-Byte Field 6 | PLACE1_6| [EmergingIssues]| |component[EmergingIssue1_6].value | string(1) | - | 
| 254 | Blank for Eight-Byte Field 1 | PLACE8_1| [EmergingIssues]| |component[EmergingIssue8_1].value | string(8) | - | 
| 255 | Blank for Eight-Byte Field 2 | PLACE8_2| [EmergingIssues]| |component[EmergingIssue8_2].value | string(8) | - | 
| 256 | Blank for Eight-Byte Field 3 | PLACE8_3| [EmergingIssues]| |component[EmergingIssue8_3].value | string(8) | - | 
| 257 | Blank for Twenty-Byte Field | PLACE20| [EmergingIssues]| |component[EmergingIssue20].value | string(20) | - | 
| 123 | Surgery Date--month | SUR_MO| [SurgeryDate]| |value | dateTime | See [PartialDatesAndTimes] | 
| 124 | Surgery Date--day | SUR_DY| [SurgeryDate]| |value | dateTime | See [PartialDatesAndTimes] | 
| 125 | Surgery Date--year | SUR_YR| [SurgeryDate]| |value | dateTime | See [PartialDatesAndTimes] | 
| 111 | Did Tobacco Use Contribute to Death? | TOBAC| [TobaccoUseContributedToDeath]| |value | codeable | [ContributoryTobaccoUseVS] | 
| 120 | Activity at time of death (computer generated) | INACT| [ActivityAtTimeOfDeath]| |value | codeable | [ActivityAtTimeOfDeathVS] | 
| 105 | ACME Underlying Cause | ACME_UC| [AutomatedUnderlyingCauseOfDeath]| |value | codeable | [ICD10CausesOfDeathVS] | 
| 104 | Manual Underlying Cause  | MAN_UC| [ManualUnderlyingCauseOfDeath]| |value | codeable | [ICD10CausesOfDeathVS] | 
| 108 | Record-axis codes | RAC| [RecordAxisCauseOfDeath]| |Each entry is a 3-tuple (value, component[position], component[WouldBeUnderlyingCauseOfDeathWithoutPregnancy]) | codeable | [ICD10CausesOfDeathVS] | 
| 106 | Entity-axis codes | EAC| [EntityAxisCauseOfDeath]| |Each entry is a 4-tuble (value, component[position], component[lineNumber], component[e-code-indicator]   | codeable | [ICD10CausesOfDeathVS] | 
| 103 | Place of Injury (computer generated) | INJPL| [PlaceOfInjury]| |value | codeable | [PlaceOfInjuryVS] | 
| 67 | First Edited Code | RACE1E| [CodedRaceAndEthnicity]| |component[FirstEditedCode].value | - |  | 
| 68 | Second Edited Code | RACE2E| [CodedRaceAndEthnicity]| |component[SecondEditedCode].value | codeable | [RaceCodeVS] | 
| 69 | Third Edited Code | RACE3E| [CodedRaceAndEthnicity]| |component[ThirdEditedCode].value | codeable | [RaceCodeVS] | 
| 70 | Fourth Edited Code | RACE4E| [CodedRaceAndEthnicity]| |component[FourthEditedCode].value | codeable | [RaceCodeVS] | 
| 71 | Fifth Edited Code | RACE5E| [CodedRaceAndEthnicity]| |component[FifthEditedCode].value | codeable | [RaceCodeVS] | 
| 72 | Sixth Edited Code | RACE6E| [CodedRaceAndEthnicity]| |component[SixthEditedCode].value | codeable | [RaceCodeVS] | 
| 73 | Seventh Edited Code | RACE7E| [CodedRaceAndEthnicity]| |component[SeventhEditedCode].value | codeable | [RaceCodeVS] | 
| 74 | Eighth Edited Code | RACE8E| [CodedRaceAndEthnicity]| |component[EighthEditedCode].value | codeable | [RaceCodeVS] | 
| 75 | First American Indian Code | RACE16C| [CodedRaceAndEthnicity]| |component[FirstAmericanIndianCode].value | codeable | [RaceCodeVS] | 
| 76 | Second American Indian Code | RACE17C| [CodedRaceAndEthnicity]| |component[SecondAmericanIndianCode].value | codeable | [RaceCodeVS] | 
| 77 | First Other Asian Code | RACE18C| [CodedRaceAndEthnicity]| |component[FirstOtherAsianCode].value | codeable | [RaceCodeVS] | 
| 78 | Second Other Asian Code | RACE19C| [CodedRaceAndEthnicity]| |component[SecondOtherAsianCode].value | codeable | [RaceCodeVS] | 
| 79 | First Other Pacific Islander Code | RACE20C| [CodedRaceAndEthnicity]| |component[FirstOtherPacificIslanderCode].value | codeable | [RaceCodeVS] | 
| 80 | Second Other Pacific Islander Code | RACE21C| [CodedRaceAndEthnicity]| |component[SecondOtherPacificIslanderCode].value | codeable | [RaceCodeVS] | 
| 81 | First Other Race Code | RACE22C| [CodedRaceAndEthnicity]| |component[FirstOtherRaceCode].value | codeable | [RaceCodeVS] | 
| 82 | Second Other Race Code | RACE23C| [CodedRaceAndEthnicity]| |component[SecondOtherRaceCode].value | codeable | [RaceCodeVS] | 
| NA | Race Recode 40  (No longer provided as of 2022) | *NO IJE MAPPING*| [CodedRaceAndEthnicity]| |component[RaceRecode40].value | codeable | [RaceRecode40VS] | 
| 160 | Hispanic | DETHNICE | [CodedRaceAndEthnicity]| |component[HispanicCode].value | codeable | [HispanicOriginVS] | 
| 247 | Hispanic Code for Literal | DETHNIC5C| [CodedRaceAndEthnicity]| |component[HispanicCodeForLiteral].value | codeable | [HispanicOriginVS] | 
| 91 | Receipt date -- Year | R_YR| [CodingStatusValues]| |parameter[receiptDate].value | date | See [PartialDatesAndTimes] | 
| 92 | Receipt date -- Month | R_MO| [CodingStatusValues]| |parameter[receiptDate].value | date | See [PartialDatesAndTimes] | 
| 93 | Receipt date -- Day | R_DY| [CodingStatusValues]| |parameter[receiptDate].value | date | See [PartialDatesAndTimes] | 
| NA | coder status  | CS (TRX Field, no IJE Mapping)| [CodingStatusValues]| |parameter[coderStatus].value | integer | - | 
| NA | shipment number  | SHIP (TRX Field, no IJE Mapping)| [CodingStatusValues]| |parameter[shipmentNumber].value | string | - | 
| 101 | Intentional Reject  | INT_REJ| [CodingStatusValues]| |parameter[intentionalReject].value | codeable | [IntentionalRejectVS] | 
| 102 | Acme System Reject Codes | SYS_REJ| [CodingStatusValues]| |parameter[acmeSystemReject].value  | codeable | [ACMESystemRejectVS] | 
| 107 | Transax conversion flag: Computer Generated | TRX_FLG| [CodingStatusValues]| |parameter[transaxConversion].value  | codeable | [TransaxConversionVS] | 
| NA | Death Record Identifier | *NO IJE MAPPING*| [CauseOfDeathCodedContentBundle]| |identifier.value | string(12) | YYYYJJNNNNNN,  YYYY = death year JJ = jurisdiction  and NNNNNN = certificate number | 
| 3 | Certificate Number | FILENO| [CauseOfDeathCodedContentBundle]| |identifier.extension[ certificateNumber].value | string(6) | - | 
| 5 | Auxiliary State file number | AUXNO| [CauseOfDeathCodedContentBundle]| |identifier.extension[auxiliaryStateIdentifier1].value | string(12) | - | 
| 121 | Auxiliary State file number | AUXNO2| [CauseOfDeathCodedContentBundle]| |identifier.extension[auxiliaryStateIdentifier2].value | string(12) | - | 
| NA | Death Record Identifier | *NO IJE MAPPING*| [DemographicCodedContentBundle]| |identifier.value | string(12) | YYYYJJNNNNNN,  YYYY = death year JJ = jurisdiction  and NNNNNN = certificate number | 
| 3 | Certificate Number | FILENO| [DemographicCodedContentBundle]| |identifier.extension[ certificateNumber].value | string(6) | - | 
| 5 | Auxiliary State file number | AUXNO| [DemographicCodedContentBundle]| |identifier.extension[auxiliaryStateIdentifier1].value | string(12) | - | 
| 121 | Auxiliary State file number | AUXNO2| [DemographicCodedContentBundle]| |identifier.extension[auxiliaryStateIdentifier2].value | string(12) | - | 
{: .grid }
{% include markdown-link-references.md %}
