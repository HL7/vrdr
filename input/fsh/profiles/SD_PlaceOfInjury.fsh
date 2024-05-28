Profile: PlaceOfInjury
Parent: Observation
Id: vrdr-place-of-injury
Title: "Place Of Injury"
Description: "Place Of Injury  (Observation)"
* insert RequireMetaProfile(Profile: PlaceOfInjury)
* code = $loinc#11376-1
  * ^short = "Injury location"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from PlaceOfInjuryVS (required)
* subject 1..1
* subject only Reference(PatientVitalRecords)

* valueCodeableConcept.coding ^slicing.discriminator.type = #pattern
* valueCodeableConcept.coding ^slicing.discriminator.path = "$this"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    TRX 1..1 and
    SuperMicar 0..1 
* valueCodeableConcept.coding[TRX] from PlaceOfInjuryVS (required)
* valueCodeableConcept.coding[SuperMicar] from PlaceOfInjuryOtherVS (required)
* valueCodeableConcept.coding[TRX] ^short = "Required TRX Code"
* valueCodeableConcept.coding[TRX] ^definition = "TRX Place of Injury Code"
* valueCodeableConcept.coding[TRX] ^binding.description = "TRX Place of Injury Code"
* valueCodeableConcept.coding[SuperMicar] ^short = "Optional Supermicar code expanding on TRX Other"
* valueCodeableConcept.coding[SuperMicar] ^definition = "Optional Supermicar code expanding on TRX Other"
* valueCodeableConcept.coding[SuperMicar] ^binding.description = "Optional Supermicar code expanding on TRX Other"
