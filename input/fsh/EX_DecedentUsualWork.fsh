Instance: DecedentUsualWork-Example1
InstanceOf: DecedentUsualWork
Usage: #example
Description: "DecedentUsualWork-Example1 - without coded values"
* insert AddMetaProfile(DecedentUsualWork)
* status = #final
* subject = Reference(Decedent-Example1)
* valueCodeableConcept.text = "secretary"
* valueCodeableConcept = $v3-NullFlavor#UNK "unknown"
* component.code = $loinc#21844-6 "History of Usual industry"
* component.valueCodeableConcept.text = "State agency"
* component.valueCodeableConcept = $v3-NullFlavor#UNK "unknown"
* effectivePeriod.start = "2001"
* effectivePeriod.end = "2005"

Instance: DecedentUsualWork-Example2
InstanceOf: DecedentUsualWork
Usage: #example
Description: "DecedentUsualWork-Example2 - with coded values"
* insert AddMetaProfile(DecedentUsualWork)
* status = #final
* subject = Reference(Decedent-Example1)
* valueCodeableConcept = urn:oid:2.16.840.1.114222.4.5.314#5700 "Secretaries and administrative assistants"
* valueCodeableConcept.text = "secretary"
* component.code = $loinc#21844-6 "History of Usual industry"
* component.valueCodeableConcept = urn:oid:2.16.840.1.114222.4.5.315#9390 "Other general government and support"
* component.valueCodeableConcept.text = "State agency"
* effectivePeriod.start = "2001"
* effectivePeriod.end = "2005"
