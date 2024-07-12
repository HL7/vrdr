Instance: BirthRecordIdentifier-Example1
InstanceOf: BirthRecordIdentifier
Usage: #example
Description: "BirthRecordIdentifier-Example1 - identifier of the decedent's birth certificate"
* insert AddMetaProfile(BirthRecordIdentifier)
* status = #final
* subject = Reference(Decedent-Example1)
* valueString = "717171"
* component[birthJurisdiction].valueString = "YC"
* component[birthYear].valueDateTime = "1961"

Instance: BirthRecordIdentifierChild-Example1
InstanceOf: BirthRecordIdentifierChild
Usage: #example
Description: "BirthRecordIdentifierChild-Example1 - identifier of the decedent's child's birth certificate number"
* insert AddMetaProfile(BirthRecordIdentifierChild)
* status = #final
* subject = Reference(Decedent-Example1)
* valueString = "717171"
* component[birthJurisdiction].valueString = "YC"
* component[birthYear].valueDateTime = "1961"

Instance: FetalDeathRecordIdentifier-Example1
InstanceOf: FetalDeathRecordIdentifier
Usage: #example
Description: "FetalDeathRecordIdentifier-Example1 - identifier of the decedent's fetus's fetal death record"
* insert AddMetaProfile(FetalDeathRecordIdentifier)
* status = #final
* subject = Reference(Decedent-Example1)
* valueString = "717171"
* component[deathJurisdiction].valueString = "YC"
* component[year].valueDateTime = "1961"