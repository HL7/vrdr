Instance: CauseOfDeathPart1-Example1
InstanceOf: CauseOfDeathPart1
Usage: #example
Description: "CauseOfDeathPart1New-Example1"
* meta.profile = Canonical(CauseOfDeathPart1)
* valueCodeableConcept.text = "Cardiopulmonary arrest"
* subject = Reference(Decedent-Example1)
* component[lineNumber].valueInteger = 1
* component[interval].valueString = "4 hours"
* performer = Reference(Certifier-Example1)
* status = #final

Instance: CauseOfDeathPart1-Example2
InstanceOf: CauseOfDeathPart1
Usage: #example
Description: "CauseOfDeathPart1New-Example2"
* meta.profile = Canonical(CauseOfDeathPart1)
* valueCodeableConcept.text = "Eclampsia"
* component[lineNumber].valueInteger = 2
* component[interval].valueString = "3 months"
* subject = Reference(Decedent-Example1)
* performer = Reference(Certifier-Example1)
* status = #final

Instance: CauseOfDeathPart2-Example1
InstanceOf: CauseOfDeathPart2
Usage: #example
Description: "CauseOfDeathPart2New-Example1"
* meta.profile = Canonical(CauseOfDeathPart2)
* valueCodeableConcept.text = "hypertensive heart disease"
* subject = Reference(Decedent-Example1)
* performer = Reference(Certifier-Example1)
* status = #final

// Instance: CauseOfDeathPathway-Example1
// InstanceOf: CauseOfDeathPathway
// Usage: #example
// Description: "CauseOfDeathPathway-Example1"
// * insert AddMetaProfile(CauseOfDeathPathway)
// * status = #current
// * source = Reference(Certifier-Example1)
// // * orderedBy = $list-order#priority "Sorted by Priority"
// * entry[0].item = Reference(CauseOfDeathPart1New-Example1)
// * entry[+].item = Reference(CauseOfDeathPart1New-Example2)




