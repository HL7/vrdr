Instance: ParametersForEmergingIssues-Example1
InstanceOf: ParametersForEmergingIssues
Usage: #example
Description: "ParametersForEmergingIssues-Example1 make sure it is example"
* insert AddMetaProfile(ParametersForEmergingIssues)
* parameter[PLACE1_1].valueString = "H"


Instance: EmergingIssues-Example1
InstanceOf: EmergingIssues
Usage: #example
Description: "EmergingIssues-Example1 make sure it is example"
* subject = Reference(Decedent-Example1)
* status = #final
* insert AddMetaProfile(EmergingIssues)
* component[place1_1].valueString = "H"