Instance: DeathDate-Example1
InstanceOf: DeathDate
Usage: #example
Description: "DeathDate-Example1"
* insert AddMetaProfile(DeathDate)
* subject = Reference(Decedent-Example1)
* effectiveDateTime = "2020-11-12T16:39:40-05:00"
* performer = Reference(Certifier-Example1)
// * valueDateTime = "2020-11-12T16:39:40-05:00"
* valueDateTime.extension[partialDateTime].extension[day].valueUnsignedInt = 12
* valueDateTime.extension[partialDateTime].extension[month].valueUnsignedInt = 11
* valueDateTime.extension[partialDateTime].extension[year].valueUnsignedInt = 2020
//* valueDateTime.extension[partialDateTime].extension[time].valueTime = "12:13:14"
* valueDateTime.extension[partialDateTime].extension[time].valueTime.extension[dataabsent].valueCode = $dataabsentreason401#unknown
* component[datetimePronouncedDead].valueDateTime = "2020-11-13T16:39:40-05:00"
* component[placeOfDeath].valueCodeableConcept = $sct#16983000 "Death in hospital"

Instance: DeathDate-Example2
InstanceOf: DeathDate
Usage: #example
Description: "DeathDate-Example1"
* insert AddMetaProfile(DeathDate)
* subject = Reference(Decedent-Example1)
* effectiveDateTime = "2020-11-12T16:39:40-05:00"
* performer = Reference(Certifier-Example1)
// * valueDateTime = "2020-11-12T16:39:40-05:00"
//* valueDateTime.extension[partialDateTime].extension[day].valueUnsignedInt = 12
* valueDateTime.extension[partialDateTime].extension[day].valueUnsignedInt.extension[dataabsent].valueCode = $dataabsentreason401#unknown
* valueDateTime.extension[partialDateTime].extension[month].valueUnsignedInt = 11
* valueDateTime.extension[partialDateTime].extension[year].valueUnsignedInt = 2020
* valueDateTime.extension[partialDateTime].extension[time].valueTime = "12:13:14"
* valueDateTime.extension[partialDateTime].extension[time].valueTime.extension[dataabsent].valueCode = $dataabsentreason401#unknown
* component[datetimePronouncedDead].valueDateTime = "2020-11-13T16:39:40-05:00"
* component[placeOfDeath].valueCodeableConcept = $sct#16983000 "Death in hospital"

Instance: DeathDate-Example3
InstanceOf: DeathDate
Usage: #example
Description: "DeathDate-Example3 - Stripped down for Mortality Roster"
* insert AddMetaProfile(DeathDate)
* subject = Reference(Decedent-Example3)
* effectiveDateTime = "2020-11-12T16:39:40-05:00"
// * performer = Reference(Certifier-Example1)
// * valueDateTime = "2020-11-12T16:39:40-05:00"
//* valueDateTime.extension[partialDateTime].extension[day].valueUnsignedInt = 12
* valueDateTime.extension[partialDateTime].extension[day].valueUnsignedInt.extension[dataabsent].valueCode = $dataabsentreason401#unknown
* valueDateTime.extension[partialDateTime].extension[month].valueUnsignedInt = 11
* valueDateTime.extension[partialDateTime].extension[year].valueUnsignedInt = 2020
//* valueDateTime.extension[partialDateTime].extension[time].valueTime = "12:13:14"
* valueDateTime.extension[partialDateTime].extension[time].valueTime.extension[dataabsent].valueCode = $dataabsentreason401#unknown // required
//* component[datetimePronouncedDead].valueDateTime = "2020-11-13T16:39:40-05:00"
//* component[placeOfDeath].valueCodeableConcept = $sct#16983000 "Death in hospital"