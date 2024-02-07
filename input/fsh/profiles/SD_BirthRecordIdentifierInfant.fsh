Profile: BirthRecordIdentifier
Parent: Observation
Id: vrdr-birth-record-identifier
Title: "Birth Record Identifier"
Description: "Birth Record Identifier (Observation).  This includes the record identifier, the jurisdiction, and the birth year."
* status 1..1
* status = #final (exactly)
* code 1..1
* code only CodeableConcept
* code = $v2-0203#BR // "Birth registry number"
// This needs to be documented in the notes
// If subject is decedent (infant), this is for an infant death
* subject 1..1
* subject only Reference(Decedent)
* focus 0..0   // focus differentiates two profiles
// * extension contains    // Extension makes it possible to query this encounter from bundle with simple FHIRPath query
//     ExtensionRoleVitalRecords named role 0.1
// * extension[role].valueCodeableConcept = $v3-RoleCode#ONESELF
// * extension[role] ^short = "Differentiates Maternal (CHILD) and Infant Death (ONESELF) Uses."
* insert RecordIdentifierObservation (Birth, $loinc#80904-6, birthJurisdiction, $loinc#21842-0, birthYear)  // birth year
