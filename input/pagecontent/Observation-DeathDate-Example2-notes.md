```
Instance: DeathDate-Example2
InstanceOf: DeathDate
Title: "DeathDate-Example2"
Description: "DeathDate-Example1"
Usage: #example
* status = #final
* code = http://loinc.org#81956-5
* subject = Reference(Decedent-Example1)
* effectiveDateTime = "2020-11-12T16:39:40-05:00"
* performer = Reference(Certifier-Example1)
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
    * valueTime = "12:13:14"
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
        * valueCode = #unknown
  * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/PartialDateTime"
* component[0]
  * code = http://loinc.org#80616-6
  * valueDateTime = "2020-11-13T16:39:40-05:00"
* component[+]
  * code = http://loinc.org#58332-8
  * valueCodeableConcept = http://snomed.info/sct#16983000 "Death in hospital"
```