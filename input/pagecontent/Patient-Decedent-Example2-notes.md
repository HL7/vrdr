```
Instance: Decedent-Example2
InstanceOf: Decedent
Title: "Decedent-Example2"
Description: "Decedent-Example2 - with birth jurisdiction"
Usage: #example
* extension[0].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/SpouseAlive"
* extension[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0136#Y
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/NVSS-SexAtDeath"
* extension[=].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#unknown "Unknown"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city = "Brooklyn"
* extension[=].valueAddress.state = "NY"
* extension[=].valueAddress.country = "US"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#SB "Social Beneficiary Identifier"
* identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* identifier.value = "987654321"
* name[0].use = #official
* name[=].family = "Patel"
* name[=].given = "Madelyn"
* name[+].use = #maiden
* name[=].text = "Joyce McCain"
* name[=].family = "McCain"
* name[=].given = "Joyce"
* gender = #female
* birthDate.extension.extension[0].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Day"
* birthDate.extension.extension[=].valueUnsignedInt = 10
* birthDate.extension.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Year"
* birthDate.extension.extension[=].valueUnsignedInt = 2004
* birthDate.extension.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Month"
* birthDate.extension.extension[=].valueUnsignedInt = 11
* birthDate.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/PartialDate"
* address.extension[0].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/WithinCityLimitsIndicator"
* address.extension[=].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y "Yes"
* address.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/UnitOrAptNumber"
* address.extension[=].valueString = "#1"
* address.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/StreetNumber"
* address.extension[=].valueString = "5590"
* address.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/StreetName"
* address.extension[=].valueString = "Lockwood"
* address.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/StreetDesignator"
* address.extension[=].valueString = "Drive"
* address.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/PreDirectional"
* address.extension[=].valueString = "E"
* address.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/PostDirectional"
* address.extension[=].valueString = "SW"
* address.line = "5590 E Lockwood Drive SW, #1"
* address.city = "Queens"
  * extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/CityCode"
  * extension.valuePositiveInt = 1234
* address.district = "Kings"
  * extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/DistrictCode"
  * extension.valuePositiveInt = 321
* address.state = "NY"
* address.country = "US"
* maritalStatus.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/BypassEditFlag"
* maritalStatus.extension.valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-bypass-edit-flag-cs#0 "Edit Passed"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#S "Never Married"
* contact.relationship.text = "Friend of family"
* contact.name.text = "Joe Smith"
```