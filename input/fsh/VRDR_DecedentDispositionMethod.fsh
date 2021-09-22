Profile: VRDR_DecedentDispositionMethod
Parent: Observation
Id: VRDR-Decedent-Disposition-Method
Title: "Decedent Disposition Method"
* ^meta.versionId = "32"
* ^meta.lastUpdated = "2020-08-17T14:36:23.009+00:00"
* ^meta.source = "#bReEsnSuWhXVxAUW"
* ^version = "1.0"
* ^status = #draft
* ^publisher = "Hi3 Solutions"
* ^contact.name = "AbdulMalik Shakir"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "abdulmalik.shakir@hi3solutions.com"
* ^contact.telecom.use = #work
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "Observation.extension"
* extension ^slicing.rules = #open
* extension contains DispositionLocationReference named dispositionLocation 0..1
* status 1..1
* status only code
* status = #final
* status ^short = "status"
* status ^definition = "SHALL contain exactly one [1..1] status=\"final\" Final (CONF:4393-162)."
* code 1..1
* code only CodeableConcept
* code = $loinc#80905-3 "Body disposition method" (exactly)
* code ^short = "code"
* code ^definition = "SHALL contain exactly one [1..1] code=\"80905-3\" \tBody disposition method (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:4393-163)."
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "subject"
* subject ^definition = "SHALL contain exactly one [1..1] subject (CONF:4393-154)."
* performer 1..1
* performer only Reference(Mortician)
* performer ^short = "performer"
* performer ^definition = "SHALL contain exactly one [1..1] performer (CONF:4393-155)."
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $ViewValueSet.action_5 (required)
* value[x] ^short = "valueCodeableConcept"
* value[x] ^binding.description = "PHVS_MethodsOfDisposition_NCHS"

Instance: d80681ff-9f1d-4915-87b5-eda54534096a
InstanceOf: VRDR_DecedentDispositionMethod
Title: "Decedent Disposition Method Example"
Description: "An instance example of the VRDR-Decedent-Disposition-Method resource profile."
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2020-07-22T04:42:54.238+00:00"
* meta.source = "#EWSBpip72gzd2ZO5"
* status = #final
* code = $loinc#80905-3 "Body disposition method"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* performer.reference = "Practitioner/80db6f45-8a6d-4583-8a03-55a6663523c2"
* valueCodeableConcept = $sct#52373005 "Burial"