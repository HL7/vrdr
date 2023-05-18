```
Instance: Decedent-Example1
InstanceOf: Decedent
Title: "Decedent-Example1"
Description: "Decedent-Example1"
Usage: #example
* extension[0]
  * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/SpouseAlive"
  * valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0136#Y
* extension[+]
  * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/NVSS-SexAtDeath"
  * valueCodeableConcept = http://hl7.org/fhir/administrative-gender#unknown "Unknown"
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
  * valueAddress
    * city = "Roanoke"
    * state = "VA"
    * country = "US"
* identifier
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#SB "Social Beneficiary Identifier"
  * system = "http://hl7.org/fhir/sid/us-ssn"
  * value = "987654321"
* name
  * use = #official
  * family = "Patel"
  * given = "Madelyn"
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
* address
  * extension[0]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/WithinCityLimitsIndicator"
    * valueCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y "Yes"
  * extension[+]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/StreetName"
    * valueString = "Lockwood"
  * line = "5590 Lockwood Drive"
  * city = "Danville"
    * extension
      * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/CityCode"
      * valuePositiveInt = 1234
  * district = "Fairfax"
    * extension
      * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/DistrictCode"
      * valuePositiveInt = 321
  * state = "VA"
  * country = "US"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#S "Never Married"
  * extension
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/BypassEditFlag"
    * valueCodeableConcept = BypassEditFlagCS#0 "Edit Passed"
* contact
  * relationship = http://terminology.hl7.org/CodeSystem/v2-0131#U
    * text = "Friend of family"
  * name.text = "Joe Smith"
```