
Instance: DecedentFather-Example1
InstanceOf: DecedentFather
Usage: #example
Description: "DecedentFather-Example1"
* insert AddMetaProfile(DecedentFather)
* patient = Reference(Decedent-Example1)
* name.text = "Decedent Dad"
* name.use = #official
* name.given = "John"
* name.family = "Smith"
* name.suffix = "Sr"


Instance: DecedentMother-Example1
InstanceOf: DecedentMother
Usage: #example
Description: "DecedentFather-Example1"
* insert AddMetaProfile(DecedentMother)
* patient = Reference(Decedent-Example1)
* name.text = "Decedent Mom"
* name.use = #maiden
* name.given = "Jane"
* name.family = "Suzette"

Instance: DecedentSpouse-Example1
InstanceOf: DecedentSpouse
Usage: #example
Description: "DecedentSpouse-Example1"
* insert AddMetaProfile(DecedentSpouse)
* patient = Reference(Decedent-Example1)
* name.text = "Decedent Spouse"
* name.use = #maiden
* name.given = "Samuel"
* name.family = "Gazette"
* name.suffix = "III"
