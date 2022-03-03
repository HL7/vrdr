

Instance: DeathCertification-Example1
InstanceOf: DeathCertification
Usage: #example
Description: "DeathCertification-Example1"
* insert AddMetaProfile(DeathCertification)
* identifier.value = "180"
* status = #completed
* category = $sct#103693007 "Diagnostic procedure"
* code = $sct#308646001 "Death certification"
* subject = Reference(Decedent-Example1)
* performedDateTime = "2020-11-14T16:39:40-05:00"
* performer.function = $v3-NullFlavor#OTH
* performer.function.text = "Nurse Practitioner"
// $sct#434641000124105 "Death certification and verification by physician"
* performer.actor = Reference(Certifier-Example1)
