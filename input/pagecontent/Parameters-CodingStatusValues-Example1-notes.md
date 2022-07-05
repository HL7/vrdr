```
Instance: CodingStatusValues-Example1
InstanceOf: CodingStatusValues
Title: "CodingStatusValues-Example1"
Description: "CodingStatusValues-Example1"
Usage: #example
* parameter[0].name = "shipmentNumber"
* parameter[=].valueString = "A2B2"
* parameter[+].name = "receiptDate"
* parameter[=].valueDate = "2021-12-12"
* parameter[+].name = "coderStatus"
* parameter[=].valueInteger = 5
* parameter[+].name = "intentionalReject"
* parameter[=].valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-intentional-reject-cs#1 "Reject1"
* parameter[+].name = "acmeSystemReject"
* parameter[=].valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-system-reject-cs#0 "Not Rejected"
* parameter[+].name = "transaxConversion"
* parameter[=].valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-transax-conversion-cs#3 "Conversion using non-ambivalent table entries"
```