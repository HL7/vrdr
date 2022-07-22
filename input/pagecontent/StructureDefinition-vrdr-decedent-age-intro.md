### Usage
The DecedentAge profile of Observation records the decedents age at time of death.

  Notes:
  * When present, the effective date of this observation shall be equal to the decedent's date of death.
  * Age is derived as the difference in time between the decedent's death date and birth date.  Age is an integer value, reported in the largest appropriate unit.
  An age of 1 year and 1 month should be reported as 1 year, not 13 months, or 1.083 years.  Although the FHIR quantity provides a decimal value, only the integer component
  of the value will be used by NCHS.
  * The appropriate units for age are defined here:

  |  Age Range  | Units |
  |:---:|:---:|
  | age < 1 hr | minutes |
  | 1 hr &le; age < 24 hours | hours |
  | 1 day &le; age < 28 days (1 "month") | days |
  | 1 month &le;  age  < 12 months | months |
  | 1 year &le; age &le; 135 | years|
  | age unknown | unknown |
  {: .grid }

  The Decedent Age profile includes:

| **#** |  **Description**   |  **IJE Name**   | IJE only |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | ------------- | ------------ | :----------: |---------- | -------- | -------- |
| 16 | Decedent's Age--Type | AGETYPE| |valueQuantity.code | codeable | [UnitsOfAgeVS] | 
| 17 | Decedent's Age--Units | AGE | |valueQuantity.value | decimal | - | 
| 18 | Decedent's Age--Edit Flag | AGE_BYPASS| |value.extension[BypassEditFlag].value | codeable | [EditBypass01VS] | 
{: .grid }
{% include markdown-link-references.md %}
