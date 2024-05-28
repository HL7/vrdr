### Usage
This profile is used to provide the coded Place of Injury.  The Observation.value must provide a value from [PlaceOfInjuryVS] which corresponds to 
  the TRX codes provided by NCHS.  In addition, backwards compatibility with the SuperMICAR places
  of injury is supported with an optional code from the [PlaceOfInjuryOtherVS] valueset, which corresponds to additional place values.   The SuperMICAR value
  should only be provided when the coded place is 'Other'.  This backwards compatibility is provided for the convenience of jurisdictions.
  NCHS does not generate SuperMICAR codes.

| **#** |  **Description**   |  **IJE Name**   | IJE only |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | ------------- | ------------ | :----------: |---------- | -------- | -------- |
| 103 | Place of Injury (computer generated) | INJPL| |value | codeable | a code from [PlaceOfInjuryVS] is required, an optional code from [PlaceOfInjuryOtherVS] can also be provided. | 
{: .grid }
{% include markdown-link-references.md %}
