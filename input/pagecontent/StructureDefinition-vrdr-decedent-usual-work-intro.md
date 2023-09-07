### Usage
Implementors are free to use the coded fields with the defined valuesets for inter-jurisdictional exchange,
  but coded values are not expected for death certificate submission. The underlying profile requires coded
  values for validity, so a null flavor value can be used as in Example1. Similarly the effective period is required,
  and null flavor values can be substituted.  These constraints are expected to be relaxed in the ODH Usual Work profile prior
  to VRDR publication.

  Note that the coded industry and occupation fields are bound to PHINVADs-hosted value sets.  These are the only PHINVADs
  references in this IG.  For NCHS provided coded values the specific vocabulary used will depend on the death year.

| **#** |  **Description**   |  **IJE Name**   | IJE only |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | ------------- | ------------ | :----------: |---------- | -------- | -------- |
| 84 | Occupation -- Literal  | OCCUP| |value.text | string(40) | - | 
| 86 | Industry -- Literal  | INDUST| |component [ odh-UsualIndustry	].value.text | string(40) | - | 
| 94 | Occupation -- 4 digit Code  | OCCUPC4| |valueCodeableConcept.coding[occupationCDCCensus2018]  | codeable | [PHVS_Occupation_CDC_Census2018VS] | 
| 95 | Industry -- 4 digit Code | INDUSTC4| |component[odh-UsualIndustry].valueCodeableConcept.coding[industryCDCCensus2018]  | codeable | [PHVS_Industry_CDC_Census2018VS] | 
{: .grid }
{% include markdown-link-references.md %}
