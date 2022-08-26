```
Instance: DeathCertification-Example1
InstanceOf: DeathCertification
Title: "DeathCertification-Example1"
Description: "DeathCertification-Example1"
Usage: #example
* identifier.value = "180"
* status = #completed
* category = http://snomed.info/sct#103693007 "Diagnostic procedure"
* code = http://snomed.info/sct#308646001 "Death certification"
* subject = Reference(Decedent-Example1)
* performedDateTime = "2020-11-14T16:39:40-05:00"
* performer.function = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#OTH "Other"
  * text = "Nurse Practitioner"
* performer.actor = Reference(Certifier-Example1)
```