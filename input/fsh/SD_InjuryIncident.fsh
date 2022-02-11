Profile: InjuryIncident
Parent: Observation
Id: vrdr-injury-incident
Title: "Injury Incident"
Description: "Injury Incident (Observation)"
* insert boilerplate
* extension contains
    InjuryLocationReference named injuryLocationReference 0..1
* status 1..1
* status = #final (exactly)
* code 1..1
* code = $loinc#11374-6 "Injury incident description Narrative" (exactly)
* subject 1..1
* subject only Reference(Decedent)
* effective[x] 0..1
* effective[x] only dateTime
* value[x] 1..1
* value[x] only dateTime or string
* component ..2
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    placeOfInjury 1..1 and
    workInjuryIndicator 1..1
* component[placeOfInjury].code 1..1
* component[placeOfInjury].code = $loinc#69450-5 "Place of injury Facility" (exactly)
* component[placeOfInjury].value[x] 1..1
* component[placeOfInjury].value[x] only CodeableConcept
* component[placeOfInjury].value[x] from PlaceOfInjuryVS (required)
* component[placeOfInjury].value[x] ^binding.description = "PHVS_PlaceOfInjury_NCHS"
* component[workInjuryIndicator].code 1..1
* component[workInjuryIndicator].code = $loinc#69444-8 "Did death result from injury at work" (exactly)
* component[workInjuryIndicator].value[x] 1..1
* component[workInjuryIndicator].value[x] only CodeableConcept
* component[workInjuryIndicator].value[x] from $Yes-No-Unknown-NotApplicable (required)
* component[workInjuryIndicator].value[x] ^binding.description = "Yes No Unknown NotApplicable"