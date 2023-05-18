```
Instance: CodedRaceAndEthnicity-Example1
InstanceOf: CodedRaceAndEthnicity
Title: "CodedRaceAndEthnicity-Example1"
Description: "CodedRaceAndEthnicity-Example1"
Usage: #example
* status = #final
* code = ObservationsCS#codedraceandethnicity
* subject.display = "NCHS generated"
* component[0]
  * code = ComponentCS#FirstEditedCode
  * valueCodeableConcept = RaceCodeCS#101 "White"
* component[+]
  * code = ComponentCS#SecondEditedCode
  * valueCodeableConcept = RaceCodeCS#122 "Israeli"
* component[+]
  * code = ComponentCS#FirstAmericanIndianCode
  * valueCodeableConcept = RaceCodeCS#A31 "Arikara"
* component[+]
  * code = ComponentCS#RaceRecode40
  * valueCodeableConcept = RaceRecode40CS#20 "AIAN and Asian"
* component[+]
  * code = ComponentCS#HispanicCode
  * valueCodeableConcept = HispanicOriginCS#233 "Chilean"
```