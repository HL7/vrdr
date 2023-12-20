Instance: EntityAxisCauseOfDeath-Example3
InstanceOf: Observation
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-entity-axis-cause-of-death"
* subject.display = "NCHS generated"
* component[0]
  * code = $vrdr-component-cs#lineNumber
  * valueInteger = 2
* component[+]
  * code = $vrdr-component-cs#position
  * valueInteger = 2
* component[+]
  * code = $vrdr-component-cs#eCodeIndicator
  * valueBoolean = true
* code = $loinc#80356-9
* status = #final
* valueCodeableConcept = $icd-10#X00