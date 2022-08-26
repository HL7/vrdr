```
Instance: DeathCertification-Example2
InstanceOf: DeathCertification
Title: "DeathCertification-Example2"
Description: "DeathCertification-Example1"
Usage: #example
* identifier.value = "180"
* status = #completed
* category = http://snomed.info/sct#103693007 "Diagnostic procedure"
* code = http://snomed.info/sct#308646001 "Death certification"
* subject = Reference(Decedent-Example1)
* performedDateTime = "2020-11-14T16:39:40-05:00"
* performer.function = http://snomed.info/sct#434641000124105 "Death certification and verification by physician"
* performer.actor = Reference(Certifier-Example1)
```