/*
Subject:
   VRDR - subject is decedent
   VRCL - subject can be patient or decedent. 
   MDI - subject is a patient.
Value:
   MDI and VRCL missing one value from valueset. --> created new valueset in Common that includes value 7 as well as updated codesystem to include value 7
Status:
   VRDR status is fixed to final
BypassEditFlag slice:  Missing from MDI
VRDR has no MS flags. MDI and VRCL have the same MS flags. 
*/
Profile: DecedentPregnancyStatus
Parent: Observation
Id: vrdr-decedent-pregnancy-status
Title: "Observation - Decedent Pregnancy"
Description: "This Observation provides an indication of the pregnancy status of the decedent.
This profile is designed to support VRDR and MDI"
// * status 1..1 //in vrdr, status is fixed to final
// * status only code
//   * ^short = "status"
* code 1..1 
* code only CodeableConcept
* code = $loinc#69442-2
  * ^short = "Timing of recent pregnancy in relation to death"
* subject 1..1 
* subject only Reference(PatientVitalRecords) //generalized to PatientVitalRecords
  * ^short = "subject"
* value[x] 1..1 
* value[x] only CodeableConcept
* value[x] from DeathPregnancyStatusVS (required) //MDI and VRCL valuesets are missing value 7 (included in VRDR). New VS generalized to include 7
  * ^short = "Whether the decedent was pregnant at or around the time of death."
  * ^binding.description = "A set of codes that reflect whether the decedent was pregnant at or around the time of death."
* value[x].extension contains
    BypassEditFlag named bypassEditFlag 0..1 //MDI was missing bypassEditFlag
* value[x].extension[bypassEditFlag].value[x] from EditBypass012VS (required) //vrdr valueset
* value[x].extension[bypassEditFlag].value[x] only CodeableConcept

