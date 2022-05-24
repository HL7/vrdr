
Alias: $PHVS_Occupation_CDC_Census2012 = http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.8026
Alias: $PHVS_Industry_CDC_Census2012 = http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.8027
Alias: $PHVS_Occupation_CDC_Census2018 = http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.7187
Alias: $PHVS_Industry_CDC_Census2018 = http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.7900

Profile: DecedentUsualWork
Parent: Observation
Id: vrdr-decedent-usual-work
Title: "Decedent Usual Work"
Description: "A Decedent Usual Work Observation is a statement about the type of work (paid or unpaid) done by a the decedent for the longest amount of time during his or her life, not including voluntary work. The [Usual Work profile](http://hl7.org/fhir/us/odh/STU1.1/StructureDefinition-odh-UsualWork.profile.json.html) was not used
because it is overconstrained for death reporting purposes.  Future versions of this IG should reconsider that decision."
* insert RequireMetaProfile(DecedentUsualWork)
* . ^short = "Decedent Usual Work"
* . ^definition = "Related data elements about the work a person reports having performed for the longest amount of time during his or her life, regardless of the person’s current job and regardless of whether or not the person performed this work for a continuous time. Knowledge of person’s Usual Work can potentially assist in diagnosis, treatment and/or prevention of chronic condition(s) or conditions with a long latency. The potential for exposure to Occupational Hazard(s) related to an Occupation and/or an Industry can change over time, and a person could have been in and out of their Usual Work over time, so additional data are helpful to fully evaluate the possible impact of the person’s Usual Work on their health and guide appropriate use of screening tests to detect early disease. Example: a person has worked for a total of 30 years as a building carpenter (Occupation), but in various industries, mostly hotel construction. Her Usual Occupation is ‘building carpenter’ and her Usual Industry is ‘hotel construction.’ Usual Work does not include work that was unpaid or voluntary."
* category 0..1
* category.coding 0..*
* category.coding ^slicing.discriminator.type = #value
* category.coding ^slicing.discriminator.path = "code"
* category.coding ^slicing.ordered = false
* category.coding ^slicing.rules = #open
* category.coding contains Fixed_social-history 1..1 SU
* category = $observation-category#social-history  // social history
* code = $loinc##21843-8 // History of Usual Occupation
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "Decedent"
* subject ^definition = "Decedent."
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept.text ^short = "Occupation - Literal"
* valueCodeableConcept.coding ^slicing.discriminator.type = #pattern
* valueCodeableConcept.coding ^slicing.discriminator.path = "$this"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    occupationCDCCensus2012 0..1 and
    occupationCDCCensus2018 0..1
* valueCodeableConcept.coding[occupationCDCCensus2012] from $PHVS_Occupation_CDC_Census2012 (required)
* valueCodeableConcept.coding[occupationCDCCensus2012] ^short = "Occupation CDC Census 2012"
* valueCodeableConcept.coding[occupationCDCCensus2012] ^definition = "Occupation CDC Census 2012"
* valueCodeableConcept.coding[occupationCDCCensus2012] ^binding.description = "Occupation CDC Census 2012"
* valueCodeableConcept.coding[occupationCDCCensus2018] from $PHVS_Occupation_CDC_Census2018 (required)
* valueCodeableConcept.coding[occupationCDCCensus2018] ^short = "Occupation CDC Census 2018"
* valueCodeableConcept.coding[occupationCDCCensus2018] ^definition = "Occupation CDC Census 2018"
* valueCodeableConcept.coding[occupationCDCCensus2018] ^binding.description = "Occupation CDC Census 2018"
* valueCodeableConcept.text ^short = "Occupation - Literal"
* component ..*
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component contains
    odh-UsualIndustry 0..1
* component[odh-UsualIndustry].valueCodeableConcept.text ^short = "Industry - Literal"
* component[odh-UsualIndustry] ^short = "UsualIndustry: The industry (type of business) in which the subject has worked for the longest duration while in the usual occupation"
* component[odh-UsualIndustry] ^definition = "The industry (type of business) in which the subject has worked for the longest duration while in the usual occupation. For example, a person who has spent 30 years as a building carpenter in various industries, but mostly in construction, would record a usual occupation of building carpenter and a usual industry of construction."
* component[odh-UsualIndustry].code = http://loinc.org#21844-6
* component[odh-UsualIndustry].code ^short = "History of Usual industry"
* component[odh-UsualIndustry].valueCodeableConcept only CodeableConcept
* component[odh-UsualIndustry].valueCodeableConcept.coding ^slicing.discriminator.type = #pattern
* component[odh-UsualIndustry].valueCodeableConcept.coding ^slicing.discriminator.path = "$this"
* component[odh-UsualIndustry].valueCodeableConcept.coding ^slicing.rules = #open
* component[odh-UsualIndustry].valueCodeableConcept.coding contains
    industryCDCCensus2012 0..1 and
    industryCDCCensus2018 0..1
* component[odh-UsualIndustry].valueCodeableConcept.coding[industryCDCCensus2012] from $PHVS_Industry_CDC_Census2012 (required)
* component[odh-UsualIndustry].valueCodeableConcept.coding[industryCDCCensus2012] ^short = "Industry CDC Census 2012"
* component[odh-UsualIndustry].valueCodeableConcept.coding[industryCDCCensus2012] ^definition = "Industry CDC Census 2012"
* component[odh-UsualIndustry].valueCodeableConcept.coding[industryCDCCensus2012] ^binding.description = "Industry CDC Census 2012"
* component[odh-UsualIndustry].valueCodeableConcept.coding[industryCDCCensus2018] from $PHVS_Industry_CDC_Census2018 (required)
* component[odh-UsualIndustry].valueCodeableConcept.coding[industryCDCCensus2018] ^short = "Industry CDC Census 2018"
* component[odh-UsualIndustry].valueCodeableConcept.coding[industryCDCCensus2018] ^definition = "Industry CDC Census 2018"
* component[odh-UsualIndustry].valueCodeableConcept.coding[industryCDCCensus2018] ^binding.description = "Industry CDC Census 2018"