Instance: DecedentUsualWork-Example1
InstanceOf: DecedentUsualWork
Usage: #example
Description: "DecedentUsualWork-Example1"
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
