Instance: CodingStatusValues-Example1
InstanceOf: Parameters
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-coding-status-values"
* parameter[0]
  * name = "shipmentNumber"
  * valueString = "A2B2"
* parameter[+]
  * name = "receiptDate"
  * valueDate = "2021-12-12"
* parameter[+]
  * name = "coderStatus"
  * valueInteger = 5
* parameter[+]
  * name = "intentionalReject"
  * valueCodeableConcept = $vrdr-intentional-reject-cs#1 "Reject1"
* parameter[+]
  * name = "acmeSystemReject"
  * valueCodeableConcept = $vrdr-system-reject-cs#0 "Not Rejected"
* parameter[+]
  * name = "transaxConversion"
  * valueCodeableConcept = $vrdr-transax-conversion-cs#3 "Conversion using non-ambivalent table entries"