Profile: DeathDate
Parent: Observation
Id: vrdr-death-date
Title: "Death Date"
Description: "Date of death (Observation).  The PartialDatePartAbsent extension supports partial dates."
* insert RequireMetaProfile(DeathDate)
* extension contains
    DeathLocationReference named deathLocationReference 0..1
* status 1..1
* status = #final (exactly)
* code 1..1
* code = $loinc#81956-5 "Date+time of death" (exactly)
* subject 1..1
* subject only Reference(Decedent)
* effective[x] 1..1
* effective[x] only dateTime
* performer 0..1
* performer only Reference(DeathPronouncementPerformer)
// Should be an invariant so that either value[x] or the partial date absent extension are provided.
* value[x] 0..1
* value[x] only dateTime
* value[x].extension contains
    PartialDatePartAbsentReason named partialDatePartAbsentReason 0..1 MS
* value[x].extension[partialDatePartAbsentReason] ^short = "Indicates reason for missing one or more parts of the decedent's death date."
* value[x].extension[partialDatePartAbsentReason] ^definition = "Indicates reason for missing one or more parts of the decedent's death date."
* note 0..1
* method 0..1
* method = $sct#414135002 "Estimated" (exactly)
* component 0..1
* component.code 1..1
* component.code = $loinc#80616-6 "Date and time pronounced dead [US Standard Certificate of Death]" (exactly)
* component.value[x] 1..1
* component.value[x] only dateTime