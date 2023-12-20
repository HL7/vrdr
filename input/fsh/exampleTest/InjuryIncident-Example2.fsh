Instance: InjuryIncident-Example2
InstanceOf: Observation
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-injury-incident"
* valueCodeableConcept.text = "drug toxicity"
* component[0]
  * code = $loinc#69444-8
  * valueCodeableConcept = $v2-0136#N "No"
* component[+]
  * valueCodeableConcept.text = "Home"
  * code = $loinc#69450-5
* component[+]
  * code = $loinc#69451-3
  * valueCodeableConcept = $sct#257518000 "Pedestrian"
* code = $loinc#11374-6
* status = #final
* subject = Reference(Decedent-Example1)
* effectiveDateTime = "2019-11-02T13:00:00-05:00"