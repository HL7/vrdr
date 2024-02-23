Extension: NVSSSexAtDeath
Id: NVSS-SexAtDeath
Title: "NVSS SexAtDeath"
Description: "Sex on visual inspection at the time of death by the funeral home"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from AdministrativeGenderVS (preferred)
* value[x] ^binding.extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet].valueCanonical = Canonical(AdministrativeGenderMaxVS)
* insert ExtensionContextResource(Patient)


Extension: SpouseAlive
Id: SpouseAlive
Title: "Spouse Is Alive"
Description: "Spouse is Alive."
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from SpouseAliveVS (required)
* insert ExtensionContextResource(Patient)
