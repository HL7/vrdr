Profile: DecedentUsualWork
Parent: UsualWork
Id: vrdr-decedent-usual-work
Title: "Decedent Usual Work"
Description: "Used to send text-string industry and occupation information from Jurisdictions to NCHS, and coded versions from NCHS to Jurisdictions."
* subject only Reference(PatientVitalRecords)  // Decedent... required by the Usual Work Profile
* component[odh-UsualIndustry]
  * valueCodeableConcept
    * text ^short = "Industry - Literal"
    * coding[industryCDCCensus2018] ^short = "Industry Code"
    * coding contains industryCDCNAICS2017  0..1
    * coding[industryCDCNAICS2017] ^short = "North American Industry Classification System (NAICS)"
    * coding[industryCDCNAICS2017] from http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.8067 (required)
* valueCodeableConcept
  * text ^short = "Occupation - Literal"
  * coding[occupationCDCCensus2018] ^short = "Occupation Code"
  * coding contains occupationCDCSOC2018  0..1
  * coding[occupationCDCSOC2018] ^short = "2018 Standard Occupational Classification (SOC)"
  * coding[occupationCDCSOC2018] from http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.8068 (required)
