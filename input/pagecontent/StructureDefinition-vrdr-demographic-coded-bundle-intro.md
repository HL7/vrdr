### Usage

  This bundle is information-content equivalent to the traditional NCHS MRE format.

  This bundle contains:
  * Coded Content:
    * Coded Race and Ethnicity [CodedRaceAndEthnicity]
  * Input Content:
    * Input Race and Ethnicity - [InputRaceAndEthnicity]
     

| **#** |  **Description**   |  **IJE Name**   | IJE only |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | ------------- | ------------ | :----------: |---------- | -------- | -------- |
| NA | Death Record Identifier | *NO IJE MAPPING*| |identifier.value | string(12) | YYYYJJNNNNNN,  YYYY = death year JJ = jurisdiction  and NNNNNN = certificate number | 
| 3 | Certificate Number | FILENO| |identifier.extension[ certificateNumber].value | string(6) | - | 
| 5 | Auxiliary State file number | AUXNO| |identifier.extension[auxiliaryStateIdentifier1].value | string(12) | - | 
| 121 | Auxiliary State file number | AUXNO2| |identifier.extension[auxiliaryStateIdentifier2].value | string(12) | - | 
{: .grid }
{% include markdown-link-references.md %}
