Instance: CodedRaceAndEthnicity-Example1
InstanceOf: Observation
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-coded-race-and-ethnicity"
* subject.display = "NCHS generated"
* component[0]
  * code = $vrdr-component-cs#FirstEditedCode
  * valueCodeableConcept = $vrdr-race-code-cs#101 "White"
* component[+]
  * code = $vrdr-component-cs#SecondEditedCode
  * valueCodeableConcept = $vrdr-race-code-cs#122 "Israeli"
* component[+]
  * code = $vrdr-component-cs#FirstAmericanIndianCode
  * valueCodeableConcept = $vrdr-race-code-cs#A31 "Arikara"
* component[+]
  * code = $vrdr-component-cs#RaceRecode40
  * valueCodeableConcept = $vrdr-race-recode-40-cs#20 "AIAN and Asian"
* component[+]
  * code = $vrdr-component-cs#HispanicCode
  * valueCodeableConcept = $vrdr-hispanic-origin-cs#233 "Chilean"
* status = #final
* code = $vrdr-observations-cs#codedraceandethnicity