Instance: DecedentUsualWork-Example1
InstanceOf: DecedentUsualWork
Usage: #example
Description: "DecedentUsualWork-Example1 - without coded values"
* insert AddMetaProfile(DecedentUsualWork)
* status = #final
* subject = Reference(Decedent-Example1)
* valueCodeableConcept.text = "secretary"
//* valueCodeableConcept.coding = $v3-NullFlavor#UNK "unknown"
//* component[odh-UsualIndustry].code = $loinc#21844-6 "History of Usual industry"
* component[odh-UsualIndustry].valueCodeableConcept.text = "State agency"
//* component.valueCodeableConcept.coding = $v3-NullFlavor#UNK "unknown"
//* effectivePeriod.start = "2001"
//* effectivePeriod.end = "2005"

Instance: DecedentUsualWorkCoded-Example1
InstanceOf: DecedentUsualWork
Usage: #example
Description: "DecedentUsualWorkCoded-Example1 - with coded values"
* insert AddMetaProfile(DecedentUsualWork)
* status = #final
* subject = Reference(Decedent-Example1)
* valueCodeableConcept.text = "secretary"
* valueCodeableConcept = urn:oid:2.16.840.1.114222.4.5.338#13-2011 "Accountants and Auditors"
//* valueCodeableConcept.coding = $v3-NullFlavor#UNK "unknown"
//* component[odh-UsualIndustry].code = $loinc#21844-6 "History of Usual industry"
* component[odh-UsualIndustry].valueCodeableConcept.text = "State agency"
//* component.valueCodeableConcept.coding = $v3-NullFlavor#UNK "unknown"
//* effectivePeriod.start = "2001"
//* effectivePeriod.end = "2005"
* component[odh-UsualIndustry].valueCodeableConcept = urn:oid:2.16.840.1.114222.4.5.337#54121 "Accounting, Tax Preparation, Bookkeeping, and Payroll Services"

Instance: DecedentUsualWork-Example2
InstanceOf: DecedentUsualWork
Usage: #example
Description: "DecedentUsualWork-Example2 - with coded values"
* insert AddMetaProfile(DecedentUsualWork)
* status = #final
* subject = Reference(Decedent-Example1)
//* valueCodeableConcept.coding = $v3-NullFlavor#UNK "unknown"
* valueCodeableConcept.text = "secretary"
//* component.code = $loinc#21844-6 "History of Usual industry"
//* component.valueCodeableConcept.coding = $v3-NullFlavor#UNK "unknown"
* component[odh-UsualIndustry].valueCodeableConcept.text = "State agency"
//* effectivePeriod.start = "2001"
//* effectivePeriod.end = "2005"
