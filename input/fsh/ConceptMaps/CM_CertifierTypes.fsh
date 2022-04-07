Instance: CertifierTypesCM
// Id: vrdr-certifier-types-cm
InstanceOf: ConceptMap
Usage: #definition
* insert ConceptMapIntro(Certifier Types, CertifierTypesVS)
* insert AddGroup("IJE",$sct)
* insert MapConcept( #D ,  "Certifying Physician",#434651000124107 , "Certifying physician.")
* insert MapConcept( #P ,  " Pronouncing and Certifying Physician",#434641000124105 , "Pronouncing & Certifying physician. ")
* insert MapConcept( #M ,  "Medical Examiner/Coroner",#455381000124109 , "Medical Examiner/Coroner")
* insert AddGroup("None",$v3-NullFlavor)
* insert UnmatchedMapConcept( "Full Text" ,  "Other Individual Legally Allowed to Certify ",#OTH , "Other")
