Profile: ActivityAtTimeOfDeath
Parent: Observation
Id: vrdr-activity-at-time-of-death
Title: "Activity at Time of Death"
Description: "Activity at Time of Death (Observation)"
* insert RequireMetaProfile(Profile: ActivityAtTimeOfDeath)
* code = $loinc#80626-5
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from ActivityAtTimeOfDeathVS (required)
* insert NCHSObservationCommon
