Profile: DecedentFather
Parent: RelatedPerson
Id: vrdr-decedent-father
Title: "Decedent Father"
* insert boilerplate
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
Id: VRDR-Decedent-Mother
Title: "Decedent Mother"
* insert boilerplate
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
Title: "VRDR Decedent Spouse"
* insert boilerplate
* patient 1..1
* patient only Reference(Decedent)
* patient ^short = "patient"
* relationship 1..1
* relationship only CodeableConcept
* relationship = $v3-RoleCode#SPS "spouse" (exactly)
* relationship ^short = "relationship"
* name 1..1