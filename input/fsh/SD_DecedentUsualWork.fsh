Profile: DecedentUsualWork
Parent: UsualWork
Id: vrdr-decedent-usual-work
Title: "Decedent Usual Work"
Description: "Decedent Usual Work (UsualWork)"
* insert RequireMetaProfile(DecedentUsualWork)
* subject 1..1
* subject only Reference(Decedent)
* component[odh-UsualIndustry]
  * valueCodeableConcept.text ^short = "Industry - Literal"
  * valueCodeableConcept.coding[industryCDCCensus2018] ^short = "Industry Code"
//    * text ^short = "Industry - Literal"
//   * coding[industryCDCCensus2018] ^short = "Industry Code"
* valueCodeableConcept
  * text ^short = "Occupation - Literal"
  * coding[occupationCDCCensus2018] ^short = "Occupation Code"