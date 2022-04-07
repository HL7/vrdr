Instance: PregnancyStatusCM
InstanceOf: ConceptMap
Usage: #definition
* insert ConceptMapIntro(Pregnancy Status, PregnancyStatusVS)
* insert AddGroup("IJE",Canonical(PregnancyStatusCS))
* insert MapConcept( #1,  "Not pregnant within past year",#1, "Not pregnant within past year")
* insert MapConcept( #2,  "Pregnant at time of death",#2, "Pregnant at time of death")
* insert MapConcept( #3,  "Married",#3, "Married")
* insert MapConcept( #4,  "Never Married",#4, "Never Married")
* insert MapConcept( #9,  "Widowed",#W9, "Widowed")
* insert AddGroup("IJE",$v3-NullFlavor)
* insert UnmatchedMapConcept( "Not Applicable" ,  "Not Applicable ",#NA , "Not Applicable")
