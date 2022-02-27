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
* subject = Reference(Decedent-Example1)
* component[interval].valueString = "3 months"
* performer = Reference(Certifier-Example1)
* status = #final

/*  Certifier */
Instance: Certifier-Example1
InstanceOf: Certifier
Usage: #example
Description: "Certifier-Example1"
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