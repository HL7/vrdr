Instance: BirthRecordIdentifier-Example1
InstanceOf: BirthRecordIdentifier
Usage: #example
Description: "BirthRecordIdentifier-Example1"
* insert AddMetaProfile(BirthRecordIdentifier)
* status = #final
* code = $v2-0203#BR "Birth registry number"
* subject = Reference(Decedent-Example1)
* valueString = "717171"
* component[birthJurisdiction].valueCodeableConcept = JurisdictionsCS#YC
* component[birthYear].valueDateTime = "1961"
