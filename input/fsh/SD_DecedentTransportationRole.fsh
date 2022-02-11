Profile: DecedentTransportationRole
Parent: Observation
Id: vrdr-decedent-transportation-role
Title: "Decedent Transportation Role"
Description: "Decedent Transportation Role (Observation)"
* insert boilerplate
* status 1..1
* status only code
* status = #final (exactly)
* status ^short = "status"
* code 1..1
* code only CodeableConcept
* code = $loinc#69451-3 "Transportation role of decedent" (exactly)
* code ^short = "code"
* subject 1..1
* subject only Reference(Decedent)
* subject ^short = "subject"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from TransportationIncidentRoleVS (required)
* value[x] ^binding.description = "Transportation Incident Role"