```
Instance: Decedent-Example1
InstanceOf: Decedent
Title: "Decedent-Example1"
Description: "Decedent-Example1"
Usage: #example
* extension[0].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/SpouseAlive"
* extension[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0136#Y
* extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/NVSS-SexAtDeath"
* extension[=].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#unknown "Unknown"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city = "Roanoke"
* extension[=].valueAddress.state = "VA"
* extension[=].valueAddress.country = "US"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#SB "Social Beneficiary Identifier"
* identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* identifier.value = "987654321"
* name.use = #official
* name.family = "Patel"
* name.given = "Madelyn"
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
* address.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/StreetName"
* address.extension[=].valueString = "Lockwood"
* address.line = "5590 Lockwood Drive"
* address.city = "Danville"
  * extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/CityCode"
  * extension.valuePositiveInt = 1234
* address.district = "Fairfax"
  * extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/DistrictCode"
  * extension.valuePositiveInt = 321
* address.state = "VA"
* address.country = "US"
* maritalStatus.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/BypassEditFlag"
* maritalStatus.extension.valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-bypass-edit-flag-cs#0 "Edit Passed"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#S "Never Married"
* contact.relationship.text = "Friend of family"
* contact.name.text = "Joe Smith"
```