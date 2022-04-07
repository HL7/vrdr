Instance: MaritalStatusCM
InstanceOf: ConceptMap
// Id: vrdr-marital-status-cm
Usage: #definition
* insert ConceptMapIntro(Marital Status, MaritalStatusVS)
* insert AddGroup("IJE",$sct)
* insert MapConcept( #D,  "Divorced",#D, "Divorced")
* insert MapConcept( #A,  "Married but Separated",#L, "Legally Separated")
* insert MapConcept( #M,  "Married",#M, "Married")
* insert MapConcept( #S,  "Never Married",#S, "Never Married")
* insert MapConcept( #W,  "Widowed",#W, "Widowed")
* insert AddGroup("IJE",$v3-NullFlavor)
* insert MapConcept( #U,  "Not Classifiable",#UNK, "unknown")