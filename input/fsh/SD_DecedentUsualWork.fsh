Profile: DecedentUsualWork
Parent: UsualWork
Id: vrdr-decedent-usual-work
Title: "Decedent Usual Work"
Description: "Decedent Usual Work (UsualWork)"
* insert RequireMetaProfile(DecedentUsualWork)
* subject 1..1
* subject only Reference(Decedent)
* valueCodeableConcept.text ^short = "Occupation - Literal"
* valueCodeableConcept.coding[occupationCDCCensus2010] ^short = "Occupation - code"
* component[odh-UsualIndustry].valueCodeableConcept.text ^short = "Industry - Literal"
* component[odh-UsualIndustry].valueCodeableConcept.coding[industryONETSOCDetailODH] ^short = "Industry - code"
