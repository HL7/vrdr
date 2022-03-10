Instance: InjuryIncident-Example1
InstanceOf: InjuryIncident
Usage: #example
Description: "InjuryIncident-Example1"
* insert AddMetaProfile(InjuryIncident)
* extension[injuryLocationReference].valueReference = Reference(InjuryLocation-Example1)
* status = #final
* subject = Reference(Decedent-Example1)
* effectiveDateTime = "2019-11-02T13:00:00-05:00"
* valueCodeableConcept.text  = "drug toxicity"
* component[workInjuryIndicator].code = $loinc#69444-8 "Did death result from injury at work"
* component[workInjuryIndicator].valueCodeableConcept = $v2-0136#N "No"
* component[placeOfInjury].code = $loinc#69450-5 "Place of injury Facility"
* component[placeOfInjury].valueCodeableConcept.text = "Home"

Instance: InjuryLocation-Example1
InstanceOf: InjuryLocation
Usage: #example
Description: "InjuryLocation-Example1"
* insert AddMetaProfile(InjuryLocation)
* description = "5590 Lockwood Drive 20621 US"
* name = "Home"
* address.text = "5590 Lockwood Drive 20621 US"