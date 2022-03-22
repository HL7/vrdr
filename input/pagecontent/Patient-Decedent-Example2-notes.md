```
Instance: Decedent-Example2
InstanceOf: Decedent
Title: "Decedent-Example2"
Description: "Decedent-Example2 - with birth jurisdiction"
Usage: #example
* extension[0].extension[0].url = "White"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "BlackOrAfricanAmerican"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "AmericanIndianOrAlaskaNative"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "AsianIndian"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "Chinese"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "Filipino"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "Japanese"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "OtherAsian"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "NativeHawaiian"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "GuamanianOrChamorro"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "Samoan"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "OtherPacificIslander"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "OtherRace"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "AmericanIndianOrAlaskaNativeLiteral"
* extension[=].extension[=].valueString = "X"
* extension[=].extension[+].url = "OtherAsianLiteral"
* extension[=].extension[=].valueString = "X"
* extension[=].extension[+].url = "OtherPacificIslanderLiteral"
* extension[=].extension[=].valueString = "X"
* extension[=].extension[+].url = "OtherRaceLiteral"
* extension[=].extension[=].valueString = "X"
* extension[=].extension[+].url = "MissingValueReason"
* extension[=].extension[=].valueCoding = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-missing-value-reason-cs#R
* extension[=].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/NVSS-Race"
* extension[+].extension[0].url = "HispanicMexican"
* extension[=].extension[=].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
* extension[=].extension[+].url = "HispanicPuertoRican"
* extension[=].extension[=].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
* extension[=].extension[+].url = "HispanicOther"
* extension[=].extension[=].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
* extension[=].extension[+].url = "HispanicCuban"
* extension[=].extension[=].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
* extension[=].extension[+].url = "HispanicLiteral"
* extension[=].extension[=].valueString = "who knows"
* extension[=].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/NVSS-Ethnicity"
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/SpouseAlive"
* extension[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0136#Y
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/NVSS-SexAtDeath"
* extension[=].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#unknown "Unknown"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city = "Brooklyn"
* extension[=].valueAddress.state = "NY"
* extension[=].valueAddress.state.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Location-Jurisdiction-Id"
* extension[=].valueAddress.state.extension.valueString = "YC"
* extension[=].valueAddress.country = "US"
* address.extension[0].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/WithinCityLimitsIndicator"
* address.extension[=].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y "Yes"
* address.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/StreetName"
* address.extension[=].valueString = "Lockwood"
* address.line = "5590 Lockwood Drive"
* address.city = "Queens"
* address.city.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/CityCode"
* address.city.extension.valuePositiveInt = 1234
* address.state = "NY"
* address.district = "Kings"
* address.district.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/DistrictCode"
* address.district.extension.valuePositiveInt = 321
* address.country = "US"
* maritalStatus.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/BypassEditFlag"
* maritalStatus.extension.valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-bypass-edit-flag-cs#0
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#S "Never Married"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#SB "Social Beneficiary Identifier"
* identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* identifier.value = "987654321"
* name.use = #official
* name.family = "Patel"
* name.given = "Madelyn"
* gender = #female
* contact.name.text = "Joe Smith"
* contact.relationship.text = "Friend of family"
* birthDate.extension.extension[0].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Day"
* birthDate.extension.extension[=].valueInteger = 10
* birthDate.extension.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Year"
* birthDate.extension.extension[=].valueInteger = 2004
* birthDate.extension.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Month"
* birthDate.extension.extension[=].valueInteger = 11
* birthDate.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/PartialDate"
```