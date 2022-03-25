```
Instance: DeathDate-Example1
InstanceOf: DeathDate
Title: "DeathDate-Example1"
Description: "DeathDate-Example1"
Usage: #example
* status = #final
* code = http://loinc.org#81956-5 "Date+time of death"
* subject = Reference(Decedent-Example1)
* effectiveDateTime = "2020-11-12T16:39:40-05:00"
* performer = Reference(Certifier-Example1)
* valueDateTime.extension.extension[0].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Day"
* valueDateTime.extension.extension[=].valueInteger = 12
* valueDateTime.extension.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Year"
* valueDateTime.extension.extension[=].valueInteger = 2020
* valueDateTime.extension.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Month"
* valueDateTime.extension.extension[=].valueInteger = 11
* valueDateTime.extension.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Time"
* valueDateTime.extension.extension[=].valueTime = "12:13:14"
* valueDateTime.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/PartialDateTime"
* component.code = http://loinc.org#80616-6 "Date and time pronounced dead [US Standard Certificate of Death]"
* component.valueDateTime = "2020-11-13T16:39:40-05:00"
```