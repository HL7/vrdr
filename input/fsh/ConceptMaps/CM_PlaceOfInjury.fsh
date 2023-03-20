Instance: PlaceOfInjuryCM
InstanceOf: ConceptMap
Usage: #definition
* experimental = false
// Id: vrdr-place-of-injury-cm
* insert ConceptMapIntro(PlaceOfInjury, PlaceOfInjuryVS)
* insert AddGroup("TRX",$loinc)
* insert MapConcept( #0,  "Home",#LA14084-0, "Home")
* insert MapConcept( #1,  "Residential Institution",#LA14085-7, "Residential Institution")
* insert MapConcept( #2,  "School\, Other Institutions\, Administrative Area",#LA14086-5, "School")
* insert MapConcept( #3,  "Sports and Recreation Area",#LA14088-1, "Sports or Recreation Area")
* insert MapConcept( #4,  "Street/highway",#LA14089-9, "Street or highway")
* insert MapConcept( #5,  "Trade and Service Area",#LA14090-7, "Trade or service area")
* insert MapConcept( #6,  "Industrial and Construction Area",#LA14091-5, "Industrial or construction area")
* insert MapConcept( #7,  "Farm",#LA14092-3, "Farm")
* insert MapConcept( #9,  "Unspecified Place",#LA14093-1, "Unspecified")
* insert AddGroup("TRX",$v3-NullFlavor)
* insert MapConcept( #8,  "Other specified Place",#OTH, "other")
