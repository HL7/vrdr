
Profile: CodingStatusValues
Parent: Parameters
Id: vrdr-coding-status-values
Title:  "Coding Status Values"
Description:   "Coding Status Values contains various status flags that result from the coding process"
* insert RequireMetaProfile(CodingStatusValues)
* insert ParameterSlicing
* insert ParameterNameType(shipmentNumber, string, shipment number, shipment number)
* insert ParameterNameType(receiptDate, date, receipt date, receipt date)
* insert ParameterNameType(coderStatus, integer, coder status, coder status)
* insert ParameterNameType(intentionalReject, CodeableConcept, Intentional reject, Intentional reject)
* insert ParameterNameType(acmeSystemReject, CodeableConcept, ACME System Reject, ACME System Reject)
* insert ParameterNameType(transaxConversion, CodeableConcept, ALIAS: Transax Conversion, Transax Conversion)
* parameter[intentionalReject].value[x] from IntentionalRejectVS
* parameter[acmeSystemReject].value[x] from SystemRejectVS
* parameter[transaxConversion].value[x] from TransaxConversionVS
* parameter[receiptDate].valueDate.extension contains
    PartialDate named partialDate 0..1
