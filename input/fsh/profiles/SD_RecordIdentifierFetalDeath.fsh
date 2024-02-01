RuleSet: RecordIdentifierObservation (type, code, jurisdiction, jurisdictionCode, year )
* value[x] 0..1
* value[x] only string   // we considered shifting to integer and kept it as string.
* valueString ^short = "{type} Record number.  Six digit number.  Leading zeroes are optional. "
* valueString ^maxLength = 6
* dataAbsentReason 0..1
* dataAbsentReason from DataAbsentReason (extensible)
* component ..*
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    {jurisdiction} 1..1 and
    {year} 1..1
* component[{jurisdiction}] ^short = "Record Jurisdiction"
* component[{jurisdiction}].code 1..1
* component[{jurisdiction}].code = {jurisdictionCode}  // Jurisdiction Code
* component[{jurisdiction}].value[x] 1..1
* component[{jurisdiction}].value[x] only string
* component[{jurisdiction}].valueString from ValueSetJurisdictionVitalRecords (required)
* component[{year}] ^short = "Year of {type}"
* component[{year}].code = {code}             // "Date of Death/Birth"
* component[{year}].value[x] 1..1
* component[{year}].value[x] only dateTime
* component[{year}].value[x] ^comment = "The record year is expressed using the YYYY portion of date."


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
