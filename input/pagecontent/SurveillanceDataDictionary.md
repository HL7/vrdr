### Surveillance Data Dictionary

| **Description**   |  **IJE Name**  | **Profile**  |  **Field**  |  **Type**  | **Value Set**  |
| --------- |  ---------- | :------------: | ---------- | ---------- | -------------- |
 | Was Autopsy performed | AUTOP| [AutopsyPerformedIndicator]| value | codeable | [YesNoUnknownVS] | 
 | Were Autopsy Findings Available to Complete the Cause of Death? | AUTOPF| [AutopsyPerformedIndicator]| component[ autopsyPerformedIndicator ].value | codeable | [YesNoUnknownNotApplicableVS] | 
 | Cause of Death Part I Line a (literal) | COD1A| [CauseOfDeathPart1]| value.text,   component[lineNumber] = 1 | string(120) | - | 
 | Cause of Death Part I Line a (coded) | *NO IJE MAPPING*| [CauseOfDeathPart1]| value.coding,   component[lineNumber] = 1 | codeable | [ICD10CausesOfDeathVS] | 
 | Cause of Death Part I Interval, Line a | INTERVAL1A - optional| [CauseOfDeathPart1]| component[interval].value, component[lineNumber] = 1 | string(20) | - | 
 | Cause of Death Part I Line b (literal) | COD1B| [CauseOfDeathPart1]| value.text,   component[lineNumber] = 2 | string(120) | - | 
 | Cause of Death Part I Line b (coded) | *NO IJE MAPPING*| [CauseOfDeathPart1]| value.coding,   component[lineNumber] = 2 | codeable | [ICD10CausesOfDeathVS] | 
 | Cause of Death Part I Interval, Line b | INTERVAL1B| [CauseOfDeathPart1]| component[interval].value, component[lineNumber] = 2 | string(20) | - | 
 | Cause of Death Part I Line c (literal) | COD1C| [CauseOfDeathPart1]| value.text,   component[lineNumber] = 3 | string(120) | - | 
 | Cause of Death Part I Line c (coded) | *NO IJE MAPPING*| [CauseOfDeathPart1]| value.coding,   component[lineNumber] = 3 | codeable | [ICD10CausesOfDeathVS] | 
 | Cause of Death Part I Interval, Line c | INTERVAL1C| [CauseOfDeathPart1]| component[interval].value, component[lineNumber] = 3 | string(20) | - | 
 | Cause of Death Part I Line d (literal) | COD1D| [CauseOfDeathPart1]| value.text,   component[lineNumber] = 4 | string(120) | - | 
 | Cause of Death Part I Line d (coded) | *NO IJE MAPPING*| [CauseOfDeathPart1]| value.coding,   component[lineNumber] = 4 | codeable | [ICD10CausesOfDeathVS] | 
 | Cause of Death Part I Interval, Line d | INTERVAL1D| [CauseOfDeathPart1]| component[interval].value, component[lineNumber] = 4 | string(20) | - | 
 | Cause of Death Part II (literal) | OTHERCONDITION| [CauseOfDeathPart2]| value.text | string(240) | - | 
 | Cause of Death Part II (coded) | *NO IJE MAPPING*| [CauseOfDeathPart2]| value.coding | codeable | [ICD10CausesOfDeathVS] | 
 | Source flag: paper/electronic | MFILED| [DeathCertificate]| extension[ filingFormat]  | codeable |  [FilingFormatVS] | 
 | Date of Registration--Year | DOR_YR| [DeathCertificate]| date | dateTime | - | 
 | Date of Registration--Month | DOR_MO| [DeathCertificate]| date | dateTime | - | 
 | Date of Registration--Day | DOR_DY| [DeathCertificate]| date | dateTime | - | 
 | State Specific Data  | STATESP| [DeathCertificate]| extension[ stateSpecificField] | string(30) | - | 
 | Replacement Record  | REPLACE| [DeathCertificate]| extension[replaceStatus].value | codeable | [ReplaceStatusVS] | 
 | Death Record Identifier | *NO IJE MAPPING*| [DeathCertificateDocument]| identifier.value | string(12) | YYYYJJNNNNNN,  YYYY = death year JJ = jurisdiction  and NNNNNN = certificate number | 
 | Certificate Number | FILENO| [DeathCertificateDocument]| identifier.extension[ certificateNumber].value | string(6) | - | 
 | Auxiliary State file number | AUXNO| [DeathCertificateDocument]| identifier.extension[auxiliaryStateIdentifier1].value | string(12) | - | 
 | Auxiliary State file number | AUXNO2| [DeathCertificateDocument]| identifier.extension[auxiliaryStateIdentifier2].value | string(12) | - | 
 | Date of Death--Year | DOD_YR| [DeathDate]| value | dateTime | Required for processing | 
 | Place of Death | DPLACE| [DeathDate]| component[placeOfDeath].value | codeable | [PlaceOfDeathVS] | 
 | Date of Death--Month | DOD_MO| [DeathDate]| value | dateTime | See [PartialDatesAndTimes] | 
 | Date of Death--Day | DOD_DY| [DeathDate]| value | dateTime | See [PartialDatesAndTimes] | 
 | Time of Death | TOD| [DeathDate]| value | dateTime | See [PartialDatesAndTimes] | 
 | Person Pronouncing Date Signed | PPDATESIGNED| [DeathDate]| component[datetimePronouncedDead	].value | dateTime | - | 
 | Person Pronouncing Time Pronounced | PPTIME| [DeathDate]| component[datetimePronouncedDead].value | dateTime | - | 
 | Title of Certifier | CERTL| [DeathCertification]| performer.function (note that if value is "OTH" then performed.function.text should contain 'Full Text for Other Individual Legally Allowed to Certify') | codeable | [CertifierTypesVS] | 
 | Certifier Date Signed | CERTDATE| [DeathCertification]| performed | dateTime | - | 
 | State, U.S. Territory or Canadian Province of Death - code | DSTATE| [DeathLocation]| address.state or address.state.extension[nationalReportingJurisdictionId ] | codeable | [StatesTerritoriesProvincesVS] in state field or [JurisdictionVS] in extension | 
 | County of Death Occurrence | COD| [DeathLocation]| address.district.extension[countyCode] | integer | see [CountyCodes] | 
 | Death Institution name | DINSTI| [DeathLocation]| name | string  | - | 
 | Long String address for place of death | ADDRESS_D| [DeathLocation]| address.line | string  | - | 
 | Place of death. Street number | STNUM_D| [DeathLocation]| address.extension[stnum] | string | - | 
 | Place of death. Pre Directional | PREDIR_D| [DeathLocation]| address.extension[predir] | string | - | 
 | Place of death. Street name | STNAME_D| [DeathLocation]| address.extension[stname] | string | - | 
 | Place of death. Street designator | STDESIG_D| [DeathLocation]| address.extension[stdesig] | string | - | 
 | Place of death. Post Directional | POSTDIR_D| [DeathLocation]| address.extension[postdir] | string | - | 
 | Place of death. City or Town name | CITYTEXT_D| [DeathLocation]| address.city | string | - | 
 | Place of death. State name literal | STATETEXT_D| [DeathLocation]| address.state (expanded from 2 letter code) | string | - | 
 | Place of death. Zip code | ZIP9_D| [DeathLocation]| address.postalCode | string | - | 
 | Place of death. County of Death | COUNTYTEXT_D| [DeathLocation]| address.district | string | - | 
 | Place of death. City FIPS code | CITYCODE_D| [DeathLocation]| address.city.extension[ cityCode] | integer | see [CityCodes] | 
 | Place of death. Longitude | LONG_D| [DeathLocation]| position.longitude | float | - | 
 | Place of Death. Latitude | LAT_D| [DeathLocation]| position.latitude | float | - | 
 | Country of Death - Code | DTHCOUNTRYCD| [DeathLocation]| address.country  | string  | [ResidenceCountryVS].  Note: For US Death certificates should be US | 
 | Country of Death - Literal | DTHCOUNTRY| [DeathLocation]| address.country  (expanded from 2 letter code) | string  | See [CountryLIterals].   Not used. For US Death certificates should be 'United States'. | 
 | Decedent's Legal Name--Given  | GNAME| [Decedent]| name.given , name.use = official | string | - | 
 | Decedent's Legal Name--Middle | MNAME| [Decedent]| name.given , name.use = official (first letter) | string | - | 
 | Decedent's Legal Name--Last | LNAME| [Decedent]| name.family , name.use = official | string | - | 
 | Decedent's Legal Name--Suffix | SUFF| [Decedent]| name.suffix , name.use = official | string | - | 
 | Sex | SEX| [Decedent]| extension[NVSS-SexAtDeath]  | codeable | [AdministrativeGenderVS] | 
 | Social Security Number | SSN| [Decedent]| identifier.value where system = 'http://hl7.org/fhir/sid/us-ssn and type.coding.code="SB" | string | - | 
 | Date of Birth--Year | DOB_YR| [Decedent]| birthDate | dateTime | See [PartialDatesAndTimes] | 
 | Date of Birth--Month | DOB_MO| [Decedent]| birthDate | dateTime | See [PartialDatesAndTimes] | 
 | Date of Birth--Day | DOB_DY| [Decedent]| birthDate | dateTime | See [PartialDatesAndTimes] | 
 | Birthplace--Country | BPLACE_CNT| [Decedent]| extension[patient-birthPlace].value[x].country  | string | [BirthplaceCountryVS] | 
 | State, U.S. Territory or Canadian Province of Birth - code | BPLACE_ST| [Decedent]| extension[patient-birthPlace].value[x].state | string | [StatesTerritoriesProvincesVS] | 
 | Decedent's Residence--City | CITYC| [Decedent]| address.city.extension[ cityCode ] | string | see [CityCodes] | 
 | Decedent's Residence--County | COUNTYC| [Decedent]| address.district.extension[ countyCode ] | string | see [CountyCodes] | 
 | State, U.S. Territory or Canadian Province of Decedent's residence - code | STATEC| [Decedent]| address.state | string | [StatesTerritoriesProvincesVS] | 
 | Decedent's Residence--Country | COUNTRYC| [Decedent]| address.country | string | [ResidenceCountryVS] | 
 | Decedent's Residence--Inside City Limits | LIMITS| [Decedent]| address.city.extension[ withinCityLimits]  | codeable | [YesNoUnknownVS] | 
 | Marital Status | MARITAL| [Decedent]| maritalStatus | codeable |  [MaritalStatusVS] | 
 | Decedent's spouse living at decedent's DOD? | SPOUSELV| [Decedent]| extension[SpouseAlive]  | codeable |  [SpouseAliveVS] | 
 | Decedent's Residence - Street number | STNUM_R| [Decedent]| address.extension[stnum] | string | - | 
 | Decedent's Residence - Pre Directional | PREDIR_R| [Decedent]| address.extension[predir] | string | - | 
 | Decedent's Residence - Street name | STNAME_R| [Decedent]| address.extension[stname] | string | - | 
 | Decedent's Residence - Street designator | STDESIG_R| [Decedent]| address.extension[stdesig] | string | - | 
 | Decedent's Residence - Post Directional | POSTDIR_R| [Decedent]| address.extension[postdir] | string | - | 
 | Decedent's Residence - Unit or apt number | UNITNUM_R| [Decedent]| address.extension[unitnum] | string | - | 
 | Decedent's Residence - City or Town name | CITYTEXT_R| [Decedent]| address.city | string | - | 
 | Decedent's Residence - ZIP code | ZIP9_R| [Decedent]| address.postalCode | string | - | 
 | Decedent's Residence - County | COUNTYTEXT_R| [Decedent]| address.district | string | - | 
 | Decedent's Residence - State name | STATETEXT_R | [Decedent]| address.state (expanded from 2 letter code) | string | See [StateLiterals] | 
 | Decedent's Residence - COUNTRY name | COUNTRYTEXT_R| [Decedent]| address.country (expanded from 2 letter code) | string | See [CountryLiterals] | 
 | Long string address for decedent's place of residence same as above but allows states to choose the way they capture information. | ADDRESS_R| [Decedent]| address.line[0] | string | - | 
 | Middle Name of Decedent  | DMIDDLE| [Decedent]| name.given , name.use = official | string | - | 
 | Decedent's Maiden Name | DMAIDEN| [Decedent]| name.text , name.use=maiden | string | - | 
 | Decedent's Birth Place City - Code | DBPLACECITYCODE| [Decedent]| extension[patient-birthPlace].value[x].city.extension[ cityCode] | integer | see [CityCodes] | 
 | Decedent's Birth Place City - Literal | DBPLACECITY| [Decedent]| extension[patient-birthPlace].value[x].city | string | - | 
 | Informant's Relationship | INFORMRELATE| [Decedent]| contact.type.text  | string (30 characters) | - | 
 | State, U.S. Territory or Canadian Province of Birth - literal | STATEBTH| [Decedent]| extension[patient-birthPlace].value[x].state or extension[patient-birthPlace].value[x].state.extension[ nationalReportingJurisdictionId] if present    (expanded from 2 letter code) | string | See [StateLiterals] | 
 | Marital Descriptor | MARITAL_DESCRIP| [Decedent]| maritalStatus.text  | string | - | 
 | Decedent's Age--Type | AGETYPE| [DecedentAge]| valueQuantity.code | codeable | [UnitsOfAgeVS] | 
 | Decedent's Age--Units | AGE | [DecedentAge]| valueQuantity.value | decimal | - | 
 | Decedent's Age--Edit Flag | AGE_BYPASS| [DecedentAge]| value.extension[BypassEditFlag].value | codeable | [EditBypass01VS] | 
 | Father's Surname | FLNAME| [DecedentFather]| name.family | string | - | 
 | Father's First Name | DDADF| [DecedentFather]| name.given , name.use = official | string | - | 
 | Father's Middle Name | DDADMID| [DecedentFather]| name.given , name.use = official | string | - | 
 | Father's Suffix | FATHERSUFFIX| [DecedentFather]| name.suffix , name.use = official | string | - | 
 | Mother's First Name | DMOMF| [DecedentMother]| name.given , name.use = official | string | - | 
 | Mother's Middle Name | DMOMMID| [DecedentMother]| name.given , name.use = official | string | - | 
 | Mother's Maiden Surname | DMOMMDN| [DecedentMother]| name.family , name.type=maiden | string  | - | 
 | Mother's Suffix | MOTHERSSUFFIX| [DecedentMother]| name.suffix , name.use = official | string | - | 
 | Spouse's First Name | SPOUSEF| [DecedentSpouse]| name.given | string | - | 
 | Husband's Surname/Wife's Maiden Last Name | SPOUSEL | [DecedentSpouse]| name.family, name.use = 'maiden | string | - | 
 | Spouse's Middle Name | SPOUSEMIDNAME| [DecedentSpouse]| name.given , name.use = official | string | - | 
 | Spouse's Suffix | SPOUSESUFFIX| [DecedentSpouse]| name.suffix , name.use = official | string | - | 
 | Pregnancy | PREG| [DecedentPregnancyStatus]| value | codeable | [PregnancyStatusVS] | 
 | Date of injury--month | DOI_MO| [InjuryIncident]| effective | dateTime | See [PartialDatesAndTimes] | 
 | Date of injury--day | DOI_DY| [InjuryIncident]| effective | dateTime | See [PartialDatesAndTimes] | 
 | Date of injury--year | DOI_YR| [InjuryIncident]| effective | dateTime | See [PartialDatesAndTimes] | 
 | Time of injury | TOI_HR| [InjuryIncident]| effective | dateTime | See [PartialDatesAndTimes] | 
 | Injury at work | WORKINJ| [InjuryIncident]| component[InjuryAtWork].value | codeable | [YesNoUnknownNotApplicableVS] | 
 | Time of Injury Unit | TOI_UNIT| [InjuryIncident]| effective | implicit |  | 
 | Place of Injury- literal | POILITRL| [InjuryIncident]| component[ placeOfInjury ].value.text | string | - | 
 | Describe How Injury Occurred | HOWINJ| [InjuryIncident]| value.text | string | - | 
 | If Transportation Accident, Specify | TRANSPRT| [InjuryIncident]| component[ transportationRole ].value.  (if value.code = OTH) the role should be specified in value.text) | codeable | [TransportationIncidentRoleVS] | 
 | County of Injury - literal | COUNTYTEXT_I| [InjuryLocation]| address.district | string | - | 
 | County of Injury code | COUNTYCODE_I| [InjuryLocation]| address.district.extension[ countyCode].value | integer | see [CountyCodes] | 
 | Town/city of Injury - literal | CITYTEXT_I| [InjuryLocation]| address.city | string | - | 
 | Town/city of Injury code | CITYCODE_I| [InjuryLocation]| address.city.extension[ cityCode].value | integer | see [CityCodes] | 
 | State, U.S. Territory or Canadian Province of Injury - code | STATECODE_I| [InjuryLocation]| address.state | string | [StatesTerritoriesProvincesVS] | 
 | Place of injury. Longitude | LONG_I| [InjuryLocation]| position.longitude | float | - | 
 | Place of injury. Latitude | LAT_I| [InjuryLocation]| position.latitude | float | - | 
 | State, U.S. Territory or Canadian Province of Injury - literal | STINJURY| [InjuryLocation]| address.state (expanded from 2 letter code) | string | See [StateLiterals] | 
 | Decedent of Hispanic Origin?--Mexican | DETHNIC1| [InputRaceAndEthnicity]| component[ HispanicMexican].valueCoding | codeable | [HispanicNoUnknownVS] | 
 | Decedent of Hispanic Origin?--Puerto Rican | DETHNIC2| [InputRaceAndEthnicity]| component[ HispanicPuertoRican].valueCoding | codeable | [HispanicNoUnknownVS] | 
 | Decedent of Hispanic Origin?--Cuban | DETHNIC3| [InputRaceAndEthnicity]| component[ HispanicCuban ].valueCoding | codeable | [HispanicNoUnknownVS] | 
 | Decedent of Hispanic Origin?--Other | DETHNIC4| [InputRaceAndEthnicity]| component[ HispanicOther ].valueCoding | codeable | [HispanicNoUnknownVS] | 
 | Decedent of Hispanic Origin?--Other, Literal | DETHNIC5| [InputRaceAndEthnicity]| component[ HispanicLiteral ].valueString | string | - | 
 | Decedent's Race--White | RACE1| [InputRaceAndEthnicity]| component[ White].valueBoolean | boolean | - | 
 | Decedent's Race--Black or African American | RACE2| [InputRaceAndEthnicity]| component[ BlackOrAfricanAmerican].valueBoolean | boolean | - | 
 | Decedent's Race--American Indian or Alaska Native | RACE3| [InputRaceAndEthnicity]| component[ AmericanIndianOrAlaskanNative].valueBoolean | boolean | - | 
 | Decedent's Race--Asian Indian | RACE4| [InputRaceAndEthnicity]| component[ AsianIndian].valueBoolean | boolean | - | 
 | Decedent's Race--Chinese | RACE5| [InputRaceAndEthnicity]| component[ Chinese].valueBoolean | boolean | - | 
 | Decedent's Race--Filipino | RACE6| [InputRaceAndEthnicity]| component[ Filipino].valueBoolean | boolean | - | 
 | Decedent's Race--Japanese | RACE7| [InputRaceAndEthnicity]| component[ Japanese].valueBoolean | boolean | - | 
 | Decedent's Race--Korean | RACE8| [InputRaceAndEthnicity]| component[ Korean].valueBoolean | boolean | - | 
 | Decedent's Race--Vietnamese | RACE9| [InputRaceAndEthnicity]| component[ Vietnamese].valueBoolean | boolean | - | 
 | Decedent's Race--Other Asian | RACE10| [InputRaceAndEthnicity]| component[ OtherAsian].valueBoolean | boolean | - | 
 | Decedent's Race--Native Hawaiian | RACE11| [InputRaceAndEthnicity]| component[ NativeHawaiian].valueBoolean | boolean | - | 
 | Decedent's Race--Guamanian or Chamorro | RACE12| [InputRaceAndEthnicity]| component[ GuamanianOrChamorro].valueBoolean | boolean | - | 
 | Decedent's Race--Samoan | RACE13| [InputRaceAndEthnicity]| component[ Samoan].valueBoolean | boolean | - | 
 | Decedent's Race--Other Pacific Islander | RACE14| [InputRaceAndEthnicity]| component[ OtherPacificIslander].valueBoolean | boolean | - | 
 | Decedent's Race--Other | RACE15| [InputRaceAndEthnicity]| component[ OtherRace].valueBoolean | boolean | - | 
 | Decedent's Race--First American Indian or Alaska Native Literal | RACE16| [InputRaceAndEthnicity]| component[ AmericanIndianorAlaskanNativeLiteral1].valueString | string | - | 
 | Decedent's Race--Second American Indian or Alaska Native Literal | RACE17| [InputRaceAndEthnicity]| component[ AmericanIndianorAlaskanNativeLiteral2].valueString | string | - | 
 | Decedent's Race--First Other Asian Literal | RACE18| [InputRaceAndEthnicity]| component[ OtherAsianLiteral1].valueString | string | - | 
 | Decedent's Race--Second Other Asian Literal | RACE19| [InputRaceAndEthnicity]| component[ OtherAsianLiteral2].valueString | string | - | 
 | Decedent's Race--First Other Pacific Islander Literal | RACE20| [InputRaceAndEthnicity]| component[ OtherPacificIslandLiteral1].valueString | string | - | 
 | Decedent's Race--Second Other Pacific Islander Literal | RACE21| [InputRaceAndEthnicity]| component[ OtherPacificIslandLiteral2].valueString | string | - | 
 | Decedent's Race--First Other Literal | RACE22| [InputRaceAndEthnicity]| component[ OtherRaceLiteral1].valueString | string | - | 
 | Decedent's Race--Second Other Literal | RACE23| [InputRaceAndEthnicity]| component[ OtherRaceLiteral2].valueString | string | - | 
 | Decedent's Race--Missing | RACE_MVR| [InputRaceAndEthnicity]| component[ MissingValueReason].valueCoding | codeable | [RaceMissingValueReasonVS]  | 
 | Manner of Death | MANNER| [MannerOfDeath]| value | codeable | [MannerOfDeathVS] | 
 | Surgery Date--month | SUR_MO| [SurgeryDate]| value | dateTime | See [PartialDatesAndTimes] | 
 | Surgery Date--day | SUR_DY| [SurgeryDate]| value | dateTime | See [PartialDatesAndTimes] | 
 | Surgery Date--year | SUR_YR| [SurgeryDate]| value | dateTime | See [PartialDatesAndTimes] | 
 | Did Tobacco Use Contribute to Death? | TOBAC| [TobaccoUseContributedToDeath]| value | codeable | [ContributoryTobaccoUseVS] | 
 | Place of Injury (computer generated) | INJPL| [PlaceOfInjury]| value | codeable | [PlaceOfInjuryVS] | 
{: .grid }
{% include markdown-link-references.md %}
