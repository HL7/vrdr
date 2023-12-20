Instance: Inline-Instance-for-MortalityRosterBundle-Example1-1
InstanceOf: Patient
Usage: #inline
* id = "Decedent-Example3"
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent"
* extension[0]
  * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/NVSS-SexAtDeath"
  * valueCodeableConcept = $administrative-gender#unknown "Unknown"
* extension[+]
  * valueAddress
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
* address.state = "NY"
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