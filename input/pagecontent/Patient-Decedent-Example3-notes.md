```
Instance: Decedent-Example3
InstanceOf: Decedent
Title: "Decedent-Example3"
Description: "Decedent-Example3 - Stripped down for Mortality Roster"
Usage: #example
* extension[0]
  * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/NVSS-SexAtDeath"
  * valueCodeableConcept = http://hl7.org/fhir/administrative-gender#unknown "Unknown"
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
  * valueAddress
    * state = "NY"
    * country = "US"
* identifier
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#SB "Social Beneficiary Identifier"
  * system = "http://hl7.org/fhir/sid/us-ssn"
  * value = "987654321"
* name[0]
  * use = #official
  * family = "Patel"
  * given = "Madelyn"
* name[+]
  * use = #maiden
  * text = "Joyce McCain"
  * family = "McCain"
  * given = "Joyce"
* gender = #female
* birthDate.extension
  * extension[0]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Day"
    * valueUnsignedInt = 10
  * extension[+]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Year"
    * valueUnsignedInt = 2004
  * extension[+]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Month"
    * valueUnsignedInt = 11
  * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/PartialDate"
* address.state = "NY"
```