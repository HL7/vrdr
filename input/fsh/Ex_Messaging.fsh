Alias: $codingstatus = ACMETRANSAXCodingStatusCS


Instance: CodingMessageParameters1
InstanceOf: CodingMessageParameters
Usage: #example
* parameter[jurisdiction_id].name = "jurisdiction_id"
* parameter[jurisdiction_id].valueString = "NH"
//* parameter[cert_no].name = "cert_no"
* parameter[cert_no].valueUnsignedInt = 123456
//* parameter[death_year].name = "death_year"
* parameter[death_year].valueUnsignedInt = 2018
//* parameter[rec_mo].name = "rec_mo"
* parameter[rec_mo].valueUnsignedInt = 12
//* parameter[rec_dy].name = "rec_dy"
* parameter[rec_dy].valueUnsignedInt = 1
//* parameter[rec_yr].name = "rec_yr"
* parameter[rec_yr].valueUnsignedInt = 2018
//* parameter[cs].name = "cs"
* parameter[cs].value[x] = $codingstatus#8
//* parameter[ship].name = "ship"
* parameter[ship].valueString = "B201901"
//* parameter[sys_rej].name = "sys_rej"
* parameter[sys_rej].valueString = "NotRejected"
//* parameter[injpl].name = "injpl"
* parameter[injpl].valueString = "OtherSpecifiedPlace"
//* parameter[other_specified_place].name = "other_specified_place"
* parameter[other_specified_place].valueString = "Unique Location"
//* parameter[state_auxiliary_id].name = "state_auxiliary_id"
* parameter[state_auxiliary_id].valueString = "abcdef10"
//* parameter[underlying_cause_of_death].name = "underlying_cause_of_death"
* parameter[underlying_cause_of_death].value[x] = $icd-10#A04.7
* parameter[record_cause_of_death].name = "record_cause_of_death"
* parameter[record_cause_of_death].part[coding][0].name = "coding"
* parameter[record_cause_of_death].part[coding][0].value[x] = $icd-10#A04.7
//* parameter[record_cause_of_death].part[+].name = "coding"
* parameter[record_cause_of_death].part[coding][=].value[x] = $icd-10#A41.9
//* parameter[record_cause_of_death].part[+].name = "coding"
* parameter[record_cause_of_death].part[coding][=].value[x] = $icd-10#J18.9
* parameter[record_cause_of_death].part[coding][+].name = "coding"
* parameter[record_cause_of_death].part[coding][=].value[x] = $icd-10#J96.0
* parameter[record_cause_of_death].part[coding][+].name = "coding"
* parameter[record_cause_of_death].part[coding][=].value[x] = $icd-10#N19
* parameter[record_cause_of_death].part[coding][+].name = "coding"
* parameter[record_cause_of_death].part[coding][=].value[x] = $icd-10#R57.9
* parameter[record_cause_of_death].part[coding][+].name = "coding"
* parameter[record_cause_of_death].part[coding][=].value[x] = $icd-10#R68.8
* parameter[entity_axis_code][0].name = "entity_axis_code"
* parameter[entity_axis_code][=].part[lineNumber].name = "lineNumber"
* parameter[entity_axis_code][=].part[lineNumber].valueString = "1"
* parameter[entity_axis_code][=].part[coding].name = "coding"
* parameter[entity_axis_code][=].part[coding].value[x] = $icd-10#R68.8
* parameter[entity_axis_code][+].name = "entity_axis_code"
* parameter[entity_axis_code][=].part[lineNumber].name = "lineNumber"
* parameter[entity_axis_code][=].part[lineNumber].valueString = "2"
* parameter[entity_axis_code][=].part[coding][0].name = "coding"
* parameter[entity_axis_code][=].part[coding][=].value[x] = $icd-10#J96.0
* parameter[entity_axis_code][=].part[coding][+].name = "coding"
* parameter[entity_axis_code][=].part[coding][=].value[x] = $icd-10#R57.9
* parameter[entity_axis_code][=].part[coding][+].name = "coding"
* parameter[entity_axis_code][=].part[coding][=].value[x] = $icd-10#N19
* parameter[entity_axis_code][+].name = "entity_axis_code"
* parameter[entity_axis_code][=].part[lineNumber].name = "lineNumber"
* parameter[entity_axis_code][=].part[lineNumber].valueString = "3"
* parameter[entity_axis_code][=].part[coding].name = "coding"
* parameter[entity_axis_code][=].part[coding].value[x] = $icd-10#A41.9
* parameter[entity_axis_code][+].name = "entity_axis_code"
* parameter[entity_axis_code][=].part[lineNumber].name = "lineNumber"
* parameter[entity_axis_code][=].part[lineNumber].valueString = "4"
* parameter[entity_axis_code][=].part[coding].name = "coding"
* parameter[entity_axis_code][=].part[coding].value[x] = $icd-10#J18.9
* parameter[entity_axis_code][+].name = "entity_axis_code"
* parameter[entity_axis_code][=].part[lineNumber].name = "lineNumber"
* parameter[entity_axis_code][=].part[lineNumber].valueString = "6"
* parameter[entity_axis_code][=].part[coding].name = "coding"
* parameter[entity_axis_code][=].part[coding].value[x] = $icd-10#A04.7
Instance: MessageParameters1
InstanceOf: DeathMessageParameters
Usage: #example
* parameter[jurisdiction_id].name = "jurisdiction_id"
* parameter[jurisdiction_id].valueString = "NH"
//* parameter[cert_no].name = "cert_no"
* parameter[cert_no].valueUnsignedInt = 123456
//* parameter[death_year].name = "death_year"
* parameter[death_year].valueUnsignedInt = 2018

