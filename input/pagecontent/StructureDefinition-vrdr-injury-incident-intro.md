### Usage


| **#** |  **Description**   |  **IJE Name**   | IJE only |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | ------------- | ------------ | :----------: |---------- | -------- | -------- |
| 114 | Date of injury--month | DOI_MO| |effective | dateTime | See [PartialDatesAndTimes] | 
| 115 | Date of injury--day | DOI_DY| |effective | dateTime | See [PartialDatesAndTimes] | 
| 116 | Date of injury--year | DOI_YR| |effective | dateTime | See [PartialDatesAndTimes] | 
| 117 | Time of injury | TOI_HR| |effective | dateTime | See [PartialDatesAndTimes] | 
| 118 | Injury at work | WORKINJ| |component[InjuryAtWork].value | codeable | [YesNoUnknownNotApplicableVS] | 
| 126 | Time of Injury Unit | TOI_UNIT| |effective | implicit |  | 
| 173 | Place of Injury- literal | POILITRL| |component[ placeOfInjury ].value.text | string | - | 
| 174 | Describe How Injury Occurred | HOWINJ| |value.text | string | - | 
| 175 | If Transportation Accident, Specify | TRANSPRT| |component[ transportationRole ].value.  (if value.code = OTH) the role should be specified in value.text) | codeable | [TransportationIncidentRoleVS] | 
{: .grid }
{% include markdown-link-references.md %}
