Instance: DecedentEducationLevel-Example1
InstanceOf: Observation
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-education-level"
* status = #final
* code = $loinc#80913-7
* subject = Reference(Decedent-Example1)
* valueCodeableConcept = $v3-EducationLevel#SEC "Some secondary or high school education"