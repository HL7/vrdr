Profile: BirthRecordIdentifierChild
Parent: Observation
Id: vrdr-birth-record-identifier-child
Title: "Birth Record Identifier Child"
Description: "Birth Record Identifier (Observation). For use in Maternal Death. This includes the record identifier, the jurisdiction, and the birth year of a child.
The subject is a Decedent (mother) whose death was related to the birth referenced by the identifier."
* status 1..1
* status = #final (exactly)
* code 1..1
* code only CodeableConcept
* code = $v2-0203#BR
  * ^short = "Birth registry number"
* focus 0..0
* subject only Reference(Decedent)
  * ^short = "Deceased mother"
* insert RecordIdentifierObservation (Birth, $loinc#80904-6, birthJurisdiction, $loinc#21842-0, birthYear )  // birth year
