### Usage

  * Coded Content
    * [ActivityAtTimeOfDeath]
    * [AutomatedUnderlyingCauseOfDeath]
    * [ManualUnderlyingCauseOfDeath]
    * [CodedRaceAndEthnicity]
    * [EntityAxisCauseOfDeath]
    * [RecordAxisCauseOfDeath]
    * [PlaceOfInjury]
    * [CodingStatusValues]
    

| **#** |  **Description**   |  **IJE Name**   | IJE only |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | ------------- | ------------ | :----------: |---------- | -------- | -------- |
| 91 | NCHS USE ONLY: Receipt date -- Year | R_YR| |parameter[receiptDate].value | date | See [PartialDatesAndTimes] | 
| 92 | NCHS USE ONLY: Receipt date -- Month | R_MO| |parameter[receiptDate].value | date | See [PartialDatesAndTimes] | 
| 93 | NCHS USE ONLY: Receipt date -- Day | R_DY| |parameter[receiptDate].value | date | See [PartialDatesAndTimes] | 
| 101 | Intentional Reject  | INT_REJ| |parameter[intentionalReject].value | codeable | [IntentionalRejectVS] | 
| 102 | Acme System Reject Codes | SYS_REJ| |parameter[acmeSystemReject].value  | codeable | [ACMESystemRejectVS] | 
| 107 | Transax conversion flag: Computer Generated | TRX_FLG| |parameter[transaxConversion].value  | codeable | [TransaxConversionVS] | 
{: .grid }
{% include markdown-link-references.md %}
