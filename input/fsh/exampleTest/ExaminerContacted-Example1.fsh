Instance: ExaminerContacted-Example1
InstanceOf: Observation
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-examiner-contacted"
* status = #final
* code = $loinc#74497-9
* subject = Reference(Decedent-Example1)
* valueCodeableConcept = $v2-0136#Y "Yes"