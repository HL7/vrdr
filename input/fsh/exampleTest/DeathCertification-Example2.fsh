Instance: DeathCertification-Example2
InstanceOf: Procedure
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-certification"
* identifier.value = "180"
* performer
  * function = $sct#434641000124105 "Death certification and verification by physician"
  * actor = Reference(Certifier-Example1)
* code = $sct#308646001 "Death certification"
* status = #completed
* category = $sct#103693007 "Diagnostic procedure"
* subject = Reference(Decedent-Example1)
* performedDateTime = "2020-11-14T16:39:40-05:00"