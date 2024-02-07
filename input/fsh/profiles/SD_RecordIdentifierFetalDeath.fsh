Profile: FetalDeathRecordIdentifier
Parent: Observation
Id: vrdr-fetal-death-record-identifier
Title: "Fetal Death Record Identifier"
Description: "Fetal Death Record Identifier (Observation).  This includes the record identifier, the jurisdiction, and the birth year."
* status 1..1
* status = #final (exactly)
* code 1..1
* code only CodeableConcept
* code = $v2-0203#FDR // "Fetal Death Record Number"
// This needs to be documented in the notes
// Decedent is mother.   Record is fetus whose delivery resulted in maternal death
* focus 1..1
* focus only Reference(Decedent)
* insert RecordIdentifierObservation (Fetal Death, $loinc#81954-0, deathJurisdiction, $loinc#77969-4, year )  // date of death
