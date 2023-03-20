
Instance: YesNoUnknownNotApplicableCM
InstanceOf: ConceptMap
// Id: vrdr-yes-no-unknown-not-applicable-cm
Usage: #definition
* experimental = false
* insert ConceptMapIntro(YesNoUnknownNotApplicable, YesNoUnknownNotApplicableVS)
* insert AddGroup("IJE",$v2-0136)
* insert MapConcept( #N,  "No",#N, "No")
* insert MapConcept( #Y,  "Yes",#Y, "Yes")
* insert AddGroup("IJE",$v3-NullFlavor)
* insert MapConcept( #X,  "Not Applicable",#NA, "not applicable")
* insert MapConcept( #U,  "Unknown",#UNK, "unknown")

Instance: YesNoUnknownCM
InstanceOf: ConceptMap
// Id: vrdr-yes-no-unknown-cm
Usage: #definition
* experimental = false
* insert ConceptMapIntro(YesNoUnknown , YesNoUnknownVS)
* insert AddGroup("IJE",$v2-0136)
* insert MapConcept( #N,  "No",#N, "No")
* insert MapConcept( #Y,  "Yes",#Y, "Yes")
* insert AddGroup("IJE",$v3-NullFlavor)
* insert MapConcept( #U,  "Unknown",#UNK, "unknown")


// Instance: NotApplicableCM
// InstanceOf: ConceptMap
// // Id: vrdr-not-applicable-cm
// Usage: #definition
// * insert ConceptMapIntro(NotApplicable, NotApplicableVS)
// * insert AddGroup("TRX",$v3-NullFlavor)
// * insert MapConcept( #X,  "Not Applicable",#NA, "Not Applicable")
