
Instance: DecedentFather-Example1
InstanceOf: DecedentFather
Usage: #example
Description: "DecedentFather-Example1"
* meta.profile = Canonical(DecedentFather)
* patient = Reference(Decedent-Example1)
* name.text = "Decedent Dad"


Instance: DecedentMother-Example1
InstanceOf: DecedentMother
Usage: #example
Description: "DecedentFather-Example1"
* meta.profile = Canonical(DecedentMother)
* patient = Reference(Decedent-Example1)
* name.text = "Decedent Mom"

Instance: DecedentSpouse-Example1
InstanceOf: DecedentSpouse
Usage: #example
Description: "DecedentSpouse-Example1"
* meta.profile = Canonical(DecedentSpouse)
* patient = Reference(Decedent-Example1)
* name.text = "Decedent Spouse"
