* Death Messages (EDRS->Jurisdiction)
  * [DeathRecordSubmissionMessage] -same as update, just different header flags
    * [DeathRecordSubmissionHeader]
    * [DeathMessageParameters]
  * [DeathRecordUpdateMessage] -same as submission, just different header flags
    * [DeathRecordUpdateHeader]
    * [DeathMessageParameters]
  * [DeathRecordVoidMessage]
    * [DeathRecordVoidHeader]
    * [DeathRecordVoidParameters]
* Coding Messages (NCHS->Jurisdiction)
  * [CodingMessage]
    * [CodingMessageHeader]
    * [CodingMessageParameters]
  * [CodingUpdateMessage] - not yet implemented
    * [CodingUpdateMessageHeader] - not yet implemented
    * [CodingMessageParameters]
* [AcknowledgementMessage] (Both directions)
  * [AcknowledgementMessageHeader]
  * [DeathMessageParameters]
* [ExtractionErrorMessage] (NCHS->Jurisdiction)
  * [ExtractionErrorHeader]
  * [DeathMessageParameters] - optional
  {% include markdown-link-references.md %}