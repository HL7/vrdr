Profile: DecedentFather
Parent: RelatedPerson
Id: vrdr-decedent-father
Title: "Decedent Father"
Description: "Decedent Father (RelatedPerson)"
* insert RequireMetaProfile(DecedentFather)
* patient 1..1
* patient only Reference(Decedent)
* patient ^short = "Decedent"
* relationship 1..1
* relationship only CodeableConcept
* relationship = $v3-RoleCode#FTH "father" (exactly)
* relationship.text = "Father"
* relationship ^short = "relationship"
* name ^short = "Name. If more than 1 use name.use = official"
* address 0..1

Profile: DecedentMother
Parent: RelatedPerson
Id: vrdr-decedent-mother
Title: "Decedent Mother"
Description: "Decedent Mother (RelatedPerson)"
* insert RequireMetaProfile(DecedentMother)
* patient 1..1
* patient ^short = "Decedent"
* patient only Reference(Decedent)
* relationship 1..1
* relationship only CodeableConcept
* relationship = $v3-RoleCode#MTH "mother" (exactly)
* relationship.text = "Mother"
* name.family ^short = "Maiden name if name.use=maiden"
* address 0..1


Profile: DecedentSpouse
Parent: RelatedPerson
Id: vrdr-decedent-spouse
Title: "Decedent Spouse"
Description: "Decedent Spouse (RelatedPerson)"
* insert RequireMetaProfile(DecedentSpouse)
* patient 1..1
* patient only Reference(Decedent)
* patient ^short = "Decedent"
* relationship 1..1
* relationship only CodeableConcept
* relationship = $v3-RoleCode#SPS "spouse" (exactly)
* relationship ^short = "relationship"
* relationship.text = "Spouse"
* name.family ^short = "Maiden name if name.use=maiden"
