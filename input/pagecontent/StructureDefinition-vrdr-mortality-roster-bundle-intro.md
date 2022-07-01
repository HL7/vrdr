### Usage


There are some discrepancies that between roster and IJE field names, that are noted in the table below.
See the [MortalityRosterDataDictionary] for full content of the Mortality Register.

| **#** |  **Description**   |  **Roster Name** |  **IJE Name**  |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | --------------- | ------------ | ---------- |  ---------- | ---------- | -------------- |
| NA | Death Record Identifier | *NO IJE MAPPING*|| identifier.value | string(12) | YYYYJJNNNNNN,  YYYY = death year JJ = jurisdiction  and NNNNNN = certificate number | 
| 15 | State File Number | FILENO|| identifier.extension[ certificateNumber].value | string(6) | - | 
| 33 | Alias Record Flag | ALIAS|| meta.extension[aliasStatus].value | boolean |  | 
| 34 | Replacement Record Flag | REPLACE|| meta.extension[replaceStatus].value | codeable | [ReplaceStatusVS] | 
{: .grid }
{% include markdown-link-references.md %}
