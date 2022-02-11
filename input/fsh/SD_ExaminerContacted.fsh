Profile: ExaminerContacted
Parent: Observation
Id: vrdr-examiner-contacted
Title: "Examiner Contacted"
Description: "Examiner Contacted (Observation)"
* insert boilerplate
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