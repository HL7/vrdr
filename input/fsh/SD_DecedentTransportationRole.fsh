Profile: DecedentTransportationRole
Parent: Observation
Id: vrdr-decedent-transportation-role
Title: "Decedent Transportation Role"
Description: "Decedent Transportation Role (Observation)"
* insert RequireMetaProfile(DecedentTransportationRole)
* status 1..1
* status only code
* status = #final (exactly)
* code 1..1
* code only CodeableConcept
* code = $loinc#69451-3 "Transportation role of decedent" (exactly)
* subject 1..1
* subject only Reference(Decedent)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from TransportationIncidentRoleVS (required)