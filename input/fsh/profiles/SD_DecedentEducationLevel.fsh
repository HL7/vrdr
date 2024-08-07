Profile: DecedentEducationLevel
Parent: ObservationEducationLevelVitalRecords
Id: vrdr-decedent-education-level
Title: "Decedent Education Level"
Description: "Decedent Education Level (ObservationEducationLevelVitalRecords)"
* insert RequireMetaProfile(DecedentEducationLevel)
* status = #final (exactly)
* code = $loinc#80913-7 
  * ^short = "Highest level of education [US Standard Certificate of Death]"
* value[x] ^short = "The decedent's education level"
* value[x].extension[bypassEditFlag] ^short = "Bypass Education Level Edit Flag"
