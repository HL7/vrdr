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
* [FHIR-33211](https://jira.hl7.org/browse/FHIR-33211) :  Update examples to avoid PHINVADs codes except where necessary
* [FHIR-33344](https://jira.hl7.org/browse/FHIR-33344) :  Dependency on latest USCore (4.0.0)
* [FHIR-33345](https://jira.hl7.org/browse/FHIR-33345) :  Fix links to PHINVADS VS
* [FHIR-33403](https://jira.hl7.org/browse/FHIR-33403) :  Fix language in overview (state PHA->JVRO)
* [FHIR-33404](https://jira.hl7.org/browse/FHIR-33404) :  Fix language in overview (PHA->JVRO)
* [FHIR-33405](https://jira.hl7.org/browse/FHIR-33405) :  Update Contributor list



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
* [FHIR-33210](https://jira.hl7.org/browse/FHIR-33210) :  Value set for country????
* [FHIR-33221](https://jira.hl7.org/browse/FHIR-33221) :  Date of Death DOcumentation
* [FHIR-33347](https://jira.hl7.org/browse/FHIR-33347) :  Meaningful, complete examples
* [FHIR-33347](https://jira.hl7.org/browse/FHIR-33348) :  Death certificate composition:  sections, which profiles, complete examples







### Discussion Points
* discussion points here

{% include markdown-link-references.md %}
