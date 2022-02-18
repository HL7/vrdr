### Usage

Cause of Death Condition profile captures the following values:


| **Name** |  **Field**   |  **Encoding**  |  **IJE Field Name(s)**  |
| ---------------| ------------------------ | ------------- | ------------------- |
| Cause of Death Part 1, Line a,b,c,d   |     value  | [YesNoUnknownVS] | COD1A,COD1B,COD1C,COD1B  |
| Cause of Death Part 1, Interval Line a,b,c,d  | component[$loinc#69436-4].value  |[YesNoUnknownNotApplicableVS] | INTERVAL1A,INTERVAL1B,INTERVAL1C,INTERVAL1D  |

Up to 4 causes of death are referenced in the [CauseOfDeathPathway] list.
{: .grid }



{% include markdown-link-references.md %}
