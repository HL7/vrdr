Instance: DecedentTransportationRole-Example1
InstanceOf: DecedentTransportationRole
Usage: #example
Description: "DecedentTransportationRole-Example1"
* insert AddMetaProfile(DecedentTransportationRole)
* subject = Reference(Decedent-Example1)
* status = #final
* valueCodeableConcept = $v3-NullFlavor#NA "not applicable"

Instance: DecedentTransportationRole-Example2
InstanceOf: DecedentTransportationRole
Usage: #example
Description: "DecedentTransportationRole-Example2.   When value = OTH, text field should contain actual role"
* insert AddMetaProfile(DecedentTransportationRole)
* subject = Reference(Decedent-Example1)
* status = #final
* valueCodeableConcept = $v3-NullFlavor#OTH "Other"
* valueCodeableConcept.text = "Hoverboard Rider"
