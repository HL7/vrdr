### Usage
The Death Certificate is a Bundle document that contains the [DeathCertificate] Bundle.

                         Note that the unique record identifier for every record consistes of YYYYJJFFFFFF, where YYYY is the year, JJ is the two character jurisdiction code, and FFFFFF is the six digit death certificate number.

                         In addition to  the [DeathCertificate] Bundle it includes the following content:
                         

| **#** |  **Description**   |  **IJE Name**   |  **Field**  |  **Type**  | **Value Set**  |
| ---------| ------------- | ------------ | -------------- | -------- | -------- |
| 3 | Certificate Number | FILENO| identifier.value | string(6) |  | 
| 5 | Auxiliary State file number | AUXNO| identifier.extension[auxiliaryStateIdentifier1].value | string(12) |  | 
| 121 | Auxiliary State file number | AUXNO2| identifier.extension[auxiliaryStateIdentifier2].value | string(12) |  | 
{: .grid }
{% include markdown-link-references.md %}
