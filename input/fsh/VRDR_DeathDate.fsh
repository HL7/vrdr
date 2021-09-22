Profile: VRDR_DeathDate
Parent: Observation
Id: VRDR-Death-Date
Title: "VRDR_DeathDate"
* ^meta.versionId = "19"
* ^meta.lastUpdated = "2020-08-17T16:46:05.221+00:00"
* ^meta.source = "#cWH5FpaiGE9NuPNq"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "Observation.extension.url"
* extension ^slicing.rules = #open
* extension contains DeathLocationReference named deathLocation 0..1
* status 1..1
* status = #final (exactly)
* code 1..1
* code = $loinc#81956-5 "Date+time of death" (exactly)
* subject 1..1
* subject only Reference(Decedent)
* effective[x] 1..1
* effective[x] only dateTime
* performer 0..1
* performer only Reference(DeathPronouncementPerformer)
* value[x] 0..1
* value[x] only dateTime
* value[x].extension contains ExtensionPartialDatePartAbsentReason named partialDatePartAbsentReason 0..1 MS
* value[x].extension[partialDatePartAbsentReason] ^short = "Indicates reason for missing one or more parts of the decedent's death date."
* value[x].extension[partialDatePartAbsentReason] ^definition = "Indicates reason for missing one or more parts of the decedent's death date."
* value[x].extension[partialDatePartAbsentReason] ^base.path = "Element.extension"
* value[x].extension[partialDatePartAbsentReason] ^base.min = 0
* value[x].extension[partialDatePartAbsentReason] ^base.max = "*"
* value[x].extension[partialDatePartAbsentReason] ^isModifier = false
* note 0..1
* method 0..1
* method = $sct#414135002 "Estimated" (exactly)
* component 0..1
* component.code 1..1
* component.code = $loinc#80616-6 "Date and time pronounced dead [US Standard Certificate of Death]" (exactly)
* component.value[x] 1..1
* component.value[x] only dateTime

Instance: b531cbf7-6290-424c-8155-0549c3fb3243
InstanceOf: VRDR_DeathDate
Title: "Death Date Example"
Description: "An instance example of the VRDR-Death-Date resource profile. In this example, the date and time of death is 2018-02-20T16:48:06-05:00. The Date and time pronounced dead is also  2018-02-20T16:48:06-05:00."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-21T05:13:38.793+00:00"
* meta.source = "#JE1pSryeOBG0VdGY"
* status = #final
* code = $loinc#81956-5 "Date+time of death"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* effectiveDateTime = "2021-02-20T16:48:06-05:00"
* performer.reference = "Practitioner/cb1219bc-785f-431c-9f56-b8fbbe78bc4d"
* valueDateTime.extension.extension[0].url = "date-year"
* valueDateTime.extension.extension[=].valueInteger = 2021
* valueDateTime.extension.extension[+].url = "date-month"
* valueDateTime.extension.extension[=].valueInteger = 2
* valueDateTime.extension.extension[+].url = "day-absent-reason"
* valueDateTime.extension.extension[=].valueCode = #asked-unknown
* valueDateTime.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Partial-date-part-absent-reason"
* component.code = $loinc#80616-6 "Date and time pronounced dead [US Standard Certificate of Death]"
* component.valueDateTime = "2021-02-20T16:48:06-05:00"