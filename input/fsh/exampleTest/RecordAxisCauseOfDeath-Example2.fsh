Instance: RecordAxisCauseOfDeath-Example2
InstanceOf: Observation
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-record-axis-cause-of-death"
* subject.display = "NCHS generated"
* component
  * code = $vrdr-component-cs#position
  * valueInteger = 2
* code = $loinc#80357-7
* status = #final
* valueCodeableConcept = $icd-10#T27.3