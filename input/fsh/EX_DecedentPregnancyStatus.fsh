Instance: DecedentPregnancyStatus-Example1
InstanceOf: DecedentPregnancyStatus
Usage: #example
Description: "DecedentPregnancyStatus-Example1"
* meta.profile = Canonical(DecedentPregnancyStatus)
* subject = Reference(Decedent-Example1)
* status = #final
* valueCodeableConcept = PregnancyStatusCS#PHC1261
* valueCodeableConcept.extension[bypassEditFlag].valueCodeableConcept = BypassEditFlagCS#2 "Edit Failed, Data Queried, but not Verified"
