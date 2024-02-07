Instance: CertifierTypesCM
// Id: vrdr-certifier-types-cm
InstanceOf: ConceptMap
Usage: #definition
* experimental = false
* insert ConceptMapIntro(CertifierTypes, CertifierTypesVS)
* insert AddGroup("IJE",$sct)
* insert MapConcept( #D ,  "Certifying Physician",#434651000124107 , "Certifying physician.")
* insert MapConcept( #P ,  "Pronouncing and Certifying Physician",#434641000124105 , "Pronouncing & Certifying physician.")
* insert MapConcept( #M ,  "Medical Examiner/Coroner",#455381000124109 , "Medical Examiner/Coroner")
* insert AddGroup("IJE",$v3-NullFlavor)
* insert MapConcept( #freetext ,  "Other Individual Legally Allowed to Certify",#OTH , "other")
