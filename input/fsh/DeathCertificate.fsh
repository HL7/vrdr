Profile: DeathCertificate
Parent: Composition
Id: VRDR-Death-Certificate
Title: "VRDR Death Certificate"
Description: "The Death Certificate profile is the body of the death certificate document. It builds upon the FHIR Composition resource."
* ^meta.versionId = "13"
* ^meta.lastUpdated = "2020-08-07T15:46:37.056+00:00"
* ^meta.source = "#xWgWALJHC1oSZGq3"
* ^version = "1.0"
* ^status = #draft
* ^experimental = false
* ^date = "2020-05-09"
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
* status from CompositionStatus (required)
* status ^short = "status"
* type 1..1
* type only CodeableConcept
* type = $loinc#64297-5 "Death certificate" (exactly)
* type ^short = "type"
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "subject"
* date 1..1
* date ^short = "date"
* attester 1..1
* attester only BackboneElement
* attester ^short = "attester"
* attester.mode 1..1
* attester.mode only code
* attester.mode = #legal (exactly)
* attester.mode ^short = "mode"
* attester.mode ^definition = "This attester SHALL contain exactly one [1..1] mode=\"\"legal\"\"(CONF:4393-367)."
* attester.time 1..1
* attester.time ^short = "time"
* attester.time ^definition = "This attester SHALL contain exactly one [1..1] time (CONF:4393-369)."
* attester.party 1..1
* attester.party only Reference(VRDR_Certifier)
* attester.party ^short = "party"
* attester.party ^definition = "This attester SHALL contain exactly one [1..1] party=\"VRDR Certifier\"(CONF:4393-368)."
* event 1..1
* event only BackboneElement
* event ^short = "event"
* event.code 1..1
* event.code only CodeableConcept
* event.code = $sct#103693007 "Diagnostic procedure (procedure)" (exactly)
* event.code ^short = "code"
* event.code ^definition = "This event SHALL contain exactly one [1..1] code=\"\"103693007\"\"(CONF:4393-372)."
* event.detail 1..1
* event.detail only Reference(DeathCertification)
* event.detail ^short = "detail"
* event.detail ^definition = "This event SHALL contain exactly one [1..1] detail=\"VRDR Death Certification\" (CONF:4393-373)."

Instance: 54fd9b4c-7633-4e34-bf6b-6fbe9d48fd30
InstanceOf: DeathCertificate
Title: "Death Certificate Example"
Description: "An instance example of the VRDR-Death-Certificate resource profile."
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2020-07-22T20:25:55.816+00:00"
* meta.source = "#9AKuC1eEH9yOkDrI"
* identifier.value = "1"
* status = #final
* type = $loinc#64297-5 "Death certificate"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* date = "2019-02-01T16:47:04-05:00"
* author.reference = "Practitioner/cb1219bc-785f-431c-9f56-b8fbbe78bc4d"
* title = "VRDR Death Certificate"
* attester.mode = #legal
* attester.time = "2019-01-29T16:48:06-05:00"
* attester.party.reference = "Practitioner/cb1219bc-785f-431c-9f56-b8fbbe78bc4d"
* event.code = $sct#103693007 "Diagnostic procedure (procedure)"
* event.detail.reference = "Procedure/219ef5e3-ed0c-4dab-88eb-b114daaebd73"
* section.entry[0].reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* section.entry[+].reference = "Practitioner/cb1219bc-785f-431c-9f56-b8fbbe78bc4d"
* section.entry[+].reference = "Practitioner/80db6f45-8a6d-4583-8a03-55a6663523c2"
* section.entry[+].reference = "Procedure/219ef5e3-ed0c-4dab-88eb-b114daaebd73"
* section.entry[+].reference = "Organization/1a110397-936f-4be4-ab10-2caed226569d"
* section.entry[+].reference = "Organization/6f47da13-0c25-483b-8729-7b96716b17fc"
* section.entry[+].reference = "PractitionerRole/4b96759f-8395-4093-8417-e1ca3cd26f0a"
* section.entry[+].reference = "List/60401545-f1e1-4a80-867f-02384ffed857"
* section.entry[+].reference = "Location/bbe38248-9a8d-414f-996e-58d5fc9eb800"
* section.entry[+].reference = "Observation/d7c2e459-c7ca-415c-a38c-f78a0f0c5813"
* section.entry[+].reference = "Condition/56b8ce2e-64f8-450b-8885-0699a53fc781"
* section.entry[+].reference = "Condition/f0cbc63d-ac4e-469b-8761-70b6ea8bf666"
* section.entry[+].reference = "RelatedPerson/976c548f-9460-42f2-b41e-390b3bee91c8"
* section.entry[+].reference = "RelatedPerson/89ababc6-8c2a-4e76-9f53-8677822f54a9"
* section.entry[+].reference = "RelatedPerson/962fded4-b90a-44f7-950e-3832011ad65f"
* section.entry[+].reference = "Observation/9676ae27-2a89-4295-913c-0d6847300a3a"
* section.entry[+].reference = "Observation/6606dd3a-49ba-47a9-a6e7-e7e4ebeddac7"
* section.entry[+].reference = "Observation/d80681ff-9f1d-4915-87b5-eda54534096a"
* section.entry[+].reference = "Observation/0db13e0d-fea6-4ef1-8285-62d761f61d88"
* section.entry[+].reference = "Observation/df5a2807-e0b2-4971-9820-efdbbbfcef7b"
* section.entry[+].reference = "Observation/092e7b13-224d-46a6-ac31-0d98d4c84126"
* section.entry[+].reference = "Observation/4424113f-69c4-40fe-b88f-d7b03304dfe4"
* section.entry[+].reference = "Observation/4aed1450-ab2d-4cb9-858f-227b127323a6"
* section.entry[+].reference = "Observation/4d0ce010-16f1-44f4-bbf8-3a2030e9de99"
* section.entry[+].reference = "Location/4b863da8-1bb5-4b17-9be2-4ea39b5d3a2a"
* section.entry[+].reference = "Observation/37c086a1-05bd-479c-92b4-1234d38bfe5a"
* section.entry[+].reference = "Location/b7de6056-817f-4d73-9830-ce566accd044"
* section.entry[+].reference = "Observation/b531cbf7-6290-424c-8155-0549c3fb3243"