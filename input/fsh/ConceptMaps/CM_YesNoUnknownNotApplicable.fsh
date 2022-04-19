
Instance: YesNoUnknownNotApplicableCM
InstanceOf: ConceptMap
// Id: vrdr-yes-no-unknown-not-applicable-cm
Usage: #definition
* insert ConceptMapIntro(Yes No Unknown Not Applicable, YesNoUnknownNotApplicableVS)
* insert AddGroup("TRX",$v2-0136)
* insert MapConcept( #N,  "No",#N, "No")
* insert MapConcept( #Y,  "Yes",#Y, "Yes")
* insert AddGroup("TRX",$v3-NullFlavor)
* insert MapConcept( #X,  "Not Applicable",#NA, "Not Applicable")
* insert MapConcept( #U,  "Unknown",#UNK, "Unknown")

Instance: YesNoUnknownCM
InstanceOf: ConceptMap
// Id: vrdr-yes-no-unknown-cm
Usage: #definition
* insert ConceptMapIntro(Yes No Unknown , YesNoUnknownVS)
* insert AddGroup("TRX",$v2-0136)
* insert MapConcept( #N,  "No",#N, "No")
* insert MapConcept( #Y,  "Yes",#Y, "Yes")
* insert AddGroup("TRX",$v3-NullFlavor)
* insert MapConcept( #U,  "Unknown",#UNK, "Unknown")

Instance: YesNoNotApplicableCM
InstanceOf: ConceptMap
// Id: vrdr-yes-no-not-applicable-cm
Usage: #definition
* insert ConceptMapIntro(Yes No Not Applicable, YesNoNotApplicableVS)
* insert AddGroup("TRX",$v2-0136)
* insert MapConcept( #N,  "No",#N, "No")
* insert MapConcept( #Y,  "Yes",#Y, "Yes")
* insert AddGroup("TRX",$v3-NullFlavor)
* insert MapConcept( #X,  "Not Applicable",#NA, "Not Applicable")

Instance: NotApplicableCM
InstanceOf: ConceptMap
// Id: vrdr-not-applicable-cm
Usage: #definition
* insert ConceptMapIntro(Not Applicable, NotApplicableVS)
* insert AddGroup("TRX",$v3-NullFlavor)
* insert MapConcept( #X,  "Not Applicable",#NA, "Not Applicable")