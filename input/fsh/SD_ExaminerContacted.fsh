Profile: ExaminerContacted
Parent: Observation
Id: vrdr-examiner-contacted
Title: "Examiner Contacted"
* ^meta.versionId = "10"
* ^meta.lastUpdated = "2021-11-22T06:27:25.440+00:00"
* ^meta.source = "#qBr7V9wrXJYgis8u"
* ^version = "1.1.0"
* ^status = #draft
* ^experimental = false
* ^date = "2020-05-10"
* ^publisher = "Health Level Seven International"
* ^contact[0].name = "HL7 International - Public Health"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^contact[+].name = "Cynthia Bush, Health Scientist (Informatics), CDC/National Center for Health Statistics"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "pdz1@cdc.gov"
* ^contact[+].name = "AbdulMalik Shakir, FHL7, President and Chief Informatics Scientist Hi3 Solutions"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "abdulmalik.shakir@hi3solutions.com"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "US Realm"
* status 1..1
* status only code
* status = #final (exactly)
* status ^short = "status"
* code 1..1
* code only CodeableConcept
* code = $loinc#74497-9 "Medical examiner or coroner was contacted [US Standard Certificate of Death]" (exactly)
* code ^short = "code"
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "subject"
* value[x] 1.. MS
* value[x] only CodeableConcept
* value[x] from $Yes-No-Unknown (required)
* value[x] ^binding.description = "Yes-No-Unknown"