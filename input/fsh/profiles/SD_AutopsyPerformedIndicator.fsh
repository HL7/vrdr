Profile: AutopsyPerformedIndicator
Parent: Observation
Id: vrdr-autopsy-performed-indicator
Title: "Autopsy Performed Indicator"
Description: "Autopsy Performed Indicator (Observation)"
* insert RequireMetaProfile(AutopsyPerformedIndicator)
* status 1..1
* status only code
* status = #final (exactly)
* code 1..1
* code only CodeableConcept
* code = $loinc#85699-7 // "Autopsy was performed"
* subject 1..1
* subject only Reference(PatientVitalRecords)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from ValueSetYesNoUnknownVitalRecords (required)
* valueCodeableConcept ^short = "Autopsy was performed?"
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    autopsyResultsAvailable 0..1
* component[autopsyResultsAvailable] ^short = "Autopsy Results Available"
* component[autopsyResultsAvailable].code 1..1
* component[autopsyResultsAvailable].code only CodeableConcept
* component[autopsyResultsAvailable].code = $loinc#69436-4 // "Autopsy results available"
* component[autopsyResultsAvailable].value[x] 1..1
* component[autopsyResultsAvailable].value[x] only CodeableConcept
* component[autopsyResultsAvailable].value[x] from ValueSetYesNoUnknownNotApplicableVitalRecords (required)
* performer 0..1
* performer only Reference(PractitionerVitalRecords)
* performer ^short = "Autopsy Performer using USCorePractioner"