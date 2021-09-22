Profile: DecedentAge
Parent: Observation
Id: VRDR-Decedent-Age
Title: "VRDR Decedent Age"
Description: "The decedent's chronological age at the time of death. When present, the effective date of this observation shall be equal to the decedent's date of death. Age is derived as the difference in time between the decedent's death date and birth date. When age is less than one day then unit shall be minutes, when age is less than one year then unit shall be days, else unit shall be years."
* ^meta.versionId = "12"
* ^meta.lastUpdated = "2020-08-13T15:16:47.947+00:00"
* ^meta.source = "#NKNNLXhFI9eyzWz7"
* ^version = "1.0"
* ^status = #draft
* ^experimental = false
* ^date = "2020-05-10"
* ^publisher = "Health Level Seven"
* ^contact.name = "AbdulMalik Shakir"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "6266444491"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "abdulmalik.shakir@hi3solutions.com"
* ^contact.telecom[=].use = #work
* status 1..1
* status only code
* status = #final (exactly)
* status ^short = "status"
* code 1..1
* code only CodeableConcept
* code = $loinc#30525-0 "Age" (exactly)
* code ^short = "code"
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "subject"
* effective[x] 1..1
* effective[x] only dateTime
* value[x] 0..1 MS
* value[x] only Quantity
* dataAbsentReason 0..1 MS
* dataAbsentReason from DataAbsentReason (extensible)
* dataAbsentReason ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* dataAbsentReason ^binding.extension.valueString = "ObservationValueAbsentReason"
* dataAbsentReason ^binding.description = "Codes specifying why the result (`Observation.value[x]`) is missing."

Instance: df5a2807-e0b2-4971-9820-efdbbbfcef7b
InstanceOf: DecedentAge
Title: "Decedent Age Example"
Description: "An instance example of the VRDR-Decedent-Age resource profile. In this example, the decedent is identified as 79 years in age."
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2020-08-13T15:20:48.039+00:00"
* meta.source = "#vIFk7iaTriXremhe"
* status = #final
* code = $loinc#30525-0 "Age"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* effectiveDateTime = "2020-01-02"
* dataAbsentReason = $data-absent-reason#unknown "Unknown"
* dataAbsentReason.text = "Unable to determine age at death because of incomplete birthdate and time of death values."