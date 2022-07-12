### Usage
The DecedentAge profile of Observation records the decedents age at time of death.

  Notes:
  * When present, the effective date of this observation shall be equal to the decedent's date of death.
  * Age is derived as the difference in time between the decedent's death date and birth date.
  * The appropriate units for age are defined here:

  |  Age Range  | Units |
  |:---:|:---:|
  | age < 1 hr | minutes |
  | 1 hr &le; age < 24 hours | hours |
  | 1 day &le; age < 28 days (1 "month") | days |
  | 1 month &le;  age  < 12 months | months |
  | 1 year &le; age | years|

| **#** |  **Description**   |  **IJE Name**   | IJE only |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | ------------- | ------------ | :----------: |---------- | -------- | -------- |
| 16 | Decedent's Age--Type | AGETYPE| |valueQuantity.system | codeable | [UnitsOfAgeVS] | 
| 17 | Decedent's Age--Units | AGE | |valueQuantity.value | decimal | - | 
| 18 | Decedent's Age--Edit Flag | AGE_BYPASS| |value.extension[BypassEditFlag].value | codeable | [EditBypass01VS] | 
{: .grid }
{% include markdown-link-references.md %}
