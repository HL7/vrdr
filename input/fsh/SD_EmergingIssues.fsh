

RuleSet: PlaceComponent(len, number)
* component contains EmergingIssue{len}_{number} 0..1
* component[EmergingIssue{len}_{number}] ^short = "EmergingIssue{len}_{number}"
* component[EmergingIssue{len}_{number}].code 1..1
* component[EmergingIssue{len}_{number}].code = ComponentCS#EmergingIssue{len}_{number}
* component[EmergingIssue{len}_{number}].value[x] 1..1
* component[EmergingIssue{len}_{number}].value[x] only string
* component[EmergingIssue{len}_{number}].valueString ^maxLength = {len}



Profile: EmergingIssues
Parent: Observation
Id: vrdr-emerging-issues
Title: "Emerging Issues"
Description: "Emerging Issues (Observation)"
* insert RequireMetaProfile(EmergingIssues)
* status 1..1
* status = #final (exactly)
* code 1..1
* code = ObservationsCS#emergingissues // "NCHS-required Parameter Slots for Emerging Issues"
* subject 1..1
* subject only Reference(Decedent)
* effective[x] 0..0
* value[x] 0..0
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* insert PlaceComponent(1,1)
* insert PlaceComponent(1,2)
* insert PlaceComponent(1,3)
* insert PlaceComponent(1,4)
* insert PlaceComponent(1,5)
* insert PlaceComponent(1,6)
* insert PlaceComponent(1,7)
* insert PlaceComponent(1,8)
* insert PlaceComponent(8,1)
* insert PlaceComponent(8,2)
* insert PlaceComponent(8,3)
* component contains EmergingIssue20 0..1
* component[EmergingIssue20] ^short = "EmergingIssue20"
* component[EmergingIssue20].code 1..1
* component[EmergingIssue20].code = ComponentCS#EmergingIssue20
* component[EmergingIssue20].value[x] 1..1
* component[EmergingIssue20].value[x] only string
* component[EmergingIssue20].valueString ^maxLength = 20
