
Instance: SystemRejectCM
InstanceOf: ConceptMap
// Id: vrdr-System-reject-cm
Usage: #definition
* experimental = false
* insert ConceptMapIntro(SystemReject, SystemRejectVS)
* insert AddGroup("TRX",[[Canonical(SystemRejectCS)]])
* insert MapConcept(#0, "Not Rejected", #0,  "Not Rejected")
* insert MapConcept(#1, "MICAR Reject Dictionary Match", #1,  "MICAR Reject Dictionary Match")
* insert MapConcept(#2, "ACME Reject", #2,  "ACME Reject")
* insert MapConcept(#3, "MICAR Reject Rule Application", #3,  "MICAR Reject Rule Application")
* insert MapConcept(#4, "Record Reviewed", #4,  "Record Reviewed")
