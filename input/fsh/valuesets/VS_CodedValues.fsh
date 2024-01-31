ValueSet: IntentionalRejectVS
Id: vrdr-intentional-reject-vs
Title: "Intentional Reject ValueSet"
Description: "Intentional Reject ValueSet.

Mapping to IJE codes [here](ConceptMap-IntentionalRejectCM.html)."
* IntentionalRejectCS#1 "Reject1"
* IntentionalRejectCS#2 "Reject2"
* IntentionalRejectCS#3 "Reject3"
* IntentionalRejectCS#4 "Reject4"
* IntentionalRejectCS#5 "Reject5"
* IntentionalRejectCS#9 "Reject9"
* ^experimental = false

ValueSet: SystemRejectVS
Id: vrdr-system-reject-vs
Title: "System Reject ValueSet"
Description: "System Reject ValueSet.

Mapping to IJE codes [here](ConceptMap-SystemRejectCM.html)."
* SystemRejectCS#0 "Not Rejected"
* SystemRejectCS#1 "MICAR Reject Dictionary Match"
* SystemRejectCS#2 "ACME Reject"
* SystemRejectCS#3 "MICAR Reject Rule Application"
* SystemRejectCS#4 "Record Reviewed"
* ^experimental = false

ValueSet: TransaxConversionVS
Id: vrdr-transax-conversion-vs
Title: "Transax Conversion ValueSet"
Description: "Transax Conversion ValueSet.

Mapping to IJE codes [here](ConceptMap-TransaxConversionCM.html)."
* TransaxConversionCS#3 "Conversion using non-ambivalent table entries"
* TransaxConversionCS#4 "Conversion using ambivalent table entries"
* TransaxConversionCS#5 "Duplicate entity-axis codes deleted; no other action involved"
* TransaxConversionCS#6 "Artificial code conversion; no other action"
* ^experimental = false

ValueSet: ActivityAtTimeOfDeathVS
Id: vrdr-activity-at-time-of-death-vs
Title: "Activity at Time of Death VS"
Description: "Activity at Time of Death.

Mapping to IJE codes [here](ConceptMap-ActivityAtTimeOfDeathCM.html)."
* ActivityAtTimeOfDeathCS#0 "While engaged in sports activity"
* ActivityAtTimeOfDeathCS#1 "While engaged in leisure activities."
* ActivityAtTimeOfDeathCS#2 "While working for income"
* ActivityAtTimeOfDeathCS#3 "While engaged in other types of work"
* ActivityAtTimeOfDeathCS#4 "While resting, sleeping, eating, or engaging in other vital activities"
* ActivityAtTimeOfDeathCS#8 "While engaged in other specified activities."
* ActivityAtTimeOfDeathCS#9 "During unspecified activity"
* $v3-NullFlavor#UNK "unknown"
* ^experimental = false


ValueSet: ICD10CausesOfDeathVS
Id: vrdr-icd10-causes-of-death-vs
Title: "ICD10 Causes of Death VS"
Description: "ICD10 Causes of Death VS"
* include codes from system $icd10
* ^experimental = false