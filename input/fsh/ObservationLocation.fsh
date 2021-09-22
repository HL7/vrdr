Profile: ObservationLocation
Parent: Extension
Id: Observation-Location
Title: "Observation Location"
Description: "The location of the observed phenomenon or entity that is the subject of the observation."
* ^meta.versionId = "8"
* ^meta.lastUpdated = "2020-08-17T02:50:36.574+00:00"
* ^meta.source = "#KMOI4nvtMFmvU3lz"
* ^kind = #resource
* ^context.type = #extension
* ^context.expression = "Observation"
* url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Observation-Location" (exactly)
* value[x] 1..1
* value[x] only Reference
* value[x] ^definition = "Reference to a Location resource."