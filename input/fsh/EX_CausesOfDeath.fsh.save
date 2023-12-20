Instance: CauseOfDeathPart1-Example1
InstanceOf: CauseOfDeathPart1
Usage: #example
Description: "CauseOfDeathPart1-Example1"
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
Description: "CauseOfDeathPart1-Example2"
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
Description: "CauseOfDeathPart2-Example1"
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
// * entry[0].item = Reference(CauseOfDeathPart1-Example1)
// * entry[+].item = Reference(CauseOfDeathPart1-Example2)


/*  Certifier */
Instance: Certifier-Example1
InstanceOf: Certifier
Usage: #example
Description: "Certifier-Example1"
* insert AddMetaProfile(Certifier)
* name.use = #official
* name.family = "Black"
* name.given = "Jim"
* address.line = "44 South Street"
* address.city = "Bird in Hand"
* address.state = "PA"
* address.postalCode = "17505"
* address.country = "US"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "9941339100"
* qualification.code = $sct#434641000124105
