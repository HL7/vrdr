Instance: AdministrativeGenderCM
// Id: vrdr-administrative-gender-cm
InstanceOf: ConceptMap
Usage: #definition
* insert ConceptMapIntro(Administrative Gender, AdministrativeGenderVS)
* insert AddGroup("IJE",$admingender)
* insert MapConcept( #M,  "Male",#male, "Male")
* insert MapConcept( #F,  "Female",#female, "Female")
* insert MapConcept( #U,  "Unknown",#unknown, "unknown")