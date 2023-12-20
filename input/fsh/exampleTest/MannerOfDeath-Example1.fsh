Instance: MannerOfDeath-Example1
InstanceOf: Observation
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-manner-of-death"
* performer = Reference(Certifier-Example1)
* status = #final
* code = $loinc#69449-7
* subject = Reference(Decedent-Example1)
* valueCodeableConcept = $sct#38605008 "Natural death"