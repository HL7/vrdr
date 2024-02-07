Instance: DecedentPregnancyStatus-Example1
InstanceOf: DecedentPregnancyStatus
Usage: #example
Description: "DecedentPregnancyStatus-Example1"
* insert AddMetaProfile(ObservationDecedentPregnancyVitalRecords)
* subject = Reference(Decedent-Example1)
* status = #final
* valueCodeableConcept = DeathPregnancyStatusCS#2 "Pregnant at time of death"
* valueCodeableConcept.extension[bypassEditFlag].valueCodeableConcept = CodeSystemEditFlagsVitalRecords#2 "Edit Failed, Data Queried, but not Verified"
