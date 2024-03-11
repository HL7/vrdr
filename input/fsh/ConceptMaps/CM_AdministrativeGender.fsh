Instance: AdministrativeGenderCM
// Id: vrdr-administrative-gender-cm
InstanceOf: ConceptMap
Usage: #definition
* experimental = false
* insert ConceptMapIntro(AdministrativeGender, AdministrativeGenderVS)
* insert AddGroup($IJE,$v3-AdminGender )
* insert MapConcept( #M,  "Male", #M, "Male")
* insert MapConcept( #F,  "Female",#F, "Female")
* insert AddGroup($IJE,$v3-NullFlavor)
* insert MapConcept( #U,  "Unknown",#UNK, "unknown")