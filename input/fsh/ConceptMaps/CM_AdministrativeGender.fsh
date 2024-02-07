Instance: AdministrativeGenderCM
// Id: vrdr-administrative-gender-cm
InstanceOf: ConceptMap
Usage: #definition
* experimental = false
* insert ConceptMapIntro(AdministrativeGender, AdministrativeGenderVS)
* insert AddGroup("IJE",$admingender)
* insert MapConcept( #M,  "Male",#male, "Male")
* insert MapConcept( #F,  "Female",#female, "Female")
* insert MapConcept( #U,  "Unknown",#unknown, "Unknown")