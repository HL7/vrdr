Instance: AutopsyPerformedIndicator-Example1
InstanceOf: AutopsyPerformedIndicator
Usage: #example
Description: "AutopsyPerformedIndicator-Example1"
* insert AddMetaProfile(AutopsyPerformedIndicator)
* status = #final
* code = $loinc#85699-7 "Autopsy was performed"
* subject = Reference(Decedent-Example1)
* valueCodeableConcept = $v2-0136#Y "Yes"
* component.code = $loinc#69436-4 "Autopsy results available"
* component.valueCodeableConcept = $v2-0136#Y "Yes"