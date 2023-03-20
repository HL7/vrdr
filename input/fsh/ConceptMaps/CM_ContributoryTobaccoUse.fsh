Instance: ContributoryTobaccoUseCM
InstanceOf: ConceptMap
// Id:  vrdr-contributory-tobacco-use-cm
Usage: #definition
* experimental = false
* insert ConceptMapIntro(ContributoryTobaccoUse, ContributoryTobaccoUseVS)
* insert AddGroup("IJE",$sct)
* insert MapConcept( #Y,  "Yes",#373066001, "Yes")
* insert MapConcept( #N,  "No",#373067005, "No")
* insert MapConcept( #P,  "Probably",#2931005, "Probably")
* insert AddGroup("IJE",$v3-NullFlavor)
* insert MapConcept( #U,  "Unknown",#UNK, "unknown")
* insert MapConcept( #C,  "Not on certificate",#NI, "NoInformation")