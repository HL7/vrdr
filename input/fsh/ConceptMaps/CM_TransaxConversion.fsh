
Instance: TransaxConversionCM
InstanceOf: ConceptMap
// Id: vrdr-transax-conversion-cm
Usage: #definition
* experimental = false
* insert ConceptMapIntro(TransaxConversion, TransaxConversionVS)
* insert AddGroup("TRX",[[Canonical(TransaxConversionCS)]])
* insert MapConcept(#3, "Conversion using non-ambivalent table entries", #3,  "Conversion using non-ambivalent table entries")
* insert MapConcept(#4, "Conversion using ambivalent table entries", #4,  "Conversion using ambivalent table entries")
* insert MapConcept(#5, "Duplicate entity-axis codes deleted; no other action involved", #5,  "Duplicate entity-axis codes deleted; no other action involved")
* insert MapConcept(#6, "Artificial code conversion; no other action", #6,  "Artificial code conversion; no other action")
