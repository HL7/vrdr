Profile: FetalDeathRecordIdentifier
Parent: Observation
Id: vrdr-fetal-death-record-identifier
Title: "Fetal Death Record Identifier"
Description: "Fetal Death Record Identifier (Observation).  For use in Maternal Death. This includes the record identifier, the jurisdiction, and the birth year.
The subject is the Decedent (mother), whose death was related to the birth of the fetus referenced by the identifier."
* status 1..1
* status = #final (exactly)
* code 1..1
* code only CodeableConcept
* code = ObservationsCS#fetaldeathrecordidentifier 
  * ^short = "Fetal Death Record Number"
* focus 0..0
* subject only Reference(Decedent)
  * ^short = "deceased mother"
* insert RecordIdentifierObservation (Fetal Death, $loinc#81954-0, deathJurisdiction, $loinc#77969-4, year )  // date of death
