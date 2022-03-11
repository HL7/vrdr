### Usage

The Death Certificate is a Bundle document that contains the [DeathCertificate] Bundle.
In addition it includes the following content:


| **Name** |  **Field**   |  **Encoding**  |  **IJE Field Name(s)**  |
| ---------------| ------------------------ | ------------- | ------------------- |
| Death Certificate Number   | identifer.value   | String - 6 digit with leading zeroes  | FILENO |
| Auxiliary State Identifier | identifier.extension[auxiliaryStateIdentifier].value  | String - 12 digits with leading zeroes | AUXNO   |
{: .grid }

Note that the unique record identifier for every record consistes of YYYYJJFFFFFF, where YYYY is the year, JJ is the two character jurisdiction code, and FFFFFF is the six digit death certificate number.
{% include markdown-link-references.md %}
