Instance: DeathDate-Example1
InstanceOf: DeathDate
Usage: #example
Description: "DeathDate-Example1"
* meta.profile = Canonical(DeathDate)
* subject = Reference(Decedent-Example1)
* effectiveDateTime = "2020-11-12T16:39:40-05:00"
* performer = Reference(Certifier-Example1)
// * valueDateTime = "2020-11-12T16:39:40-05:00"
* valueDateTime.extension[partialDateTime].extension[day].valueInteger = 12
* valueDateTime.extension[partialDateTime].extension[month].valueCode = #NA
* valueDateTime.extension[partialDateTime].extension[year].valueInteger = 2020
* valueDateTime.extension[partialDateTime].extension[time].valueTime = "12:01:02"
* component.code = $loinc#80616-6 "Date and time pronounced dead [US Standard Certificate of Death]"
* component.valueDateTime = "2020-11-13T16:39:40-05:00"
