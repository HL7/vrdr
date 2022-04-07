Instance: PregnancyStatusCM
InstanceOf: ConceptMap
// Id: vrdr-pregnancy-status-cm
Usage: #definition
* insert ConceptMapIntro(Pregnancy Status, PregnancyStatusVS)
* insert AddGroup("IJE",Canonical(PregnancyStatusCS))
* insert MapConcept( #1,  "Not pregnant within past year",#1, "Not pregnant within past year")
* insert MapConcept( #2,  "Pregnant at time of death",#2, "Pregnant at time of death")
* insert MapConcept( #3,  "Not pregnant\, but pregnant within 42 days of death",#3, "Not pregnant\, but pregnant within 42 days of death")
* insert MapConcept( #4,  "Not pregnant\, but pregnant 43 days to 1 year before death",#4, "Not pregnant\, but pregnant 43 days to 1 year before death")
* insert MapConcept( #9,  "Unknown if pregnant within the past year",#4, "Unknown if pregnant within the past year")
* insert AddGroup("None",$v3-NullFlavor)
* insert UnmatchedMapConcept( "Not Applicable" ,  "Not Applicable ",#NA , "Not Applicable")
