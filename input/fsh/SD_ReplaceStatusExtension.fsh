Extension: ReplaceStatus
Id: ReplaceStatus
Title: "Replacement Status of a Death Record (deprecated)"
Description: "Replacement Status of a Death Record.  The use of this extension has been deprecated and wil be ignored for NCHS submissions.  See the [NCHS Vital Records Messaging IG](https://build.fhir.org/ig/nightingaleproject/vital_records_fhir_messaging_ig/branches/main/message.html#message-structure-and-content)
for a description of how to specify replace status at the message level."
* insert ExtensionContextResource(Meta)
* insert ExtensionContextResource(Composition)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from ReplaceStatusVS (required)
* value[x] ^short = "Replacement Status of a Death Record (deprecated)"
