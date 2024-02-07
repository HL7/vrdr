
Instance: EmergingIssues-Example1
InstanceOf: ObservationEmergingIssuesVitalRecords
Usage: #example
Description: "EmergingIssues-Example1 make sure it is example"
* subject = Reference(Decedent-Example1)
* status = #final
* insert AddMetaProfile(ObservationEmergingIssuesVitalRecords)
* component[EmergingIssue1_1].valueString = "H"
* component[EmergingIssue1_2].valueString = "I"
* component[EmergingIssue8_1].valueString = "Hi 8_1"
* component[EmergingIssue20].valueString = "Hi 20_1"