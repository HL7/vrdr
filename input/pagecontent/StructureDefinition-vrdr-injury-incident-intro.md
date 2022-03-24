### Usage


| **#** |  **Description**   |  **IJE Name**   |  **Field**  |  **Type**  | **Value Set**  |
| ---------| ------------- | ------------ | -------------- | -------- | -------- |
| 114 | Date of injury--month | DOI_MO| effective | dateTime | See notes on PartialDateTime | 
| 115 | Date of injury--day | DOI_DY| effective | dateTime | See notes on PartialDateTime | 
| 116 | Date of injury--year | DOI_YR| effective | dateTime | See notes on PartialDateTime | 
| 117 | Time of injury | TOI_HR| effective | dateTime | See notes on PartialDateTime | 
| 118 | Injury at work | WORKINJ| component[InjuryAtWork].value | codeable | [YesNoUnknownNotApplicableVS] | 
| 126 | Time of Injury Unit | TOI_UNIT| effective | dateTime | See notes on PartialDateTime | 
| 173 | Place of Injury- literal | POILITRL| component[placeOfInjury].value.text | string |  | 
| 174 | Describe How Injury Occurred | HOWINJ| value.text | string |  | 
| 237 | State, U.S. Territory or Canadian Province of Injury - literal | STINJURY| address.state (expanded from 2 letter code) | string | [StateTerritoryProvinceVS] | 
{: .grid }
{% include markdown-link-references.md %}
