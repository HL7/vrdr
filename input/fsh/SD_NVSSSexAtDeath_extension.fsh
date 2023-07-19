Extension: NVSSSexAtDeath
Id: NVSS-SexAtDeath
Title: "NVSS SexAtDeath"
Description: "Sex on visual inspection at the time of death by the funeral home"
* insert ExtensionContextResource(Patient)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from AdministrativeGenderVS (required)

Extension: SpouseAlive
Id: SpouseAlive
Title: "Spouse Is Alive"
Description: "Spouse is Alive."
* insert ExtensionContextResource(Patient)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from SpouseAliveVS (required)