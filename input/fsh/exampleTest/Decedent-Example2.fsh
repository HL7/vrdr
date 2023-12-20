Instance: Decedent-Example2
InstanceOf: Patient
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent"
* extension[0]
  * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/SpouseAlive"
  * valueCodeableConcept = $v2-0136#Y
* extension[+]
  * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/NVSS-SexAtDeath"
  * valueCodeableConcept = $administrative-gender#unknown "Unknown"
* extension[+]
  * valueAddress
    * city = "Brooklyn"
    * state = "NY"
    * country = "US"
  * url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* identifier
  * type = $v2-0203#SB "Social Beneficiary Identifier"
  * system = "http://hl7.org/fhir/sid/us-ssn"
  * value = "987654321"
* name[0]
  * given = "Madelyn"
  * use = #official
  * family = "Patel"
* name[+]
  * given = "Joyce"
  * use = #maiden
  * text = "Joyce McCain"
  * family = "McCain"
* address
  * extension[0]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/WithinCityLimitsIndicator"
    * valueCoding = $v2-0136#Y "Yes"
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
  * state = "NY"
  * district = "Kings"
    * extension
      * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/DistrictCode"
      * valuePositiveInt = 321
  * country = "US"
* maritalStatus = $v3-MaritalStatus#S "Never Married"
  * extension
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/BypassEditFlag"
    * valueCodeableConcept = $vrdr-bypass-edit-flag-cs#0 "Edit Passed"
* contact
  * name.text = "Joe Smith"
  * relationship = $v2-0131#U
    * text = "Friend of family"
* gender = #female
* birthDate.extension
  * extension[0]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Day"
    * valueUnsignedInt = 10
  * extension[+]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Month"
    * valueUnsignedInt = 11
  * extension[+]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Year"
    * valueUnsignedInt = 2004
  * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/PartialDate"