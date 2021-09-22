Profile: VRDR_BirthRecordIdentifier
Parent: Observation
Id: VRDR-BirthRecordIdentifier
Title: "VRDR Birth Record Identifier"
* ^meta.versionId = "22"
* ^meta.lastUpdated = "2020-07-21T00:29:30.908+00:00"
* ^meta.source = "#4JaWwyKmZx3ygQud"
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
* dataAbsentReason ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* dataAbsentReason ^binding.extension.valueString = "ObservationValueAbsentReason"
* dataAbsentReason ^binding.description = "Codes specifying why the result (`Observation.value[x]`) is missing."
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
* component[birthState].value[x] ^patternCodeableConcept.coding.system = "urn:iso:std:iso:3166:-2"
* component[birthYear].code = $loinc#80904-6 "Birth year" (exactly)
* component[birthYear].value[x] 1..1
* component[birthYear].value[x] only dateTime
* component[birthYear].value[x] ^comment = "The birth year is expressed using the YYYY portion of datetime and is expected to correspond to the YYYY component of the birthdate included in the Decedent resource."

Instance: 6606dd3a-49ba-47a9-a6e7-e7e4ebeddac7
InstanceOf: VRDR_BirthRecordIdentifier
Title: "Birth Record Identifier Example"
Description: "An instance example of the Birth Record Identifier resource profile.  In this example Birth Record identifier 4242123 denotes Massachusetts and 1940 as the birthplace and birth year of the decedent."
Usage: #example
* meta.versionId = "4"
* meta.lastUpdated = "2020-07-21T01:00:48.877+00:00"
* meta.source = "#4GORZxL8MlgNS06O"
* status = #final
* code = $v2-0203#BR "Birth registry number"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"