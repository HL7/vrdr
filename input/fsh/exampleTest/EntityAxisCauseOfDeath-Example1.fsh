Instance: EntityAxisCauseOfDeath-Example1
InstanceOf: Observation
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-entity-axis-cause-of-death"
* subject.display = "NCHS generated"
* component[0]
  * code = $vrdr-component-cs#lineNumber
  * valueInteger = 1
* component[+]
  * code = $vrdr-component-cs#position
  * valueInteger = 1
* code = $loinc#80356-9
* status = #final
* valueCodeableConcept = $icd-10#J96.0