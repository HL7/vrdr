Profile: BirthRecordIdentifier
Parent: Observation
Id: vrdr-birth-record-identifier
Title: "Birth Record Identifier"
Description: "Birth Record Identifier (Observation)"
* insert boilerplate
* status 1..1
* status = #final (exactly)
* code 1..1
* code only CodeableConcept
* code = $v2-0203#BR "Birth registry number" (exactly)
* subject 1..1
* subject only Reference(Decedent)
* value[x] 0..1 MS
* value[x] only string
* dataAbsentReason 0..1 MS
* dataAbsentReason from DataAbsentReason (extensible)
* component ..*
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    birthState 0..1 and
    birthYear 0..1
* component[birthState].code 1..1
* component[birthState].code = $loinc#21842-0 "Birthplace" (exactly)
* component[birthState].value[x] 1..1
* component[birthState].value[x] only CodeableConcept
* component[birthState].value[x] ^patternCodeableConcept.coding.system = "urn:iso:std:iso:3166:-2"     // FIX THIS
* component[birthYear].code = $loinc#80904-6 "Birth year" (exactly)
* component[birthYear].value[x] 1..1
* component[birthYear].value[x] only dateTime
* component[birthYear].value[x] ^comment = "The birth year is expressed using the YYYY portion of datetime and is expected to correspond to the YYYY component of the birthdate included in the Decedent resource."