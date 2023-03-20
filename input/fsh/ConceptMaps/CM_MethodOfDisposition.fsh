Instance: MethodOfDispositionCM
InstanceOf: ConceptMap
// Id: vrdr-method-of-disposition-cm
Usage: #definition
* experimental = false
* insert ConceptMapIntro(MethodOfDisposition, MethodOfDispositionVS)
* insert AddGroup("IJE",$sct)
* insert MapConcept( #B,  "Burial",#449971000124106, "Burial")
* insert MapConcept( #C,  "Cremation",#449961000124104, "Cremation")
* insert MapConcept( #D,  "Donation",#449951000124101, "Donation")
* insert MapConcept( #E,  "Entombment",#449931000124108, "Entombment")
* insert MapConcept( #R,  "Removal from State",#449941000124103, "Removal from State")
* insert AddGroup("IJE",$v3-NullFlavor)
* insert MapConcept( #O,  "Other",#OTH, "other")
* insert MapConcept( #U,  "Unknown",#UNK, "unknown")
