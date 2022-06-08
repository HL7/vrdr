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
    * coding ^slicing.discriminator.type = #pattern
    * coding ^slicing.discriminator.path = "$this"
    * coding ^slicing.rules = #open
    * text ^short = "Industry - Literal"
    * coding contains
        industryCDCCensus2012 0..1 and
       industryCDCCensus2018 0..1
    * coding[industryCDCCensus2010] ^short = "Industry - CDC Census 2010"
    * coding[industryCDCCensus2012] ^short = "Industry - CDC Census 2012"
    * coding[industryCDCCensus2012] from $PHVS_Industry_CDC_Census2012 (required)
    * coding[industryCDCCensus2012] ^definition = "Industry CDC Census 2012"
    * coding[industryCDCCensus2012] ^binding.description = "Industry CDC Census 2012"
    * coding[industryCDCCensus2018] ^short = "Industry - CDC Census 2018"
    * coding[industryCDCCensus2018] from $PHVS_Industry_CDC_Census2018 (required)
    * coding[industryCDCCensus2018] ^definition = "Industry CDC Census 2018"
    * coding[industryCDCCensus2018] ^binding.description = "Industry CDC Census 2018"
* valueCodeableConcept
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * text ^short = "Occupation - Literal"
  * coding contains
    occupationCDCCensus2012 0..1 and
    occupationCDCCensus2018 0..1
  * coding[occupationCDCCensus2010] ^short = "Occupation - CDC Census 2010"
  * coding[occupationCDCCensus2012] from $PHVS_Occupation_CDC_Census2012 (required)
  * coding[occupationCDCCensus2012] ^short = "Occupation CDC Census 2012"
  * coding[occupationCDCCensus2012] ^definition = "Occupation CDC Census 2012"
  * coding[occupationCDCCensus2012] ^binding.description = "Occupation CDC Census 2012"
  * coding[occupationCDCCensus2018] from $PHVS_Occupation_CDC_Census2018 (required)
  * coding[occupationCDCCensus2018] ^short = "Occupation CDC Census 2018"
  * coding[occupationCDCCensus2018] ^definition = "Occupation CDC Census 2018"
  * coding[occupationCDCCensus2018] ^binding.description = "Occupation CDC Census 2018"
  * text ^short = "Occupation - Literal"