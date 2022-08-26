```
Instance: Decedent-Example3
InstanceOf: Decedent
Title: "Decedent-Example3"
Description: "Decedent-Example3 - Stripped down for Mortality Roster"
Usage: #example
* extension[0].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/NVSS-SexAtDeath"
* extension[=].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#unknown "Unknown"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
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
* address.state = "NY"
```