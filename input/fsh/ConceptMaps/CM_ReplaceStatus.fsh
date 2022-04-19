Instance: ReplaceStatusCM
InstanceOf: ConceptMap
// Id: vrdr-replace-status-cm
Usage: #definition
* insert ConceptMapIntro(Filing Format, ReplaceStatusVS)
* insert AddGroup("IJE",Canonical(ReplaceStatusCS))
* insert MapConcept(#0, "Original Submission", #original,  "Original Submission")
* insert MapConcept(#1, "Updated Submission", #updated,  "Updated Submission")
* insert MapConcept(#2, "Updated Submission - not for NCHS", #updated_notforNCHS,  "Updated Submission - not for NCHS")