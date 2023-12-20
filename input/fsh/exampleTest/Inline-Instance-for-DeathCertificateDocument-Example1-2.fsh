Instance: Inline-Instance-for-DeathCertificateDocument-Example1-2
InstanceOf: Patient
Usage: #inline
* id = "Decedent-Example1"
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent"
* extension[0]
  * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/SpouseAlive"
  * valueCodeableConcept = $v2-0136#Y
* extension[+]
  * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/NVSS-SexAtDeath"
  * valueCodeableConcept = $administrative-gender#unknown "Unknown"
* extension[+]
  * valueAddress
    * city = "Roanoke"
    * state = "VA"
    * country = "US"
  * url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* identifier
  * type = $v2-0203#SB "Social Beneficiary Identifier"
  * system = "http://hl7.org/fhir/sid/us-ssn"
  * value = "987654321"
* name
  * given = "Madelyn"
  * use = #official
  * family = "Patel"
* address
  * extension[0]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/WithinCityLimitsIndicator"
    * valueCoding = $v2-0136#Y "Yes"
  * extension[+]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/StreetName"
    * valueString = "Lockwood"
  * line = "5590 Lockwood Drive"
  * city = "Danville"
    * extension
      * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/CityCode"
      * valuePositiveInt = 1234
  * state = "VA"
  * district = "Fairfax"
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
  * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/PartialDateTime"