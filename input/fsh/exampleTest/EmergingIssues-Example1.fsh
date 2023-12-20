Instance: EmergingIssues-Example1
InstanceOf: Observation
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-emerging-issues"
* component[0]
  * code = $vrdr-component-cs#EmergingIssue1_1
  * valueString = "H"
* component[+]
  * code = $vrdr-component-cs#EmergingIssue1_2
  * valueString = "I"
* component[+]
  * code = $vrdr-component-cs#EmergingIssue8_1
  * valueString = "Hi 8_1"
* component[+]
  * code = $vrdr-component-cs#EmergingIssue20
  * valueString = "Hi 20_1"
* status = #final
* code = $vrdr-observations-cs#emergingissues
* subject = Reference(Decedent-Example1)