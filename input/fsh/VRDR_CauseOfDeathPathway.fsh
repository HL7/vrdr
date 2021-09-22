Profile: VRDR_CauseOfDeathPathway
Parent: List
Id: VRDR-Cause-of-Death-Pathway
Title: "VRDR Cause of Death Pathway"
Description: """VRDR Cause of Death Pathway is an ordered list of cause of death conditions. It builds upon the FHIR LIST resource. The source of VRDR Cause of Death Pathway (LIST.source) is a cause of death certifier. 
"""
* ^meta.versionId = "7"
* ^meta.lastUpdated = "2020-07-12T04:25:59.999+00:00"
* ^meta.source = "#6uKjje9IIwW1M35K"
* ^status = #draft
* ^publisher = "Hi3 Solutions"
* ^contact.name = "AbdulMalik Shakir"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "6266444491"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "abdulmalik.shakir@hi3solutions.com"
* ^contact.telecom[=].use = #work
* id 0..1
* id ^short = "id"
* id ^definition = "MAY contain zero or one [0..1] id (CONF:4393-317)."
* status 1..1
* status only code
* status = #current (exactly)
* status ^short = "status"
* status ^definition = "SHALL contain exactly one [1..1] status=\"\"current\"\" (CONF:4393-324)."
* mode 1..1
* mode only code
* mode = #snapshot (exactly)
* mode ^short = "mode"
* mode ^definition = "SHALL contain exactly one [1..1] mode=\"\"snapshot\"\" (CONF:4393-321)."
* source 1..1
* source only Reference(VRDR_Certifier)
* source ^short = "source"
* source ^definition = "SHALL contain exactly one [1..1] source=\"VRDR Certifier\" (CONF:4393-323)."
* orderedBy 1..1
* orderedBy only CodeableConcept
* orderedBy = $list-order#priority "Sorted by Priority" (exactly)
* orderedBy ^short = "orderedBy"
* orderedBy ^definition = "SHALL contain exactly one [1..1] orderedBy=\"\"priority\"\" (CONF:4393-322)."
* entry 1..*
* entry ^short = "entry"
* entry ^definition = "Shall contain zero or more [1..*] entry (CONF:4393-319)."
* entry.item 1..1
* entry.item only Reference(CauseOfDeathCondition)
* entry.item ^short = "item"
* entry.item ^definition = "Each entry SHALL contain exactly one [1..1] item=\"VRDR Cause Of Death Condition\" (CONF:4393-320)."

Instance: 60401545-f1e1-4a80-867f-02384ffed857
InstanceOf: VRDR_CauseOfDeathPathway
Title: "Cause of Death Pathway Example"
Description: "An instance example of the VRDR-Cause-of-Death-Pathway resource profile."
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2020-07-22T13:59:02.713+00:00"
* meta.source = "#EWNOB45m46lXQqTB"
* status = #current
* mode = #snapshot
* source.reference = "Practitioner/cb1219bc-785f-431c-9f56-b8fbbe78bc4d"
* orderedBy = $list-order#priority "Sorted by Priority"
* entry.item.reference = "Condition/f0cbc63d-ac4e-469b-8761-70b6ea8bf666"