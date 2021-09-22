Profile: Decedent
Parent: USCorePatientProfile
Id: VRDR-Decedent
Title: "VRDR Decedent"
* ^meta.versionId = "90"
* ^meta.lastUpdated = "2021-08-09T06:00:13.203+00:00"
* ^meta.source = "#uyXAEWQu3pNMx6UB"
* ^meta.security[0] = $security#user^PNgAbFNH^write
* ^meta.security[+] = $security#user^PNgAbFNH^read
* ^meta.security[+] = $security#user^dMG-NXHH^read
* ^meta.security[+] = $security#everyone^read
* ^meta.security[+] = $security#user^TKWZUCCU^read
* ^meta.security[+] = $security#user^dMG-NXHH^write
* ^meta.security[+] = $security#everyone^write
* ^version = "1.0"
* ^experimental = false
* ^date = "2020-05-09"
* ^publisher = "Health Level Seven"
* ^contact.name = "AbdulMalik Shakir"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "abdulmalik.shakir@hi3solutions.com"
* ^contact.telecom.use = #work
* extension contains $patient-birthPlace named patient-birthPlace 0..1
* extension[patient-birthPlace] ^short = "Extension"
* extension[patient-birthPlace].value[x] only Address
* extension[patient-birthPlace].value[x].country 0..1
* extension[patient-birthPlace].value[x].country from $ViewValueSet.action_14 (required)
* extension[patient-birthPlace].value[x].country ^binding.description = "PHVS_DecedentBirthplace_Country"
* identifier 1..* MS
* name 1..* MS
* gender 1..1
* gender from $ViewValueSet.action_15 (required)
* gender ^definition = "The observed sex (male, female, or unknown) of the decedent at the time of death as determined by the death certifier or authoritative informant."
* gender ^comment = "This item aids in the identification of the decedent. It is also used in research and statistical analysis to determine sex-specific death rates. \n\nThis element differs from the US Core BirthSex element. Birthsex is not a concept required for completion of a death record for submission to NCHS. It is included in the VRDR FHIR IG by virtue of using the US Core Patient as the base profile for Decedent. The US Core IG defined BirthSex as a code classifying the person's sex assigned at birth and declares the element as \"must support\". Labeling an element MustSupport means that implementations that produce or consume resources SHALL provide \"support\" for the element in some meaningful way. For VRDR meaningful support of the US Core BirthSex element would be the inclusion of birth sex as recorded in the decedents birth record, if known. Birthsex is an optional element and need not be completed if it is unknown."
* gender ^binding.description = "PHVS_Sex_MFU"
* birthDate 0..1
* birthDate.extension contains ExtensionPartialDatePartAbsentReason named partialDatePartAbsentReason 0..1 MS
* birthDate.extension[partialDatePartAbsentReason] ^short = "partialDatePartAbsentReason"
* birthDate.extension[partialDatePartAbsentReason] ^definition = "Indicates reason for missing one or more parts of the decedent's birthdate."
* address 0..*
* address.extension 0..1
* address.extension only Within_City_Limits_Indicator
* address.country 0..1
* address.country from $ViewValueSet.action_16 (required)
* address.country ^binding.description = "PHVS_DecedentResident_Country"
* maritalStatus 0..1
* maritalStatus only CodeableConcept
* maritalStatus from $ViewValueSet.action_17 (required)
* maritalStatus ^binding.description = "PHVS_MaritalStatus_NCHS"
* contact.relationship 0..1
* contact.relationship only CodeableConcept
* contact.relationship from $ViewValueSet.action_18 (required)
* contact.relationship ^binding.description = "PHVS_RelatedPersonRelationshipType_NCHS"

Instance: 51b806c8-566f-463e-8783-9fbf6be8161d
InstanceOf: Decedent
Title: "Decedent Instance Example"
Description: "An instance example of the VRDR Decedent resource profile. Mr. Example Last, a White, Native Hawaiian, Hispanic male born 1940-02-19 and residing in Middlesex, MA."
Usage: #example
* meta.versionId = "4"
* meta.lastUpdated = "2020-07-22T19:41:31.297+00:00"
* meta.source = "#EoJNRyx11BYIT5J6"
* extension[0].extension[0].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
* extension[=].extension[+].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#1002-5 "American Indian or Alaska Native"
* extension[=].extension[+].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2028-9 "Asian"
* extension[=].extension[+].url = "detailed"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#1586-7 "Shoshone"
* extension[=].extension[+].url = "detailed"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2036-2 "Filipino"
* extension[=].extension[+].url = "text"
* extension[=].extension[=].valueString = "Mixed"
* extension[=].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
* extension[+].extension[0].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2135-2 "Hispanic or Latino"
* extension[=].extension[+].url = "detailed"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2184-0 "Dominican"
* extension[=].extension[+].url = "detailed"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2148-5 "Mexican"
* extension[=].extension[+].url = "text"
* extension[=].extension[=].valueString = "Hispanic or Latino"
* extension[=].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
* extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex"
* extension[=].valueCode = #F
* identifier.type = $v2-0203#SB "Social Beneficiary Identifier"
* identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* identifier.value = "123456789"
* name[0].use = #official
* name[=].family = "Last"
* name[=].given[0] = "Example"
* name[=].given[+] = "Something"
* name[=].given[+] = "Middle"
* name[=].suffix = "Jr."
* name[+].use = #nickname
* name[=].family = "LastNameAlias"
* name[=].given[0] = "FirstNameAlias"
* name[=].given[+] = "MiddleAlias"
* name[=].suffix = "Jr."
* gender = #male
* birthDate.extension.extension[0].url = "year-absent-reason"
* birthDate.extension.extension[=].valueCode = #asked-unknown
* birthDate.extension.extension[+].url = "date-month"
* birthDate.extension.extension[=].valueInteger = 2
* birthDate.extension.extension[+].url = "date-day"
* birthDate.extension.extension[=].valueInteger = 24
* birthDate.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Partial-date-part-absent-reason"
* address.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Within-City-Limits-Indicator"
* address.extension.valueCoding = $v2-0136#N "No"
* address.line[0] = "101 Example Street"
* address.line[+] = "Line 2"
* address.city = "Bedford"
* address.district = "Middlesex"
* address.state = "MA"
* address.postalCode = "01730"
* address.country = "United States"
* maritalStatus = $v3-MaritalStatus#S "Never Married"