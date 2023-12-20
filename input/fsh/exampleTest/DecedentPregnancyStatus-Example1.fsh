Instance: DecedentPregnancyStatus-Example1
InstanceOf: Observation
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-pregnancy-status"
* valueCodeableConcept = $vrdr-pregnancy-status-cs#2 "Pregnant at time of death"
  * extension
    * url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/BypassEditFlag"
    * valueCodeableConcept = $vrdr-bypass-edit-flag-cs#2 "Edit Failed, Data Queried, but not Verified"
* code = $loinc#69442-2
* subject = Reference(Decedent-Example1)
* status = #final