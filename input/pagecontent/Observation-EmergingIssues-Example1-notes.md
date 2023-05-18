```
Instance: EmergingIssues-Example1
InstanceOf: EmergingIssues
Title: "EmergingIssues-Example1"
Description: "EmergingIssues-Example1 make sure it is example"
Usage: #example
* status = #final
* code = ObservationsCS#emergingissues
* subject = Reference(Decedent-Example1)
* component[0]
  * code = ComponentCS#EmergingIssue1_1
  * valueString = "H"
* component[+]
  * code = ComponentCS#EmergingIssue1_2
  * valueString = "I"
* component[+]
  * code = ComponentCS#EmergingIssue8_1
  * valueString = "Hi 8_1"
* component[+]
  * code = ComponentCS#EmergingIssue20
  * valueString = "Hi 20_1"
```