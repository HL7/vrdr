### Changes
* [FHIR-32873](https://jira.hl7.org/browse/FHIR-32873) :  DeathLocation.extension[location-jurisdiction-id] cardinality 1..1
* [FHIR-32909](https://jira.hl7.org/browse/FHIR-32906) :  Observation-Location.value[x] constrained to Reference(Location)
* [FHIR-32957](https://jira.hl7.org/browse/FHIR-32957) :  Require meta.profile on all extensions
* [FHIR-32995](https://jira.hl7.org/browse/FHIR-32995) :  Eliminate example bindings on must support fields (e.g., CauseOfDeathCondition.code)
* [FHIR-32998](https://jira.hl7.org/browse/FHIR-32998) :  Valuesets bound to wrong element.   No valueset now bound.
* [FHIR-33051](https://jira.hl7.org/browse/FHIR-33051) :  Move from PHINVADs-hosted value sets to locally defined valuesets
* [FHIR-33114](https://jira.hl7.org/browse/FHIR-33114) :  Changes to BirthRecordIdentifier including binding to jurisdiction, and requiring jurisdiction and year.
* [FHIR-33149](https://jira.hl7.org/browse/FHIR-33149) :  Avoid PHINVADs terminologies where possible.   All except PHVSDivisionVitalStatisticsCounty, PHVSDecedentBirthplaceCountry, PHVSDecedentResidentCountry
* [FHIR-33151](https://jira.hl7.org/browse/FHIR-33151) :  avoid patternFixed
* [FHIR-33152](https://jira.hl7.org/browse/FHIR-33152) :  Defined VS for states, provinces, territories and jurisdictions.
* [FHIR-33168](https://jira.hl7.org/browse/FHIR-33168) :  Decedent.address.city.extension[citycode] bound to PHVS_CityPlaces_NCHS, address.district.extension[countyCode] bound to PHVS_DivisionVitalStatistics__County (FIPS-6-4 County Codes)
* [FHIR-33193](https://jira.hl7.org/browse/FHIR-33193) :  Same as FHIR-33114
* [FHIR-33210](https://jira.hl7.org/browse/FHIR-33210) :  COnventional encoding of addresses
* [FHIR-33210](https://jira.hl7.org/browse/FHIR-33210) :  Value set for country????
* [FHIR-33211](https://jira.hl7.org/browse/FHIR-33211) :  Update examples to avoid PHINVADs codes except where necessary
* [FHIR-33344](https://jira.hl7.org/browse/FHIR-33344) :  Dependency on latest USCore (4.0.0)
* [FHIR-33345](https://jira.hl7.org/browse/FHIR-33345) :  Fix links to PHINVADS VS
* [FHIR-33403](https://jira.hl7.org/browse/FHIR-33403) :  Fix language in overview (state PHA->JVRO)
* [FHIR-33404](https://jira.hl7.org/browse/FHIR-33404) :  Fix language in overview (PHA->JVRO)
* [FHIR-33405](https://jira.hl7.org/browse/FHIR-33405) :  Update Contributor list
* [FHIR-33406](https://jira.hl7.org/browse/FHIR-33406) :  Corrected reference to and content of residence and birthplace country value sets
* [FHIR-33410](https://jira.hl7.org/browse/FHIR-33410) :  Update USCore Dependency
* [FHIR-33411](https://jira.hl7.org/browse/FHIR-33411) :  Update USCore Dependency
* [FHIR-33415](https://jira.hl7.org/browse/FHIR-33415) :  Eliminate PHINVADS dependency where possible
* [FHIR-33424](https://jira.hl7.org/browse/FHIR-33424) :  Fix PHINVADs valueset links
* [FHIR-33427](https://jira.hl7.org/browse/FHIR-33427) :  Same as FHIR-32873 (cardinality of jurisdiction ID)
* [FHIR-33428](https://jira.hl7.org/browse/FHIR-33428) :  Same as FHIR-32906 (constrain observation location)
* [FHIR-33691](https://jira.hl7.org/browse/FHIR-33491) :  Restrict Decedent.gender to 3 values allowed by IJE
* [FHIR-33496](https://jira.hl7.org/browse/FHIR-33496) :  City code as a supplement to city name.
* [FHIR-33497](https://jira.hl7.org/browse/FHIR-33497) :  City code as a supplement to city name.  City name not a controlled vocabulary.
* [FHIR-33729](https://jira.hl7.org/browse/FHIR-33729) :    SEX_BYPASS, AGE_BYPASS, MARITAL_BYPASS (+ EDUCATION_LEVEL and PREG)








### Not Yet
* [FHIR-32879](https://jira.hl7.org/browse/FHIR-32879) :  Make extension urls consistent
* [FHIR-32904](https://jira.hl7.org/browse/FHIR-32904) :  Provide examples of all extensions
* [FHIR-32905](https://jira.hl7.org/browse/FHIR-32905) :  Provide examples of all extensions
* [FHIR-33103](https://jira.hl7.org/browse/FHIR-33103) :  Is observation-location extension needed in INjuryIncident
* [FHIR-33113](https://jira.hl7.org/browse/FHIR-33113) :  Remove UML Documents and add more per-profile documentation
* [FHIR-33114](https://jira.hl7.org/browse/FHIR-33114) :  Mapping of fields to IJE and DCF at the global and per-profile/extension level.
* [FHIR-33115](https://jira.hl7.org/browse/FHIR-33115) :  Document Terminologies
* [FHIR-33116](https://jira.hl7.org/browse/FHIR-33116) :  Definition and use of Must Support
* [FHIR-33117](https://jira.hl7.org/browse/FHIR-33117) :  Guidance oon missing data
* [FHIR-33194](https://jira.hl7.org/browse/FHIR-33194) :  difference between BirthRecordIdentifier.component.birthstate and the Decedent.extension.birthPlace
* [FHIR-33204](https://jira.hl7.org/browse/FHIR-33204) :  Documentation on Document/Constrain Rules for the Partial-date-part-absent-reason extension
* [FHIR-33208](https://jira.hl7.org/browse/FHIR-33208) :  Constrain all components of Date-Part-Absent Reason extension to 1..1
* [FHIR-33221](https://jira.hl7.org/browse/FHIR-33221) :  Date of Death DOcumentation
* [FHIR-33347](https://jira.hl7.org/browse/FHIR-33347) :  Meaningful, complete examples
* [FHIR-33347](https://jira.hl7.org/browse/FHIR-33348) :  Death certificate composition:  sections, which profiles, complete examples
* [FHIR-33425](https://jira.hl7.org/browse/FHIR-33425) :  Extensions and valuesets for city/county *** NEED VALUE SETS***
* [FHIR-33426](https://jira.hl7.org/browse/FHIR-33426) :  Add lat/long to death location and injury location  *** already there...why add them?  MS? ***
* [FHIR-33610](https://jira.hl7.org/browse/FHIR-33610) :  Death Certificate structure needs to be specified.   Profile has changed, but no examples.  Can't claim it is done without examples.
* [FHIR-33693](https://jira.hl7.org/browse/FHIR-33693) :  DOcument how address fields are used.   Can't stick everything in address.text field.  JUst like IJE.
* [FHIR-33698](https://jira.hl7.org/browse/FHIR-33698) :  Variation on 33693.  DOcument how addresses work.
* [FHIR-33700](https://jira.hl7.org/browse/FHIR-33700) :  REPLACE FIELD. Out of scope.  PERHAPS an issue for the messaging IG.
* [FHIR-33701](https://jira.hl7.org/browse/FHIR-33701) :  Inappropriate proposed resolution.  INFORMRELATE is currently a text string, not a coded value.
* [FHIR-33715](https://jira.hl7.org/browse/FHIR-33715) :  SUpport for MFILED field (paper, electronic, mixed).  Where should this be added?
* [FHIR-33717](https://jira.hl7.org/browse/FHIR-33717) :  Document how to specify 'other' for place of death
* [FHIR-33721](https://jira.hl7.org/browse/FHIR-33721) :  Adding observation for Spouse living status
* [FHIR-33722](https://jira.hl7.org/browse/FHIR-33722) :  Support SSADTHCODE.  Need more information.
* [FHIR-33723](https://jira.hl7.org/browse/FHIR-33723) :  Support SSAFOREIGN.  Need more information.
* [FHIR-33724](https://jira.hl7.org/browse/FHIR-33724) :  Support SSAVerify.  Need more information.
* [FHIR-33725](https://jira.hl7.org/browse/FHIR-33725) :  Support SSADATEVER.  Need more information.
* [FHIR-33726](https://jira.hl7.org/browse/FHIR-33726) :  Support SSADATTRANS.  Need more information.
* [FHIR-33727](https://jira.hl7.org/browse/FHIR-33727) :  Support REPLACE.  Duplicate of 33700

















### Discussion Points
* discussion points here

{% include markdown-link-references.md %}
