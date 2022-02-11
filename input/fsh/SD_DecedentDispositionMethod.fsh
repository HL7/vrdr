Profile: DecedentDispositionMethod
Parent: Observation
Id: vrdr-decedent-disposition-method
Title: "Decedent Disposition Method"
Description: "Decedent Disposition Method (Observation)"
* insert boilerplate
* extension contains
    DispositionLocationReference named dispositionLocationReference 0..1
* status 1..1
* status only code
* status = #final
* status ^short = "status"
* status ^definition = "SHALL contain exactly one [1..1] status=\"final\" Final (CONF:4393-162)."
* code 1..1
* code only CodeableConcept
* code = $loinc#80905-3 "Body disposition method" (exactly)
* code ^short = "code"
* code ^definition = "SHALL contain exactly one [1..1] code=\"80905-3\" \tBody disposition method (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:4393-163)."
* subject 1..1
* subject only Reference(Decedent)
* performer 1..1
* performer only Reference(Mortician)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $method-of-disposition (required)
* value[x] ^short = "valueCodeableConcept"
* value[x] ^binding.description = "Method of Disposition"