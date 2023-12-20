Instance: DecedentDispositionMethod-Example1
InstanceOf: Observation
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-disposition-method"
* performer = Reference(Mortician-Example1)
* status = #final
* code = $loinc#80905-3
* subject = Reference(Decedent-Example1)
* valueCodeableConcept = $sct#449971000124106 "Burial"