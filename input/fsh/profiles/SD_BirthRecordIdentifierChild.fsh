Profile: BirthRecordIdentifierChild
Parent: Observation
Id: vrdr-birth-record-identifier-child
Title: "Birth Record Identifier Child"
Description: "Birth Record Identifier (Observation).  For use in Maternal Death.  This includes the record identifier, the jurisdiction, and the birth year."
* status 1..1
* status = #final (exactly)
* code 1..1
* code only CodeableConcept
* code = $v2-0203#BR // "Birth registry number"
// This needs to be documented in the notes
// If focus is decedent (mother), role should be CHILD, and this is a child whose birth was related to the death
* focus 1..1
* focus only Reference(Decedent)
// * extension contains    // Extension makes it possible to query this encounter from bundle with simple FHIRPath query
//   ExtensionRoleVitalRecords named role 1..1
// * extension[role].valueCodeableConcept = $v3-RoleCode#CHILD
// * extension[role] ^short = "Differentiates Maternal (CHILD) 
* insert RecordIdentifierObservation (Birth, $loinc#80904-6, birthJurisdiction, $loinc#21842-0, birthYear )  // birth year
