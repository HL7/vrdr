Instance: UnitsOfAgeCM
InstanceOf: ConceptMap
// Id: vrdr-units-of-age-cm
Usage: #definition
* experimental = false
* insert ConceptMapIntro(UnitsOfAge, UnitsOfAgeVS)
* insert AddGroup("IJE",$UCUM)
* insert MapConcept( #1,  "Years",#a, "Years")
* insert MapConcept( #2,  "Months",#mo, "Months")
* insert MapConcept( #4,  "Days",#d, "Days")
* insert MapConcept( #5,  "Hours",#h, "Hours")
* insert MapConcept( #6,  "Minutes",#min, "Minutes")
* insert MapConcept( #9,  "Unknown - not classifiable",#UNK, "Unknown")