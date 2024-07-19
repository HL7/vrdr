Extension: PractitionerRole
Id: practitioner-role
Title: "Practitioner Role"
Description: "Used to indicate the role played by a practitioner to facilitate simple FHIRPath-based queries."
* insert ExtensionContextResource(Practitioner)
* value[x] 1..1
* value[x] only code
