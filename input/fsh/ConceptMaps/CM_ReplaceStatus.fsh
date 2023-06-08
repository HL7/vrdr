Instance: ReplaceStatusCM
InstanceOf: ConceptMap
// Id: vrdr-replace-status-cm
Usage: #definition
* experimental = false
* insert ConceptMapIntro(ReplaceStatus, ReplaceStatusVS)
* insert AddGroup("IJE",[[Canonical(ReplaceStatusCS)]])
* insert MapConcept(#0, "Original Submission", #original,  "original record")
* insert MapConcept(#1, "Updated Submission", #updated,  "updated record")
* insert MapConcept(#2, "Updated Submission - not for NCHS", #updated_notforNCHS,  "updated record not for nchs")