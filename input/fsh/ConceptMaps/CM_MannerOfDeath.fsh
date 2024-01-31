Instance: MannerOfDeathCM
InstanceOf: ConceptMap
// Id: vrdr-manner-of-death-cm
Usage: #definition
* experimental = false
* insert ConceptMapIntro(MannerOfDeath, MannerOfDeathVS)
* insert AddGroup("IJE",$sct)
* insert MapConcept( #N,  "Natural",#38605008, "Natural death")
* insert MapConcept( #A,  "Accident",#7878000, "Accidental death")
* insert MapConcept( #S,  "Suicide",#44301001, "Suicide")
* insert MapConcept( #H,  "Homicide",#27935005, "Homicide")
* insert MapConcept( #P,  "Pending Investigation",#185973002, "Patient awaiting investigation")
* insert MapConcept( #C,  "Could not be determined",#65037004, "Death\, manner undetermined")