### Usage
The Injury Incident profile includes:

| **Name** |  **Field**   |  **Encoding**  |  **IJE Field Name(s)**  |
| ---------------| ------------------------ | ------------- | ------------------- |
| Place of Injury - literal  | component[placeOfInjury].value.text | string | POILTRL |
| Place of Injury  - code | component[placeOfInjury].value | [PlaceOfInjuryVS] | INJPL **supported by library?** |
| Injury at Work  | component[InjuryAtWork].value  | [YesNoUnknownVS] | WORKINJ  |
{: .grid }


### Conformance

{% include markdown-link-references.md %}
