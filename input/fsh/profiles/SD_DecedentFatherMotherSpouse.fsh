//redo parents and strip redundancies

Profile: DecedentFather
Parent: RelatedPersonParentVitalRecords
Id: vrdr-decedent-father
Title: "Decedent Father"
Description: "Decedent Father (RelatedPersonParentVitalRecords)"
* insert RequireMetaProfile(DecedentFather)
* active = true
//* patient 1..1
//* patient only Reference(PatientVitalRecords) //generalized to PatientVitalRecords
* patient ^short = "Decedent"
* relationship = $v3-RoleCode#FTH // "father"
* relationship.text = "Father"
* relationship ^short = "relationship"
* name ^short = "Name. If more than 1 use name.use = official"
* address 0..1

Profile: DecedentMother
Parent: RelatedPersonParentVitalRecords
Id: vrdr-decedent-mother
Title: "Decedent Mother"
Description: "Decedent Mother (RelatedPersonParentVitalRecords)"
* insert RequireMetaProfile(DecedentMother)
* active = true
//* patient 1..1
* patient ^short = "Decedent"
//* patient only Reference(PatientVitalRecords) //generalized to PatientVitalRecords
* relationship = $v3-RoleCode#MTH // "mother"
* relationship.text = "Mother"
* name.family ^short = "Maiden name if name.use=maiden"
* address 0..1


Profile: DecedentSpouse
Parent: USCoreRelatedPersonProfile
Id: vrdr-decedent-spouse
Title: "Decedent Spouse"
Description: "Decedent Spouse (USCoreRelatedPerson)"
* insert RequireMetaProfile(DecedentSpouse)
* active = true
* patient 1..1
* patient only Reference(PatientVitalRecords) //generalized to PatientVitalRecords
* patient ^short = "Decedent"
* relationship = $v3-RoleCode#SPS // "spouse"
* relationship ^short = "relationship"
* relationship.text = "Spouse"
* name.family ^short = "Maiden name if name.use=maiden"
