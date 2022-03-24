### Usage


| **#** |  **Description**   |  **IJE Name**   |  **Field**  |  **Type**  | **Value Set**  |
| ---------| ------------- | ------------ | -------------- | -------- | -------- |
| 114 | Date of injury--month | DOI_MO| effective | dateTime |  | 
| 115 | Date of injury--day | DOI_DY| effective | dateTime |  | 
| 116 | Date of injury--year | DOI_YR| effective | dateTime |  | 
| 117 | Time of injury | TOI_HR| effective | dateTime |  | 
| 118 | Injury at work | WORKINJ| component[InjuryAtWork].value | codeable | [YesNoUnknownNotApplicableVS] | 
| 126 | Time of Injury Unit | TOI_UNIT| effective | dateTime |  | 
| 173 | Place of Injury- literal | POILITRL| component[placeOfInjury].value.text | string |  | 
| 174 | Describe How Injury Occurred | HOWINJ| value.text | string |  | 
| 237 | State, U.S. Territory or Canadian Province of Injury - literal | STINJURY| address.state (expanded from 2 letter code) | string | [StateTerritoryProvinceVS] | 
{: .grid }
{% include markdown-link-references.md %}
