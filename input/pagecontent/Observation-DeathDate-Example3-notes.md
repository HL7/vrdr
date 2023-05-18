```
Instance: DeathDate-Example3
InstanceOf: DeathDate
Title: "DeathDate-Example3"
Description: "DeathDate-Example3 - Stripped down for Mortality Roster"
Usage: #example
* status = #final
* code = http://loinc.org#81956-5
* subject = Reference(Decedent-Example3)
* effectiveDateTime = "2020-11-12T16:39:40-05:00"
* valueDateTime.extension
  * extension[0]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Day"
    * valueUnsignedInt.extension
      * url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
      * valueCode = #unknown
  * extension[+]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Year"
    * valueUnsignedInt = 2020
  * extension[+]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Month"
    * valueUnsignedInt = 11
  * extension[+]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Time"
    * valueTime.extension
      * url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
      * valueCode = #unknown
  * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/PartialDateTime"
```