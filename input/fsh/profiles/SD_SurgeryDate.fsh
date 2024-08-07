Profile: SurgeryDate
Parent: Observation
Id: vrdr-surgery-date
Title: "Surgery Date"
Description: "Date of Surgery (Observation).  The PartialDate extension supports partial dates."
* insert RequireMetaProfile(SurgeryDate)
* status 1..1
* status = #final (exactly)
* code 1..1
* code = $loinc#80992-1 
  * ^short = "Date and time of surgery"
* subject 1..1
* subject only Reference(PatientVitalRecords)
//* effective[x] 1..1
* effective[x] only dateTime
// Should be an invariant so that either value[x] or the partial date absent extension are provided.
* value[x] 0..1
* value[x] only dateTime
* value[x] ^short = "Surgery date"
* valueDateTime.extension contains
    ExtensionPartialDateTimeVitalRecords named partialDate 0..1
