### Usage


| **#** |  **Description**   |  **IJE Name**   | IJE only |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | ------------- | ------------ | :----------: |---------- | -------- | -------- |
| 114 | Date of injury--month | DOI_MO| x|effective | dateTime | See [PartialDatesAndTimes] | 
| 115 | Date of injury--day | DOI_DY| x|effective | dateTime | See [PartialDatesAndTimes] | 
| 116 | Date of injury--year | DOI_YR| x|effective | dateTime | See [PartialDatesAndTimes] | 
| 117 | Time of injury | TOI_HR| x|effective | dateTime | See [PartialDatesAndTimes] | 
| 118 | Injury at work | WORKINJ| x|component[InjuryAtWork].value | codeable | [YesNoUnknownNotApplicableVS] | 
| 126 | Time of Injury Unit | TOI_UNIT| x|effective | dateTime | See [PartialDatesAndTimes] | 
| 173 | Place of Injury- literal | POILITRL| x|component[placeOfInjury].value.text | string |  | 
| 174 | Describe How Injury Occurred | HOWINJ| x|value.text | string |  | 
| 237 | State, U.S. Territory or Canadian Province of Injury - literal | STINJURY| x|address.state (expanded from 2 letter code) | string | [StatesTerritoriesProvincesVS] | 
{: .grid }
{% include markdown-link-references.md %}
