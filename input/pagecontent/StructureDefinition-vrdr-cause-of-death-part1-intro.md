### Usage

Cause of Death Part 1 profile captures the following values:


| **Name** |  **Field**   |  **Encoding**  |  **IJE Field Name(s)**  |
| ---------------| ------------------------ | ------------- | ------------------- |
| Cause of Death Part 1, Line a,b,c,d   |     value.text(120)  | string | COD1A,COD1B,COD1C,COD1D  |
| Cause of Death Part 1, Interval Line a,b,c,d  | component[$loinc#69440-6].value  |string (20) | INTERVAL1A,INTERVAL1B,INTERVAL1C,INTERVAL1D  |
| Certifier  | performer  | Reference to the Certifier | see the [Certifier] profile|
{: .grid }

Up to 4 causes of death are referenced in the [CauseOfDeathPathway] list.




{% include markdown-link-references.md %}
