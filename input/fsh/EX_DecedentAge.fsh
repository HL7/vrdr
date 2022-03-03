Instance: DecedentAge-Example1
InstanceOf: DecedentAge
Usage: #example
Description: "DecedentAge-Example1"
* insert AddMetaProfile(DecedentAge)
* status = #final
* subject = Reference(Decedent-Example1)
* valueQuantity.value = 42
* valueQuantity.unit = "a"
* valueQuantity.extension[bypassEditFlag].valueCodeableConcept = BypassEditFlagCS#0 "Edit Passed"
