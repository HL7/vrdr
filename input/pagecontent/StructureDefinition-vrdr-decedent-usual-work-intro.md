### Usage
Implementors are free to use the coded fields with the defined valuesets, but coded values are not expected for death certificate submission.

| **#** |  **Description**   |  **IJE Name**   | IJE only |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | ------------- | ------------ | :----------: |---------- | -------- | -------- |
| 84 | Occupation -- Literal  | OCCUP| |value.text | string(40) | - | 
| 86 | Industry -- Literal  | INDUST| |component [ odh-UsualIndustry	].value.text | string(40) | - | 
| 94 | Occupation -- 4 digit Code (OPTIONAL) | OCCUPC4| |valueCodeableConcept.coding[occupationCDCCensus2010] | codeable | [PHVS_Occupation_CDC_Census2010VS] | 
| 95 | Industry -- 4 digit Code (OPTIONAL) | INDUSTC4| |component[odh-UsualIndustry].valueCodeableConcept.coding[industryCDCCensus2010] | codeable | [PHVS_Industry_CDC_Census2010VS] | 
{: .grid }
{% include markdown-link-references.md %}
