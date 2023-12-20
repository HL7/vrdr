Instance: DecedentAge-Example1
InstanceOf: Observation
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-age"
* valueQuantity = 42 'a' "years"
  * extension
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/BypassEditFlag"
    * valueCodeableConcept = $vrdr-bypass-edit-flag-cs#0 "Edit Passed"
* status = #final
* code = $loinc#39016-1
* subject = Reference(Decedent-Example1)