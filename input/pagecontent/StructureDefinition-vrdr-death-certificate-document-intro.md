### Usage
The Death Certificate is a Bundle document that contains the [DeathCertificate] Composition and the other instances comprising the content of the death record.

  Notes:
  * The DeathCertification.performed and DeathCertificateDocument.attester.time should both be set to the death certification time.
  * THe DeathCertificate is the first entry in the DeathCertificateDocument, and includes references to other entries in that Bundle.
  * The unique record identifier for every record consistes of YYYYJJFFFFFF, where YYYY is the year, JJ is the two character jurisdiction code, and FFFFFF is the six digit death certificate number.

In addition to  the [DeathCertificate] Composition it includes the following content:

| **#** |  **Description**   |  **IJE Name**   | IJE only |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | ------------- | ------------ | :----------: |---------- | -------- | -------- |
| NA | Death Record Identifier | *NO IJE MAPPING*| |identifier.value | string(12) | YYYYJJNNNNNN,  YYYY = death year JJ = jurisdiction  and NNNNNN = certificate number | 
| 3 | Certificate Number | FILENO| |identifier.extension[ certificateNumber].value | string(6) | - | 
| 5 | Auxiliary State file number | AUXNO| |identifier.extension[auxiliaryStateIdentifier1].value | string(12) | - | 
| 121 | Auxiliary State file number | AUXNO2| |identifier.extension[auxiliaryStateIdentifier2].value | string(12) | - | 
{: .grid }
{% include markdown-link-references.md %}
