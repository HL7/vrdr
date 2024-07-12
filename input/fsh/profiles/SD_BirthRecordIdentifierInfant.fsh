Profile: BirthRecordIdentifier
Parent: Observation
Id: vrdr-birth-record-identifier
Title: "Birth Record Identifier Infant"
Description: "Birth Record Identifier Infant (Observation).  This includes the record identifier, the jurisdiction, and the birth year of the decedent infant whose death
is being reported.  For maternal death cases, see [BirthRecordIdentifierChild](StructureDefinition-vrdr-birth-record-identifier-child.html) and [FetalDeathRecordIdentifier](StructureDefinition-vrdr-fetal-death-record-identifier.html)."
* status 1..1
* status = #final (exactly)
* code 1..1
* code only CodeableConcept
* code = ObservationsCS#childbirthrecordidentifier
  * ^short = "Birth registry number"
// This needs to be documented in the notes
// If subject is decedent (infant), this is for an infant death
* subject 1..1
* subject only Reference(Decedent)
  * ^short = "deceased infant"
* insert RecordIdentifierObservation (Birth, $loinc#80904-6, birthJurisdiction, $loinc#21842-0, birthYear)  // birth year