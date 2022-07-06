Profile: ExaminerContacted
Parent: Observation
Id: vrdr-examiner-contacted
Title: "Examiner Contacted"
Description: "Examiner Contacted (Observation)"
* insert RequireMetaProfile(ExaminerContacted)
* status 1..1
* status only code
* status = #final (exactly)
* code 1..1
* code only CodeableConcept
* code = $loinc#74497-9 // "Medical examiner or coroner was contacted [US Standard Certificate of Death]"
* subject 1..1
* subject only Reference(Decedent)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from YesNoUnknownVS (required)
