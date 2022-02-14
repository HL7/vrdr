Profile: DecedentFather
Parent: RelatedPerson
Id: vrdr-decedent-father
Title: "Decedent Father"
Description: "Decedent Father (RelatedPerson)"
* insert RequireMetaProfile(DecedentFather)
* patient 1..1
* patient only Reference(Decedent)
* patient ^short = "patient"
* relationship 1..1
* relationship only CodeableConcept
* relationship = $v3-RoleCode#FTH "father" (exactly)
* relationship ^short = "relationship"
* name 1..1
* name ^short = "name"
* address 0..1

Profile: DecedentMother
Parent: RelatedPerson
Id: vrdr-decedent-mother
Title: "Decedent Mother"
Description: "Decedent Mother (RelatedPerson)"
* insert RequireMetaProfile(DecedentMother)
* patient 1..1
* patient only Reference(Decedent)
* relationship 1..1
* relationship only CodeableConcept
* relationship = $v3-RoleCode#MTH "mother" (exactly)
* name 1..1
* address 0..1

Profile: DecedentSpouse
Parent: RelatedPerson
Id: vrdr-decedent-spouse
Title: "Decedent Spouse"
Description: "Decedent Spouse (RelatedPerson)"
* insert RequireMetaProfile(DecedentSpouse)
* patient 1..1
* patient only Reference(Decedent)
* patient ^short = "patient"
* relationship 1..1
* relationship only CodeableConcept
* relationship = $v3-RoleCode#SPS "spouse" (exactly)
* relationship ^short = "relationship"
* name 1..1