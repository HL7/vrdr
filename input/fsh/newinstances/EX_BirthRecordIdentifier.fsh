Instance: BirthRecordIdentifier-Example1
InstanceOf: BirthRecordIdentifier
Usage: #example
Description: "BirthRecordIdentifier-Example1"
* insert AddMetaProfile(BirthRecordIdentifier)
* status = #final
//* code = $v2-0203#BR "Birth registry number"
* subject = Reference(Decedent-Example1)
* valueString = "717171"
* component[birthJurisdiction].valueString = "YC"
* component[birthYear].valueDateTime = "1961"

Instance: BirthRecordIdentifierChild-Example1
InstanceOf: BirthRecordIdentifierChild
Usage: #example
Description: "BirthRecordIdentifierChild-Example1"
* insert AddMetaProfile(BirthRecordIdentifierChild)
* status = #final
//* code = $v2-0203#BR "Birth registry number"
* focus = Reference(Decedent-Example1)
* valueString = "717171"
* component[birthJurisdiction].valueString = "YC"
* component[birthYear].valueDateTime = "1961"

Instance: FetalDeathRecordIdentifier-Example1
InstanceOf: FetalDeathRecordIdentifier
Usage: #example
Description: "FetalDeathRecordIdentifier-Example1"
* insert AddMetaProfile(FetalDeathRecordIdentifier)
* status = #final
//* code = $v2-0203#BR "Birth registry number"
* focus = Reference(Decedent-Example1)
* valueString = "717171"
* component[deathJurisdiction].valueString = "YC"
* component[year].valueDateTime = "1961"