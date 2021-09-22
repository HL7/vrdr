Profile: FuneralHomeDirector
Parent: PractitionerRole
Id: VRDR-Funeral-Home-Director
Title: "VRDR Funeral Home Director"
* ^meta.versionId = "11"
* ^meta.lastUpdated = "2020-07-02T05:36:28.836+00:00"
* ^meta.source = "#2L2lHMu6kdp3aERL"
* ^url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR_FuneralHomeDirector"
* ^version = "1.0"
* ^status = #draft
* ^experimental = false
* ^date = "2020-05-10"
* ^publisher = "Health Level Seven"
* ^contact.name = "AbdulMalik Shakir"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "abdulmalik.shakir@hi3solutions.com"
* ^contact.telecom.use = #work
* practitioner 1..1
* practitioner only Reference(Mortician)
* practitioner ^short = "practitioner"
* organization 1..1
* organization only Reference(FuneralHome)
* organization ^short = "organization"
* code 1..1
* code from PractitionerRole (required)
* code ^binding.description = "PractitionerRole"