```
Instance: EmergingIssues-Example1
InstanceOf: EmergingIssues
Title: "EmergingIssues-Example1"
Description: "EmergingIssues-Example1 make sure it is example"
Usage: #example
* status = #final
* code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-observations-cs#emergingissues
* subject = Reference(Decedent-Example1)
* component[0].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#EmergingIssue1_1
* component[=].valueString = "H"
* component[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#EmergingIssue1_2
* component[=].valueString = "I"
* component[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#EmergingIssue8_1
* component[=].valueString = "Hi 8_1"
* component[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#EmergingIssue20
* component[=].valueString = "Hi 20_1"
```