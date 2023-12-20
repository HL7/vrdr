Instance: AutopsyPerformedIndicator-Example1
InstanceOf: Observation
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-autopsy-performed-indicator"
* component
  * code = $loinc#69436-4
  * valueCodeableConcept = $v2-0136#Y "Yes"
* status = #final
* code = $loinc#85699-7
* subject = Reference(Decedent-Example1)
* valueCodeableConcept = $v2-0136#Y "Yes"