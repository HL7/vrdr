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
* subject 1..1
* subject only Reference(Decedent)
* value[x] 0..1
* value[x] only string   // we considered shifting to integer and kept it as string.
* valueString ^short = "Birth registry number"
* valueString ^maxLength = 6
* dataAbsentReason 0..1
* dataAbsentReason from DataAbsentReason (extensible)
* component ..*
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    birthJurisdiction 1..1 and
    birthYear 1..1
* component[birthJurisdiction] ^short = "Birth Jurisdiction"
* component[birthJurisdiction].code 1..1
* component[birthJurisdiction].code = $loinc#21842-0 // "Birthplace"
* component[birthJurisdiction].value[x] 1..1
* component[birthJurisdiction].value[x] only string
* component[birthJurisdiction].valueString from JurisdictionVS (required)
* component[birthYear] ^short = "Birth Year"
* component[birthYear].code = $loinc#80904-6 // "Birth year"
* component[birthYear].value[x] 1..1
* component[birthYear].value[x] only dateTime
* component[birthYear].value[x] ^comment = "The birth year is expressed using the YYYY portion of date and is expected to correspond to the YYYY component of the birthdate included in the Decedent resource."