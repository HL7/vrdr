Profile: DecedentUsualWork
Parent: UsualWork
Id: vrdr-decedent-usual-work
Title: "Decedent Usual Work"
Description: "Decedent Usual Work (UsualWork)"
* insert RequireMetaProfile(DecedentUsualWork)
* subject 1..1
* subject only Reference(Decedent)
* component[odh-UsualIndustry]
  * valueCodeableConcept.
    * text ^short = "Industry - Literal"
* valueCodeableConcept
  * text ^short = "Occupation - Literal"