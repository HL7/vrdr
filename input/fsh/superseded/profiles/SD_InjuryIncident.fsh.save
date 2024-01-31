Profile: InjuryIncident
Parent: Observation
Id: vrdr-injury-incident
Title: "Injury Incident"
Description: "Injury Incident (Observation)"
* insert RequireMetaProfile(InjuryIncident)
//* extension contains
//    InjuryLocationReference named injuryLocationReference 0..1
* status 1..1
* status = #final (exactly)
* code 1..1
* code = $loinc#11374-6 // "Injury incident description Narrative"
* subject 1..1
* subject only Reference(Decedent)
//* effective[x] 0..1
* effective[x] ^short = "Date/Time of Injury"
* effective[x] only dateTime
* effective[x].extension contains
    PartialDateTime named partialDateTime 0..1
* value[x] only CodeableConcept
* value[x].text ^short = "How Injured - Literal?"
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    placeOfInjury 0..1 and
    workInjuryIndicator 0..1 and
    transportationRole 0..1
* component[placeOfInjury] ^short = "Place of injury"
* component[workInjuryIndicator] ^short = "Injury at Work?"
* component[placeOfInjury].code 1..1
* component[placeOfInjury].code = $loinc#69450-5 // "Place of injury Facility"
* component[placeOfInjury].value[x] 1..1
* component[placeOfInjury].valueCodeableConcept.text ^short = "Place of Injury - Literal"
// * component[placeOfInjury].value[x] only CodeableConcept
// * component[placeOfInjury].value[x] from PlaceOfInjuryVS (required)
* component[workInjuryIndicator].code 1..1
* component[workInjuryIndicator].code = $loinc#69444-8 // "Did death result from injury at work"
* component[workInjuryIndicator].value[x] 1..1
* component[workInjuryIndicator].value[x] ^short = "Injury at Work?"
* component[workInjuryIndicator].value[x] only CodeableConcept
* component[workInjuryIndicator].value[x] from $Yes-No-Unknown-NotApplicable (required)
// * method from DeathDateMethodsVS (extensible)
* component[transportationRole].code 1..1
* component[transportationRole].code = $loinc#69451-3 // "Transportation role of decedent"
* component[transportationRole].value[x] 1..1
* component[transportationRole].value[x] ^short = "Transportation role of decedent"
* component[transportationRole].value[x] only CodeableConcept
* component[transportationRole].value[x] from TransportationIncidentRoleVS (required)
* component[transportationRole].valueCodeableConcept.text ^short = "Transportation role of decedent, if code = OTH"
