Profile: DecedentAge
Parent: Observation
Id: vrdr-decedent-age
Title: "Decedent Age"
Description: "The decedent's chronological age at the time of death (Observation). When present, the effective date of this observation shall be equal to the decedent's date of death. Age is derived as the difference in time between the decedent's death date and birth date. When age is less than one day then unit shall be minutes, when age is less than one year then unit shall be days, else unit shall be years."
* insert RequireMetaProfile(DecedentAge)
* status 1..1
* status only code
* status = #final (exactly)
* status ^short = "status"
* code 1..1
* code only CodeableConcept
* code = $loinc#39016-1 "Age at death" (exactly)
* code ^short = "code"
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "subject"
* effective[x] 1..1
* effective[x] only dateTime
* effective[x] ^short = "The decedent's date of death"
* effective[x] ^definition = "The effective date of this observation shall be equal to the decedent's date of death."
* value[x] 0..1 MS
* value[x] only Quantity  // value = AGE, system = AGETYPE
* valueQuantity.system from UnitsOfAgeVS (required)
* value[x] ^short = "The decedent's chronological age at the time of death"
* value[x] ^definition = "The decedent's chronological age at the time of death. Age is derived as the difference in time between the decedent's death date and birth date. When age is less than one day then unit shall be minutes, when age is less than one year then unit shall be days, else unit shall be years."
* value[x].extension contains
    BypassEditFlag named bypassEditFlag 0..1 // BYPASS_AGE
* value[x].extension[bypassEditFlag] ^short = "Bypass Age Edit Flag"
* value[x].extension[bypassEditFlag].value[x] from EditBypass01VS (required)
* value[x].extension[bypassEditFlag].value[x] only CodeableConcept
* dataAbsentReason 0..1 MS