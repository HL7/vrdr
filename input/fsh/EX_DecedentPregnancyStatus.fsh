Instance: DecedentPregnancyStatus-Example1
InstanceOf: DecedentPregnancyStatus
Usage: #example
Description: "DecedentPregnancyStatus-Example1"
* insert AddMetaProfile(DecedentPregnancyStatus)
* subject = Reference(Decedent-Example1)
* status = #final
* valueCodeableConcept = PregnancyStatusCS#2 "Pregnant at time of death"
* valueCodeableConcept.extension[bypassEditFlag].valueCodeableConcept = BypassEditFlagCS#2 "Edit Failed, Data Queried, but not Verified"
