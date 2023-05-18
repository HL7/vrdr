```
Instance: CodingStatusValues-Example1
InstanceOf: CodingStatusValues
Title: "CodingStatusValues-Example1"
Description: "CodingStatusValues-Example1"
Usage: #example
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
  * valueCodeableConcept = IntentionalRejectCS#1 "Reject1"
* parameter[+]
  * name = "acmeSystemReject"
  * valueCodeableConcept = SystemRejectCS#0 "Not Rejected"
* parameter[+]
  * name = "transaxConversion"
  * valueCodeableConcept = TransaxConversionCS#3 "Conversion using non-ambivalent table entries"
```