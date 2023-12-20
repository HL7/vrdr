Instance: InjuryIncident-Example1
InstanceOf: InjuryIncident
Usage: #example
Description: "InjuryIncident-Example1 (with literal transportationRole)"
* insert AddMetaProfile(InjuryIncident)
//* extension[injuryLocationReference].valueReference = Reference(InjuryLocation-Example1)
* status = #final
* subject = Reference(Decedent-Example1)
* effectiveDateTime = "2019-11-02T13:00:00-05:00"
* valueCodeableConcept.text  = "drug toxicity"
* component[workInjuryIndicator].valueCodeableConcept = $v2-0136#N "No"
* component[placeOfInjury].valueCodeableConcept.text = "Home"
* component[transportationRole].valueCodeableConcept = $v3-NullFlavor#OTH "Other"
* component[transportationRole].valueCodeableConcept.text = "Hoverboard Rider"

Instance: InjuryIncident-Example2
InstanceOf: InjuryIncident
Usage: #example
Description: "InjuryIncident-Example2 (with coded transportationRole)"
* insert AddMetaProfile(InjuryIncident)
//* extension[injuryLocationReference].valueReference = Reference(InjuryLocation-Example1)
* status = #final
* subject = Reference(Decedent-Example1)
* effectiveDateTime = "2019-11-02T13:00:00-05:00"
* valueCodeableConcept.text  = "drug toxicity"
* component[workInjuryIndicator].valueCodeableConcept = $v2-0136#N "No"
* component[placeOfInjury].valueCodeableConcept.text = "Home"
* component[transportationRole].valueCodeableConcept = $sct#257518000 "Pedestrian"

Instance: InjuryLocation-Example1
InstanceOf: InjuryLocation
Usage: #example
Description: "InjuryLocation-Example1"
* insert AddMetaProfile(InjuryLocation)
* description = "5590 Lockwood Drive 20621 US"
* name = "Home"
* address.text = "5590 Lockwood Drive 20621 US"