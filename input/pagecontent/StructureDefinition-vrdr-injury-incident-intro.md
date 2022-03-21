### Usage
The Injury Incident profile includes:

| **Name** |  **Field**   |  **Encoding**  |  **IJE Field Name(s)**  |
| ---------------| ------------------------ | ------------- | ------------------- |
| How Injured?  | value.text  | string | HOWINJ  |
| Date of Injury | effective | dateTime | DOI_YR, DOI_MO, DOI_DY, TOI_HR, TOI_UNIT |
| Place of Injury - literal  | component[placeOfInjury].value.text | string | POILTRL |
| Injury at Work  | component[InjuryAtWork].value  | [YesNoUnknownNotApplicableVS] | WORKINJ  |
{: .grid }


### Conformance

{% include markdown-link-references.md %}
