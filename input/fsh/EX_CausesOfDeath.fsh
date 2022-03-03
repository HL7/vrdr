Instance: CauseOfDeathCondition-Example1
InstanceOf: CauseOfDeathCondition
Usage: #example
Description: "CauseOfDeathCondition-Example1"
* meta.profile = Canonical(CauseOfDeathCondition)
* valueCodeableConcept.text = "Cardiopulmonary arrest"
* subject = Reference(Decedent-Example1)
* component[interval].valueQuantity.unit = #h
* component[interval].valueQuantity.value = 4
* performer = Reference(Certifier-Example1)
* status = #final

Instance: CauseOfDeathCondition-Example2
InstanceOf: CauseOfDeathCondition
Usage: #example
Description: "CauseOfDeathCondition-Example2"
* meta.profile = Canonical(CauseOfDeathCondition)
* valueCodeableConcept.text = "Eclampsia"
* component[interval].valueString = "3 months"
* subject = Reference(Decedent-Example1)
* performer = Reference(Certifier-Example1)
* status = #final

Instance: ConditionContributingToDeath-Example1
InstanceOf: ConditionContributingToDeath
Usage: #example
Description: "ConditionContributingToDeath-Example1"
* meta.profile = Canonical(ConditionContributingToDeath)
* valueCodeableConcept.text = "hypertensive heart disease"
* subject = Reference(Decedent-Example1)
* performer = Reference(Certifier-Example1)
* status = #final

Instance: CauseOfDeathPathway-Example1
InstanceOf: CauseOfDeathPathway
Usage: #example
Description: "CauseOfDeathPathway-Example1"
* insert AddMetaProfile(CauseOfDeathPathway)
* status = #current
* source = Reference(Certifier-Example1)
// * orderedBy = $list-order#priority "Sorted by Priority"
* entry[0].item = Reference(CauseOfDeathCondition-Example1)
* entry[+].item = Reference(CauseOfDeathCondition-Example2)


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
* address.country = "United States"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "414444AB"
* qualification.code = $sct#434641000124105
