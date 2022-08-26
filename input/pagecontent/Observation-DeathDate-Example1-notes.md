```
Instance: DeathDate-Example1
InstanceOf: DeathDate
Title: "DeathDate-Example1"
Description: "DeathDate-Example1"
Usage: #example
* status = #final
* code = http://loinc.org#81956-5
* subject = Reference(Decedent-Example1)
* effectiveDateTime = "2020-11-12T16:39:40-05:00"
* performer = Reference(Certifier-Example1)
* valueDateTime.extension.extension[0].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Day"
* valueDateTime.extension.extension[=].valueUnsignedInt = 12
* valueDateTime.extension.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Year"
* valueDateTime.extension.extension[=].valueUnsignedInt = 2020
* valueDateTime.extension.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Month"
* valueDateTime.extension.extension[=].valueUnsignedInt = 11
* valueDateTime.extension.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Time"
* valueDateTime.extension.extension[=].valueTime.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* valueDateTime.extension.extension[=].valueTime.extension.valueCode = #unknown
* valueDateTime.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/PartialDateTime"
* component[0].code = http://loinc.org#80616-6
* component[=].valueDateTime = "2020-11-13T16:39:40-05:00"
* component[+].code = http://loinc.org#58332-8
* component[=].valueCodeableConcept = http://snomed.info/sct#16983000 "Death in hospital"
```