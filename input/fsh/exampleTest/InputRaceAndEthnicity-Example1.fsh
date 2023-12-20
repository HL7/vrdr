Instance: InputRaceAndEthnicity-Example1
InstanceOf: Observation
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-input-race-and-ethnicity"
* subject.display = "NCHS generated"
* component[0]
  * code = $vrdr-component-cs#White
  * valueBoolean = true
* component[+]
  * code = $vrdr-component-cs#BlackOrAfricanAmerican
  * valueBoolean = false
* component[+]
  * code = $vrdr-component-cs#AmericanIndianOrAlaskanNative
  * valueBoolean = true
* component[+]
  * code = $vrdr-component-cs#AsianIndian
  * valueBoolean = false
* component[+]
  * code = $vrdr-component-cs#Chinese
  * valueBoolean = false
* component[+]
  * code = $vrdr-component-cs#Filipino
  * valueBoolean = false
* component[+]
  * code = $vrdr-component-cs#Japanese
  * valueBoolean = false
* component[+]
  * code = $vrdr-component-cs#Korean
  * valueBoolean = false
* component[+]
  * code = $vrdr-component-cs#Vietnamese
  * valueBoolean = false
* component[+]
  * code = $vrdr-component-cs#OtherAsian
  * valueBoolean = true
* component[+]
  * code = $vrdr-component-cs#NativeHawaiian
  * valueBoolean = false
* component[+]
  * code = $vrdr-component-cs#GuamanianOrChamorro
  * valueBoolean = false
* component[+]
  * code = $vrdr-component-cs#Samoan
  * valueBoolean = false
* component[+]
  * code = $vrdr-component-cs#OtherPacificIslander
  * valueBoolean = false
* component[+]
  * code = $vrdr-component-cs#OtherRace
  * valueBoolean = false
* component[+]
  * code = $vrdr-component-cs#FirstOtherAsianLiteral
  * valueString = "Malaysian"
* component[+]
  * code = $vrdr-component-cs#FirstAmericanIndianOrAlaskanNativeLiteral
  * valueString = "Arikara"
* component[+]
  * code = $vrdr-component-cs#HispanicMexican
  * valueCodeableConcept = $v2-0136#Y "Yes"
* component[+]
  * code = $vrdr-component-cs#HispanicCuban
  * valueCodeableConcept = $v2-0136#Y "Yes"
* component[+]
  * code = $vrdr-component-cs#HispanicPuertoRican
  * valueCodeableConcept = $v2-0136#Y "Yes"
* component[+]
  * code = $vrdr-component-cs#HispanicOther
  * valueCodeableConcept = $v2-0136#N "No"
* status = #final
* code = $vrdr-observations-cs#inputraceandethnicity