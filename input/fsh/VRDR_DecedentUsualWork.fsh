Profile: VRDR_DecedentUsualWork
Parent: UsualWork
Id: VRDR-Decedent-Usual-Work
Title: "VRDR_DecedentUsualWork"
* ^meta.versionId = "8"
* ^meta.lastUpdated = "2020-07-02T04:35:06.257+00:00"
* ^meta.source = "#DQWSm7Ojy2Djzdkh"
* subject 1..1
* subject only Reference(Decedent)

Instance: 48b230c3-c5b5-4844-83bf-ede59170676e
InstanceOf: VRDR_DecedentUsualWork
Title: "Decedent Usual Work Example"
Description: "An instance example of the VRDR-Decedent-Usual-Work resource profile."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-23T14:19:04.167+00:00"
* meta.source = "#pXRxySPzm18x6rcs"
* status = #final
* code = $loinc#21843-8 "History of Usual occupation"
* subject.reference = "Patient/51b806c8-566f-463e-8783-9fbf6be8161d"
* effectivePeriod.start = "1920-01-07"
* effectivePeriod.end = "2018-02-19"
* valueCodeableConcept = $ViewCodeSystem.action#1010 "Computer programmers"
* component.code = $loinc#21844-6 "History of Usual industry"