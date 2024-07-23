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
* relationship 1..1 
* relationship = $v3-RoleCode#FTH // "father"
* relationship.text = "Father"
* relationship ^short = "relationship"
* name ^short = "Father's name. If more than 1 use name.use = official"
* name.family ^short = "Father's family name"
* name.given ^short = "Father's given names"
* name.suffix ^short = "Father's suffix"
* name.use ^short = "Name use"
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
* relationship 1..1 
* relationship = $v3-RoleCode#MTH // "mother"
* relationship.text = "Mother"
* name ^short = "Mother's name"
* name.family ^short = "Mother's maiden name if name.use=maiden"
* name.given ^short = "Mother's given names"
* name.suffix ^short = "Mother's suffix"
* name.use ^short = "Name use"
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
* relationship 1..1 
* relationship ^short = "relationship"
* relationship.text = "Spouse"
* name ^short = "Spouse's name"
* name.family ^short = "Spouse's maiden name if name.use=maiden"
* name.given ^short = "Spouse's given names"
* name.suffix ^short = "Spouse's suffix"
* name.use ^short = "Name use"
