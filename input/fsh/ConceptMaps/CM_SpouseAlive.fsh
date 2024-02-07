Instance: SpouseAliveCM
InstanceOf: ConceptMap
// Id: vrdr-marital-status-cm
Usage: #definition
* experimental = false
* insert ConceptMapIntro(SpouseAlive, SpouseAliveVS)
* insert AddGroup("IJE",$v2-0136)
* insert MapConcept( #1,  "Yes",#Y, "Yes")
* insert MapConcept( #2,  "No",#N, "No")
* insert AddGroup("IJE",$v3-NullFlavor)
* insert MapConcept( #8,  "Unmarried",#NA, "not applicable")
* insert MapConcept( #9,  "Unknown",#UNK, "unknown")