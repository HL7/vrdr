Profile: CauseOfDeathCondition
Parent: USCoreCondition
Id: VRDR-Cause-Of-Death-Condition
Title: "VRDR Cause Of Death Condition"
Description: "The Cause of Death Condition profile reflects one of the eventually ordered causes of death asserted by the death certifier. The cause of death is initially specified with text. It is sent to NCHS for encoding and returned as a coded cause of death prior to submission of the completed death report. The Cause Of Death Condition profile builds upon the FHIR Condition resource."
* obeys CauseOfDeathStringLength
* ^meta.lastUpdated = "2020-07-02T04:43:46.543+00:00"
* ^meta.tag = $v3-ObservationValue#SUBSETTED "Resource encoded in summary mode"
* ^status = #draft
* ^version = "1.0"
* ^experimental = false
* ^date = "2020-05-08"
* ^publisher = "Health Level Seven"
* ^contact.name = "Salimah Shakir"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "8184306686"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "salimah@shakirconsulting.com"
* ^contact.telecom[=].use = #work
* id 0..1
* id ^short = "id"
* category = $sct#16100001 "Death diagnosis" (exactly)
* code 1..1
* code only CodeableConcept
* code ^label = "CauseOfDeathCondition.code"
* code ^short = "code"
* code ^comment = "The CauseOfDeathCondition.code element has a CodeableConcept datatype. The CodeableConcept datatype has two components - coding and text. When seeking code value assignment from the NCHS the coding component is omitted. The text component conveys the pre-coded natual language text value. Upon return from the NCHS, the coding component conveys the NCHS assigned code value based upon the original text returned in the text component."
* code.coding 0..*
* code.coding.code 1..1
* code.coding.code from $ViewValueSet.action_3 (required)
* code.coding.code ^binding.description = "PHVS_CauseOfDeath_ICD-10_CDC"
* code.text 0..1
* code.text ^short = "Limited to 120 characters"
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "subject"
* onset[x] 1..1
* onset[x] only Age or string
* onset[x] ^slicing.discriminator.type = #type
* onset[x] ^slicing.discriminator.path = "$this"
* onset[x] ^slicing.rules = #open
* onset[x] ^short = "onset[x]"
* asserter 1..1
* asserter only Reference(VRDR_Certifier)
* asserter ^short = "asserter"

Invariant: CauseOfDeathStringLength
Description:  "Cause of Death String Limited to 120 characters"
Expression: "code.text.length() < 120"
Severity: #error

Instance: f0cbc63d-ac4e-469b-8761-70b6ea8bf666
InstanceOf: CauseOfDeathCondition
Title: "Cause Of Death Condition Example"
Description: "An instance example of the VRDR-Cause-Of-Death-Condition resource profile."
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2020-07-23T00:39:07.292+00:00"
* meta.source = "#gvQxSpDrQsJLuHBR"
* category = $sct#16100001 "Death diagnosis"
* code.text = "Abdominal actinomycosis"
* code = $sct#A42.1 "Abdominal actinomycosis"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* onsetString = "minutes"
* asserter.reference = "Practitioner/cb1219bc-785f-431c-9f56-b8fbbe78bc4d"