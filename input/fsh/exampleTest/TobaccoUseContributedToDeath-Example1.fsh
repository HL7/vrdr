Instance: TobaccoUseContributedToDeath-Example1
InstanceOf: Observation
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-tobacco-use-contributed-to-death"
* status = #final
* code = $loinc#69443-0 "Did tobacco use contribute to death"
* subject = Reference(Decedent-Example1)
* valueCodeableConcept = $sct#373066001 "Yes"