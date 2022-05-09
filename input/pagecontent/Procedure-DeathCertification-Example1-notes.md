```
Instance: DeathCertification-Example1
InstanceOf: DeathCertification
Title: "DeathCertification-Example1"
Description: "DeathCertification-Example1"
Usage: #example
* status = #completed
* category = http://snomed.info/sct#103693007 "Diagnostic procedure"
* code = http://snomed.info/sct#308646001 "Death certification"
* identifier.value = "180"
* subject.reference = "Patient/Decedent-Example1"
* performedDateTime = "2020-11-14T16:39:40-05:00"
* performer.function = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#OTH
* performer.function.text = "Nurse Practitioner"
* performer.actor.reference = "Practitioner/Certifier-Example1"
```