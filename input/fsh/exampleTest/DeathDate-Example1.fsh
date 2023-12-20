Instance: DeathDate-Example1
InstanceOf: Observation
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-date"
* performer = Reference(Certifier-Example1)
* component[0]
  * code = $loinc#80616-6
  * valueDateTime = "2020-11-13T16:39:40-05:00"
* component[+]
  * code = $loinc#58332-8
  * valueCodeableConcept = $sct#16983000 "Death in hospital"
* code = $loinc#81956-5
* subject = Reference(Decedent-Example1)
* effectiveDateTime = "2020-11-12T16:39:40-05:00"
* status = #final
* valueDateTime.extension
  * extension[0]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Day"
    * valueUnsignedInt = 12
  * extension[+]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Month"
    * valueUnsignedInt = 11
  * extension[+]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Year"
    * valueUnsignedInt = 2020
  * extension[+]
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Time"
    * valueTime.extension
      * url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
      * valueCode = #unknown
  * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/PartialDateTime"