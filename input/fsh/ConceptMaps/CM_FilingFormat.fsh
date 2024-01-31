Instance: FilingFormatCM
InstanceOf: ConceptMap
// Id: vrdr-filing-format-cm
Usage: #definition
* experimental = false
* insert ConceptMapIntro(FilingFormat, FilingFormatVS)
* insert AddGroup("IJE",[[Canonical(FilingFormatCS)]])
* insert MapConcept(#0, "Electronic mode", #electronic,  "Electronic")
* insert MapConcept(#1, "Paper mode", #paper,  "Paper")
* insert MapConcept(#2, "Mixed mode", #mixed,  "Mixed")