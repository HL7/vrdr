```
Instance: Decedent-Example2
InstanceOf: Decedent
Title: "Decedent-Example2"
Description: "Decedent-Example2 - with birth jurisdiction"
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
    * city = "Brooklyn"
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
* address
  * extension[0]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/WithinCityLimitsIndicator"
    * valueCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y "Yes"
  * extension[+]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/UnitOrAptNumber"
    * valueString = "#1"
  * extension[+]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/StreetNumber"
    * valueString = "5590"
  * extension[+]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/StreetName"
    * valueString = "Lockwood"
  * extension[+]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/StreetDesignator"
    * valueString = "Drive"
  * extension[+]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/PreDirectional"
    * valueString = "E"
  * extension[+]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/PostDirectional"
    * valueString = "SW"
  * line = "5590 E Lockwood Drive SW, #1"
  * city = "Queens"
    * extension
      * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/CityCode"
      * valuePositiveInt = 1234
  * district = "Kings"
    * extension
      * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/DistrictCode"
      * valuePositiveInt = 321
  * state = "NY"
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