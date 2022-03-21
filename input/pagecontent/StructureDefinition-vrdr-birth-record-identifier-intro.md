### Usage

The BirthRecordIdentifier captures the key identifiers for the Decedent's birth record.
It is relevant only in the case where the birth took place in a recognized jurisdiction.


| **Name** |  **Field**   |  **Encoding**  |  **IJE Field Name(s)**  |
| ---------------| ------------------------ | ------------- | ------------------- |
| Birth Certificate Number   | value        | String (6) | BCNO |
| Birth Jurisdiction   | component[birthJurisdiction].value  | [JurisdictionVS] | BSTATE  |
| Birth Year  | component[birthYear].value  | dateTime (YYYY component) | IDOB_YR  |
{: .grid }


### Conformance

{% include markdown-link-references.md %}
