Extension: BypassEditFlag
Id: BypassEditFlag
Title: "BypassEditFlag"
Description: "Extension to hold a codeable concept from one of several valuesets."
* insert WGExtension
* insert ExtensionContextResource(CodeableConcept)
* insert ExtensionContextResource(Quantity)
* insert boilerplate
* value[x] 1..1
* value[x] only CodeableConcept
