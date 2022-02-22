### New Issues
* Gender/BirthSex/SEX: (related to [FHIR-33692](https://jira.hl7.org/browse/FHIR-33692))
    * USCore Patient includes both BirthSex(M,F,unknown) and Gender(M,F,unknown, other).  In an ideal world, information about the decedent would flow as USCore Patient info from an EHR into the EDRS.
    * NCHS is interested in SEX to be defined as "Sex on visual inspection at the time of death by the funeral home", which is quite different than BirthSex (determined at birth) or Gender(determined by the patient/decedent).
    * *Proposed Alternatives*:
        * Alternatives:
            * (preferred) Encode SEX in a SexAtTimeOfDeath extension to decedent with a codeable concept (M,F,unknown).
            * Encode SEX in a *new* Observation (SexAtTimeOfDeath) with a valueset of (M,F,unknown).   The closest code in LOINC for this is https://loinc.org/99502-7/ (Recorded Sex or Gender) "Documentation of a specific instance of sex and/or gender information. " which seems to align pretty well with NCHS's needs.
        * USCorePatient.extension[ birthSex] and USCorePatient.gender would not be profiled in decedent.
* Address components for Decedent's residence (STNUM_R, PREDIR_R, STNAME_R, STDESIG_R, POSTDIR_R, UNITNUM_R) as required for 2022
    * Need a Jira ticket to add these to Decedent.address as extensions.
* Why do we need the location reference in INjuryIncident?   [FHIR-33103](https://jira.hl7.org/browse/FHIR-33103)

### Not Yet
* [FHIR-32904](https://jira.hl7.org/browse/FHIR-32904) :  Provide examples of all extensions
* [FHIR-32905](https://jira.hl7.org/browse/FHIR-32905) :  Provide examples of all extensions
* [FHIR-33103](https://jira.hl7.org/browse/FHIR-33103) :  Is observation-location extension needed in INjuryIncident => InjuryLocationReference
* [FHIR-33113](https://jira.hl7.org/browse/FHIR-33113) :  Remove UML Documents and add more per-profile documentation
* [FHIR-33114](https://jira.hl7.org/browse/FHIR-33114) :  Mapping of fields to IJE and DCF at the global and per-profile/extension level. ==> only IJE needed.  At profile level is complete.
* [FHIR-33115](https://jira.hl7.org/browse/FHIR-33115) :  Document Terminologies
* [FHIR-33116](https://jira.hl7.org/browse/FHIR-33116) :  Definition and use of Must Support
* [FHIR-33117](https://jira.hl7.org/browse/FHIR-33117) :  Guidance oon missing data
* [FHIR-33194](https://jira.hl7.org/browse/FHIR-33194) :  difference between BirthRecordIdentifier.component.birthstate and the Decedent.extension.birthPlace.   Where is state a jurisdiction, and where is it a state/province/territory.
* [FHIR-33204](https://jira.hl7.org/browse/FHIR-33204) :  Documentation on Document/Constrain Rules for the Partial-date-part-absent-reason extension
* [FHIR-33208](https://jira.hl7.org/browse/FHIR-33208) :  Constrain all components of Date-Part-Absent Reason extension to 1..1
* [FHIR-33221](https://jira.hl7.org/browse/FHIR-33221) :  Date of Death DOcumentation
* [FHIR-33347](https://jira.hl7.org/browse/FHIR-33347) :  Meaningful, complete examples
* [FHIR-33348](https://jira.hl7.org/browse/FHIR-33348) :  Death certificate composition:  sections, which profiles, complete examples
* [FHIR-33425](https://jira.hl7.org/browse/FHIR-33425) :  Extensions and valuesets for city/county -- will reference CDC FTP files.
* [FHIR-33610](https://jira.hl7.org/browse/FHIR-33610) :  Death Certificate structure needs to be specified.   Profile has changed, but no examples.  Can't claim it is done without examples.
* [FHIR-33693](https://jira.hl7.org/browse/FHIR-33693) :  DOcument how address fields are used.   Can't stick everything in address.text field.  JUst like IJE.
* [FHIR-33698](https://jira.hl7.org/browse/FHIR-33698) :  Variation on 33693.  DOcument how addresses work.
* [FHIR-33701](https://jira.hl7.org/browse/FHIR-33701) :  Inappropriate proposed resolution.  INFORMRELATE is currently a text string, not a coded value.
* [FHIR-33717](https://jira.hl7.org/browse/FHIR-33717) :  Document how to specify 'other' for place of death.  Added usage.md Need to document wherever this is expected.
* [FHIR-33721](https://jira.hl7.org/browse/FHIR-33721) :  Support for SPOUSELV ==> extension to Decedent?
* [FHIR-33734](https://jira.hl7.org/browse/FHIR-33734) :  Something about redoing addresses.  Don't understand.
* [FHIR-33739](https://jira.hl7.org/browse/FHIR-33739) :    Partial date should include partial time.
* [FHIR-33741](https://jira.hl7.org/browse/FHIR-33741) :  Inappropriate proposed resolution.  INFORMRELATE is currently a text string, not a coded value. Same as 33701
* [FHIR-33743](https://jira.hl7.org/browse/FHIR-33743)    : I DISAGREE WITH RESOLUTION.  STATUS QUO IS CORRECT. Inconsistent State value options - BPLACE_ST, BSTATE, STATEC
* [FHIR-34269](https://jira.hl7.org/browse/FHIR-34269) :    Death Certificate Example
* [FHIR-34337](https://jira.hl7.org/browse/FHIR-34337) :    Conformance Section Needed (duplicate)
* [FHIR-34338](https://jira.hl7.org/browse/FHIR-34338) :    Conformance Section Needed (not clear how it differs from 34337) (duplicate)
* [FHIR-34432](https://jira.hl7.org/browse/FHIR-34432) :    Usage tables for mapping values in IJE to FHIR
* [FHIR-34276](https://jira.hl7.org/browse/FHIR-34276) :    Conformance Section Needed (duplicate)
* [FHIR-34561](https://jira.hl7.org/browse/FHIR-34561)    : Make DeathCertificate.timestamp MS or add data type (adult/fetal)????
* [FHIR-34609](https://jira.hl7.org/browse/FHIR-34609) :    Add COncept Maps for IJE->FHIR code mapping
* [FHIR-35595](https://jira.hl7.org/browse/FHIR-35595)    : Add optional modifiers for Date of Death/Injury (estimated, actual, etc)
* [FHIR-35934](https://jira.hl7.org/browse/FHIR-35934) :    Support for custodial state AUXNO in VRDR IG
* [FHIR-35991](https://jira.hl7.org/browse/FHIR-35991) :    Add second (local) category code for COndition COntributing to Death to differentiate from Cause of Death Condition.
* not ticketed : Add sex at time of death Observation in lieu of gender and birthsex
### Changes (check that these are marked as applied in Jira)
* [FHIR-32873](https://jira.hl7.org/browse/FHIR-32873) :  DeathLocation.extension[location-jurisdiction-id] cardinality 1..1
* [FHIR-32879](https://jira.hl7.org/browse/FHIR-32879) :  Make extension urls consistent.
* [FHIR-32906](https://jira.hl7.org/browse/FHIR-32906) :  Observation-Location.value[x] constrained to Reference(Location)
* [FHIR-32957](https://jira.hl7.org/browse/FHIR-32957) :  Require meta.profile on all extensions
* [FHIR-32995](https://jira.hl7.org/browse/FHIR-32995) :  Eliminate example bindings on must support fields (e.g., CauseOfDeathCondition.code)
* [FHIR-32998](https://jira.hl7.org/browse/FHIR-32998) :  Valuesets bound to wrong element.   No valueset now bound.
* [FHIR-33051](https://jira.hl7.org/browse/FHIR-33051) :  Move from PHINVADs-hosted value sets to locally defined valuesets
* [FHIR-33114](https://jira.hl7.org/browse/FHIR-33114) :  Changes to BirthRecordIdentifier including binding to jurisdiction, and requiring jurisdiction and year.
* [FHIR-33149](https://jira.hl7.org/browse/FHIR-33149) :  Avoid PHINVADs terminologies where possible.   All except PHVSDivisionVitalStatisticsCounty, PHVSDecedentBirthplaceCountry, PHVSDecedentResidentCountry
* [FHIR-33151](https://jira.hl7.org/browse/FHIR-33151) :  avoid patternFixed
* [FHIR-33152](https://jira.hl7.org/browse/FHIR-33152) :  Defined VS for states, provinces, territories and jurisdictions.
* [FHIR-33168](https://jira.hl7.org/browse/FHIR-33168) :  Decedent.address.city.extension[citycode] bound to PHVS_CityPlaces_NCHS, address.district.extension[countyCode] bound to PHVS_DivisionVitalStatistics__County (FIPS-6-4 County Codes)
* [FHIR-33179](https://jira.hl7.org/browse/FHIR-33179) :  Standardize address encodings
* [FHIR-33193](https://jira.hl7.org/browse/FHIR-33193) :  Same as FHIR-33114
* [FHIR-33210](https://jira.hl7.org/browse/FHIR-33210) :  COnventional encoding of addresses
* [FHIR-33210](https://jira.hl7.org/browse/FHIR-33210) :  COnventional Encoding for Addresses.  Value set for country????
* [FHIR-33211](https://jira.hl7.org/browse/FHIR-33211) :  Update examples to avoid PHINVADs codes except where necessary
* [FHIR-33344](https://jira.hl7.org/browse/FHIR-33344) :  Dependency on latest USCore (4.0.0)
* [FHIR-33345](https://jira.hl7.org/browse/FHIR-33345) :  Fix links to PHINVADS VS
* [FHIR-33426](https://jira.hl7.org/browse/FHIR-33426) :  Add lat/long to death location and injury location  -- already there, but documented now.
* [FHIR-33714](https://jira.hl7.org/browse/FHIR-33714) :  LImited gender values according to IJE
* [FHIR-33742](https://jira.hl7.org/browse/FHIR-33742) :  Add extension for RACE1-23 flags/literals
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
* [FHIR-33700](https://jira.hl7.org/browse/FHIR-33700) :    RELATE ==> will update messaging to support original, update, update-but-not-for-nchs
* [FHIR-33701](https://jira.hl7.org/browse/FHIR-33701) :    INFORMRELATE / Coded value ==> contact.type.text
* [FHIR-33715](https://jira.hl7.org/browse/FHIR-33715) :  SUpport for MFILED field (paper, electronic, mixed).  Add extension to DeathCertificate.
* [FHIR-33729](https://jira.hl7.org/browse/FHIR-33729) :    AGE_BYPASS, MARITAL_BYPASS (+ EDUCATION_LEVEL and PREG).  SEX Bypass intentially not implemented.
* [FHIR-33731](https://jira.hl7.org/browse/FHIR-33731) :    Bypass codes handled.
* [FHIR-33732](https://jira.hl7.org/browse/FHIR-33732) :    Extensions for city/county codes in addresses.
* [FHIR-33742](https://jira.hl7.org/browse/FHIR-33742) :    Extensions for Race literals/flags
* [FHIR-33818](https://jira.hl7.org/browse/FHIR-33818) :    Support IJE requirements as well as NCHS (principle accepted, work in progress)
* [FHIR-33918](https://jira.hl7.org/browse/FHIR-33918) :    Update ODH IG dependency to 1.0.1 (latest published)
* [FHIR-34062](https://jira.hl7.org/browse/FHIR-34062) :    Use local instead of PHINVADs VS for Education Level HL7 education codes
* [FHIR-34149](https://jira.hl7.org/browse/FHIR-34149)    : Make all bindings "required" to encourage compliance.
* [FHIR-34161](https://jira.hl7.org/browse/FHIR-34161) :    Fix Phinvads links
* [FHIR-34163](https://jira.hl7.org/browse/FHIR-34163) :    Remove meta.security and meta.source junk from all artifacts.
* [FHIR-34248](https://jira.hl7.org/browse/FHIR-34248) :    Cause of Death Condition same as 35250
* [FHIR-34249](https://jira.hl7.org/browse/FHIR-34249) :    Cause of Death Condition updated in unspecified way.
* [FHIR-34250](https://jira.hl7.org/browse/FHIR-34250) :    Cause of Death Condition 120 characters.
* [FHIR-34251](https://jira.hl7.org/browse/FHIR-34251) :    COndition Contributing to Death 240 characters.
* [FHIR-34268](https://jira.hl7.org/browse/FHIR-34268) :    DeathCertificate Human Readable Section Names/cardinalities
* [FHIR-34270](https://jira.hl7.org/browse/FHIR-34270) :    DeathCertificate Human Readable Section Names
* [FHIR-34273](https://jira.hl7.org/browse/FHIR-34273) :    IJE-specific extensions for race/ethnicity (duplicate)
* [FHIR-34320](https://jira.hl7.org/browse/FHIR-34320) :    LImit causes of death to 5
* [FHIR-34410](https://jira.hl7.org/browse/FHIR-34410) :    TransportationRole VS and Map update
* [FHIR-34424](https://jira.hl7.org/browse/FHIR-34424) :    LImit causes of death to 5 (same as 34320)
* [FHIR-34492](https://jira.hl7.org/browse/FHIR-34492) : Delete unnecessary slicing
* [FHIR-34562](https://jira.hl7.org/browse/FHIR-34562) : 2022 IJE updates - parameters addition.  Needs documentation
* [FHIR-35992](https://jira.hl7.org/browse/FHIR-35992) :    Cardinality of Decedent Race extension 0..1 (must support flags dealth with later)
* [FHIR-35993](https://jira.hl7.org/browse/FHIR-35993) :    Cardinality of Decedent Ethnicity extension 0..1 (must support flags dealth with later)
* [FHIR-36001](https://jira.hl7.org/browse/FHIR-36001) :    Update IG Version Number
* not ticketed :  Simplified handling for AUXNO by adding an extension to DeathCertificateDocument and getting rid of InterestedParty and DeathCertificateReference.. See [DeathCertificateDocument].
### No Action Required (should be marked in Jira)
* [FHIR-33700](https://jira.hl7.org/browse/FHIR-33700) :  REPLACE FIELD. Out of scope.  PERHAPS an issue for the messaging IG.
* [FHIR-33722](https://jira.hl7.org/browse/FHIR-33722) :  Support SSADTHCODE.  *Will Not Be Supported.  Comms from JeffG 2/17*
* [FHIR-33723](https://jira.hl7.org/browse/FHIR-33723) :  Support SSAFOREIGN.  *Will Not Be Supported.  Comms from JeffG 2/17*
* [FHIR-33724](https://jira.hl7.org/browse/FHIR-33724) :  Support SSAVerify.  *Will Not Be Supported.  Comms from JeffG 2/17*
* [FHIR-33725](https://jira.hl7.org/browse/FHIR-33725) :  Support SSADATEVER.  *Will Not Be Supported.  Comms from JeffG 2/17*
* [FHIR-33726](https://jira.hl7.org/browse/FHIR-33726) :  Support SSADATTRANS.  *Will Not Be Supported.  Comms from JeffG 2/17*
* [FHIR-33727](https://jira.hl7.org/browse/FHIR-33727) :  Support REPLACE.  Duplicate of 33700
### Discussion Points
* [FHIR-33194](https://jira.hl7.org/browse/FHIR-33194) :    Encoding of STate and Jurisdiction (also FHIR-33743)
* [FHIR-33426](https://jira.hl7.org/browse/FHIR-33426) :    position lat/long --> subject to review of requirements
* [FHIR-33702](https://jira.hl7.org/browse/FHIR-33702) :    Consistent answer about IJE compatibility at content and binary levels
* [FHIR-34561](https://jira.hl7.org/browse/FHIR-34561) :    SOmething got lost in translation.   Timestamp or submission type? ==> timestamp
* [FHIR-36068](https://jira.hl7.org/browse/FHIR-36068) :  Label for AgeAtDeath.effectiveTime ....incorrect
* [FHIR-36069](https://jira.hl7.org/browse/FHIR-36069) :  Units of Age missing
* [FHIR-36071](https://jira.hl7.org/browse/FHIR-36071) :  Required fields in DispositionLocation are unnecessary.
* none :   What is the purpose of the 'Funeral Services Licensee' profile?  WHich IJE elements does it support? Is this profile needed?
* none :   What is the purpose of the 'Mortician' profile?  WHich IJE elements does it support? Is this profile needed?
* none :   What is the purpose of the 'Funeral Home Director' profile?  WHich IJE elements does it support? Is this profile needed?
* none :   What is the purpose of the 'Death Pronouncement Performer' profile?  WHich IJE elements does it support? Is this profile needed?
{% include markdown-link-references.md %}
