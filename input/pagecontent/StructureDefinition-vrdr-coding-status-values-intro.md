### Usage


| **#** |  **Description**   |  **IJE Name**   | IJE only |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | ------------- | ------------ | :----------: |---------- | -------- | -------- |
| 91 | Receipt date -- Year | R_YR| |parameter[receiptDate].value | date | See [PartialDatesAndTimes] | 
| 92 | Receipt date -- Month | R_MO| |parameter[receiptDate].value | date | See [PartialDatesAndTimes] | 
| 93 | Receipt date -- Day | R_DY| |parameter[receiptDate].value | date | See [PartialDatesAndTimes] | 
| NA | coder status  | CS (TRX Field, no IJE Mapping)| |parameter[coderStatus].value | integer | - | 
| NA | shipment number  | SHIP (TRX Field, no IJE Mapping)| |parameter[shipmentNumber].value | string | - | 
| 101 | Intentional Reject  | INT_REJ| |parameter[intentionalReject].value | codeable | [IntentionalRejectVS] | 
| 102 | Acme System Reject Codes | SYS_REJ| |parameter[acmeSystemReject].value  | codeable | [ACMESystemRejectVS] | 
| 107 | Transax conversion flag: Computer Generated | TRX_FLG| |parameter[transaxConversion].value  | codeable | [TransaxConversionVS] | 
{: .grid }
{% include markdown-link-references.md %}
