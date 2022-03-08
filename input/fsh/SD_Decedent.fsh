


Profile: Decedent
Parent: USCorePatientProfile
Id: vrdr-decedent
Title: "Decedent"
Description: "Decedent (USCorePatient)"
* insert RequireMetaProfile(Decedent)
* extension contains
    NVSSRace named NVSS-Race 0..1 MS and
    NVSSEthnicity named NVSS-Ethnicity 0..1 MS and
    NVSSSexAtDeath named NVSS-SexAtDeath 0..1 MS and
    SpouseAlive named Spouse-Alive 0..1 and
    $patient-birthPlace named Patient-BirthPlace 0..1
* extension[Patient-BirthPlace].valueAddress.country from BirthplaceCountryVS (required)    // BPLACE_CNT
* extension[Patient-BirthPlace].valueAddress.state from JurisdictionsProvincesVS (required) // BPLACE_ST
* extension[Patient-BirthPlace].valueAddress.city.extension contains
    CityCode named cityCode 0..1
* extension[Patient-BirthPlace].valueAddress.city.extension[cityCode] ^label = "City Code"
* extension[Patient-BirthPlace].valueAddress.city.extension[cityCode] ^short = "City Code"
* extension[Patient-BirthPlace].valueAddress.city.extension[cityCode] ^definition = "Numeric code from in accordance with the NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014 (https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf) and https://ftp.cdc.gov/pub/health_Statistics/nchs/Manuals/Mortality/PLACE_CODES.txt."
* identifier 1..* MS
// identifier where system = 'http://hl7.org/fhir/sid/us-ssn is SSN

* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.ordered = false   // can be omitted, since false is the default
* identifier ^slicing.description = "Slice based on $this pattern"
* identifier contains
   ssn 0..1
* identifier[ssn] ^short = "Social Security Number"
* identifier[ssn].system = $ssn
* identifier[ssn].type = $v2-0203#SB
* name 1..* MS
* birthDate 0..1
* birthDate.extension contains
    PartialDate named partialDate 0..1
* birthDate.extension[partialDate] ^short = "partialDate"
* birthDate.extension[partialDate] ^definition = "Alternative component representation of date."
* address 0..*
* address.extension contains
    WithinCityLimitsIndicator named withinCityLimitsIndicator 0..1
* insert CityCode
* insert CountyCode
* insert AddressComponents
* address.country from ResidenceCountryVS (required)  // COUNTRYC
* address.state from StatesTerritoriesAndProvincesVS (required)  // STATEC
* maritalStatus 0..1
* maritalStatus only CodeableConcept
* maritalStatus from MaritalStatusVS (required)  // MARITAL
* maritalStatus.text ^short = "Marital Description"
* maritalStatus.extension contains
    BypassEditFlag named bypassEditFlag 0..1 // MARITAL_BYPASS
* maritalStatus.extension[bypassEditFlag].valueCodeableConcept from EditBypass0124VS (required)
* maritalStatus.extension[bypassEditFlag].value[x] only CodeableConcept
* contact ^short = "Informant information"
* contact.relationship 0..1
* contact.relationship ^short = "Informant Relationship (INFORMRELATE)"
* contact.relationship only CodeableConcept
// * contact.relationship from RelatedPersonRelationshipTypeVS (required)
* contact.relationship.text ^short = "Informant Relationship (INFORMRELATE) - first 30 characters will be used"
