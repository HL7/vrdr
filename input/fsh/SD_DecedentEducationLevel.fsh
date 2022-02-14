Profile: DecedentEducationLevel
Parent: Observation
Id: vrdr-decedent-education-level
Title: "Decedent Education Level"
Description: "Decedent Education Level (Observation)"
* insert RequireMetaProfile(DecedentEducationLevel)
* ^context.type = #element
* ^context.expression = "Observation"
* status 1..1
* status only code
* status = #final (exactly)
* status ^short = "status"
* code 1..1
* code only CodeableConcept
* code = $loinc#80913-7 "Highest level of education [US Standard Certificate of Death]" (exactly)
* code ^short = "code"
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "subject"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from EducationLevelVS (required)
* value[x].extension contains
    BypassEditFlag named bypassEditFlag 0..1
* value[x].extension[bypassEditFlag].value[x] from Edit-Bypass-01234 (required)
* value[x].extension[bypassEditFlag].value[x] only CodeableConcept