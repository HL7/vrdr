Profile: Decedent
Parent: USCorePatientProfile
Id: vrdr-decedent
Title: "Decedent"
Description: "Decedent (USCorePatient)"
* insert boilerplate
* extension contains
    NVSSRace named NVSS-Race 0..1 MS and
    NVSSEthnicity named NVSS-Ethnicity 0..1 MS and
    $patient-birthPlace named patient-birthPlace 0..1
* extension[NVSS-Race] ^short = "Extension"
* extension[NVSS-Ethnicity] ^short = "Extension"
* extension[patient-birthPlace] ^short = "Extension"
* extension[patient-birthPlace].value[x] only Address
* extension[patient-birthPlace].value[x].country 0..1
* extension[patient-birthPlace].value[x].country from $ViewValueSet.action_4 (required)
* extension[patient-birthPlace].value[x].country ^binding.description = "PHVS_DecedentBirthplace_Country"
* identifier 1..* MS
* name 1..* MS
* gender 1..1
* gender from $administrative-gender_1 (required)
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
    DistrictCode named cityCode 0..1
* address.district.extension contains
    DistrictCode named districtCode 0..1
* address.city.extension[cityCode] ^label = "NCHS IMP8 address city code"
* address.city.extension[cityCode] ^short = "address city code"
* address.city.extension[cityCode] ^definition = "The address city code extension is used to enable the city portion of address to be expressed as a numeric value in accordance with the NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014 (https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf)."

* address.city.extension[cityCode] ^label = "NCHS IMP8 disctrict code"
* address.city.extension[cityCode] ^short = "address district code"
* address.city.extension[cityCode] ^definition = "The district code extension is used to enable the city portion of address to be expressed as a numeric value in accordance with the NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014 (https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf)."

* address.country 0..1
* address.country from $ViewValueSet.action_5 (required)
* address.country ^binding.description = "PHVS_DecedentResident_Country"
* maritalStatus 0..1
* maritalStatus only CodeableConcept
* maritalStatus from MaritalStatusVS (required)
* maritalStatus.extension contains
    BypassEditFlag named bypassEditFlag 0..1
* maritalStatus.extension[bypassEditFlag].valueCodeableConcept from Edit-Bypass-0124 (required)
// * maritalStatus.extension[bypassEditFlag].value[x] ^binding.description = "edit-Bypass-0124"
* contact.relationship 0..1
* contact.relationship only CodeableConcept
* contact.relationship from RelatedPersonRelationshipTypeVS (required)