Instance: AcknowledgementHeader
InstanceOf: AcknowledgementMessageHeader
Usage: #example
* eventUri = "http://nchs.cdc.gov/vrdracknowledgement"
* destination.endpoint = "https://sos.nh.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdrsubmission"
* response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
* response.code = #ok
* focus = Reference(Parameters/e1c5eb7a-730f-440f-9b4e-c5d15a1b981c)   // Is this needed?  Same parameters as for VoidMessageHeader...

Instance: VoidMessageHeader
InstanceOf: DeathMessageVoidHeader
Usage: #example
* eventUri = "http://nchs.cdc.gov/vrdrsubmissionvoid"
* destination.endpoint = "http://nchs.cdc.gov/vrdrsubmission"
* source.endpoint = "https://sos.nh.gov/vitalrecords"
* focus = Reference(Parameters/e1c5eb7a-730f-440f-9b4e-c5d15a1b981c)

Instance: VoidMessageParameters
InstanceOf: DeathMessageVoidParameters
Usage: #example
* parameter[0].name = "jurisdictionid"
* parameter[=].valueString = "NH"
* parameter[+].name = "certno"
* parameter[=].valueUnsignedInt = 123456
* parameter[+].name = "deathyear"
* parameter[=].valueUnsignedInt = 2018
* parameter[+].name = "stateauxiliaryid"
* parameter[=].valueString = "abcdef10"
* parameter[+].name = "blockcount"
* parameter[=].valuePositiveInt = 10

Instance: ExtractionErrorHeader1
InstanceOf: ExtractionErrorHeader
Usage: #example
* eventUri = "http://nchs.cdc.gov/vrdrextractionerror"
* destination.endpoint = "https://sos.nh.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdrsubmission"
* response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
* response.code = #fatal-error
* response.details = Reference(ce028490-5e55-4673-8a80-a71c97e23fa0)
* focus = Reference(Parameters/e1c5eb7a-730f-440f-9b4e-c5d15a1b981c)

Instance: ce028490-5e55-4673-8a80-a71c97e23fa0
InstanceOf: OperationOutcome
Usage: #example
* issue.severity = #error
* issue.code = #structure
* issue.diagnostics = "Expected 1 or more Cause of Death Condition resources, received 0."

Instance: ExtractionErrorMessage1
InstanceOf: ExtractionErrorMessage
Usage: #example
Description: "Example of extraction error mesage"
* entry[0].resource = ExtractionErrorHeader1
* entry[=].fullUrl = "http://example.org/fhir/Message/ExtractionErrorHeader1"
// Other slices
* entry[1].resource = MessageParameters1
* entry[=].fullUrl = "http://example.org/fhir/Parameters/MessageParameters1"
* entry[2].resource = ce028490-5e55-4673-8a80-a71c97e23fa0
* entry[=].fullUrl = "http://example.org/fhir/OperationOutcome/ce028490-5e55-4673-8a80-a71c97e23fa0"
