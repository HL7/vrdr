Profile: Decedent
Parent: USCorePatientProfile
Id: vrdr-decedent
Title: "Decedent"
Description: "Decedent (USCorePatient)"
* insert RequireMetaProfile(Decedent)
* extension contains
    NVSSRace named NVSS-Race 0..1 MS and
    NVSSEthnicity named NVSS-Ethnicity 0..1 MS and
    $patient-birthPlace named patient-birthPlace 0..1
* extension[patient-birthPlace].value[x].country from BirthplaceCountryVS (required)    // BPLACE_CNT
* extension[patient-birthPlace].value[x].state from StatesTerritoriesAndProvincesVS (required) // BPLACE_ST
* identifier 1..* MS
// identifier where system = 'http://hl7.org/fhir/sid/us-ssn is SSN
* name 1..* MS
* gender 1..1
* gender from AdministrativeGenderVS (required)
* gender ^definition = "The observed sex (male, female, or unknown) of the decedent at the time of death as determined by the death certifier or authoritative informant."
* gender ^comment = "This item aids in the identification of the decedent. It is also used in research and statistical analysis to determine sex-specific death rates. \n\nThis element differs from the US Core BirthSex element. Birthsex is not a concept required for completion of a death record for submission to NCHS. It is included in the VRDR FHIR IG by virtue of using the US Core Patient as the base profile for Decedent. The US Core IG defined BirthSex as a code classifying the person's sex assigned at birth and declares the element as \"must support\". Labeling an element MustSupport means that implementations that produce or consume resources SHALL provide \"support\" for the element in some meaningful way. For VRDR meaningful support of the US Core BirthSex element would be the inclusion of birth sex as recorded in the decedents birth record, if known. Birthsex is an optional element and need not be completed if it is unknown."
* gender ^binding.description = "PHVS_Sex_MFU"
* birthDate 0..1
* birthDate.extension contains PartialDatePartAbsentReason named partialDatePartAbsentReason 0..1 MS
* birthDate.extension[partialDatePartAbsentReason] ^short = "partialDatePartAbsentReason"
* birthDate.extension[partialDatePartAbsentReason] ^definition = "Indicates reason for missing one or more parts of the decedent's birthdate."
* address 0..*
* address.extension contains
    WithinCityLimitsIndicator named withinCityLimitsIndicator 0..1
* address.city.extension contains
    CityCode named cityCode 0..1  // CITYC
* address.district.extension contains
    DistrictCode named districtCode 0..1  // COUNTYC
* address.city.extension[cityCode] ^label = "City Code"
* address.city.extension[cityCode] ^short = "City Code"
* address.city.extension[cityCode] ^definition = "Numeric code from in accordance with the NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014 (https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf) and https://ftp.cdc.gov/pub/health_Statistics/nchs/Manuals/Mortality/PLACE_CODES.txt."
* address.district.extension[districtCode] ^label = "County code"
* address.district.extension[districtCode] ^short = "County code"
// Add usage note that codes are from: https://ftp.cdc.gov/pub/health_Statistics/nchs/Manuals/Mortality/PLACE_CODES.txt and
* address.district.extension[districtCode] ^definition = "Numeric code in accordance with the NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014 (https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf) and https://ftp.cdc.gov/pub/health_Statistics/nchs/Manuals/Mortality/PLACE_CODES.txt."
 * address.country from ResidenceCountryVS (required)  // COUNTRYC
 * address.state from StatesTerritoriesAndProvincesVS (required)  // STATEC
* maritalStatus 0..1
* maritalStatus only CodeableConcept
* maritalStatus from MaritalStatusVS (required)  // MARITAL
* maritalStatus.extension contains
    BypassEditFlag named bypassEditFlag 0..1 // MARITAL_BYPASS
* maritalStatus.extension[bypassEditFlag].valueCodeableConcept from Edit-Bypass-0124 (required)
* maritalStatus.extension[bypassEditFlag].value[x] only CodeableConcept
// * maritalStatus.extension[bypassEditFlag].value[x] ^binding.description = "edit-Bypass-0124"
* contact ^short = "Informant information"
* contact.relationship 0..1
* contact.relationship ^short = "Informant Relationship (INFORMRELATE)"
* contact.relationship only CodeableConcept
// * contact.relationship from RelatedPersonRelationshipTypeVS (required)
* contact.relationship.text ^short = "Informant Relationship (INFORMRELATE) - first 30 characters will be used"
