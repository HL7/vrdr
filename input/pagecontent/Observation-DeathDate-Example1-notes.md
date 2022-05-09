```
Instance: DeathDate-Example1
InstanceOf: DeathDate
Title: "DeathDate-Example1"
Description: "DeathDate-Example1"
Usage: #example
* status = #final
* code = http://loinc.org#81956-5 "Date+time of death"
* component[0].code = http://loinc.org#80616-6 "Date and time pronounced dead [US Standard Certificate of Death]"
* component[=].valueDateTime = "2020-11-13T16:39:40-05:00"
* component[+].code = http://loinc.org#58332-8 "Location of death"
* component[=].valueCodeableConcept = http://snomed.info/sct#16983000 "Death in hospital"
* subject.reference = "Patient/Decedent-Example1"
* effectiveDateTime = "2020-11-12T16:39:40-05:00"
* performer.reference = "Practitioner/Certifier-Example1"
* valueDateTime.extension.extension[0].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Day"
* valueDateTime.extension.extension[=].valueUnsignedInt = 12
* valueDateTime.extension.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Year"
* valueDateTime.extension.extension[=].valueUnsignedInt = 2020
* valueDateTime.extension.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Month"
* valueDateTime.extension.extension[=].valueUnsignedInt = 11
* valueDateTime.extension.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Time"
* valueDateTime.extension.extension[=].valueTime = "12:13:14"
* valueDateTime.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/PartialDateTime"
```