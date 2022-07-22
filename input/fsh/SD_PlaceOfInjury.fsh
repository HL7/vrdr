Profile: PlaceOfInjury
Parent: Observation
Id: vrdr-place-of-injury
Title: "Place Of Injury"
Description: "Place Of Injury  (Observation)"
* insert RequireMetaProfile(Profile: PlaceOfInjury)
* code = $loinc#11376-1
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from PlaceOfInjuryVS (required)
* subject 1..1
* subject only Reference(Decedent)
