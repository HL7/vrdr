### Usage
This bundle is information-content equivalent to the traditional NCHS TRX format.

  This bundle contains:
  * Coded Content:
    * Activity at Time of Death [ActivityAtTimeOfDeath]
    * Underlying Cause of Death -- [AutomatedUnderlyingCauseOfDeath] and [ManualUnderlyingCauseOfDeath]
    * Entity Axis Cause of Death [EntityAxisCauseOfDeath]
    * Record Axis Cause of Death [RecordAxisCauseOfDeath]
    * Place of Injury [PlaceOfInjury]
    * Coding Status Values [CodingStatusValues] - various flags that are part of the TRX format
  * Input Content:
    * Cause of Death Part 1 - [CauseOfDeathPart1]
    * Cause of Death Part 2 - [CauseOfDeathPart2]
    * Manner of Death - [MannerOfDeath]
    * Autopsy Performed Indicator - [AutopsyPerformedIndicator]
    * Death Certification - [DeathCertification]
    * Injury Incident - [InjuryIncident]
    * Tobacco Use Contributed to Death - [TobaccoUseContributedToDeath]
    * Decedent Pregnancy Status - [DecedentPregnancyStatus]
    * Surgery Date - [SurgeryDate]
     

| **#** |  **Description**   |  **IJE Name**   | IJE only |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | ------------- | ------------ | :----------: |---------- | -------- | -------- |
| NA | Death Record Identifier | *NO IJE MAPPING*| |identifier.value | string(12) | YYYYJJNNNNNN,  YYYY = death year JJ = jurisdiction  and NNNNNN = certificate number | 
| 3 | Certificate Number | FILENO| |identifier.extension[ certificateNumber].value | string(6) | - | 
| 5 | Auxiliary State file number | AUXNO| |identifier.extension[auxiliaryStateIdentifier1].value | string(12) | - | 
| 121 | Auxiliary State file number | AUXNO2| |identifier.extension[auxiliaryStateIdentifier2].value | string(12) | - | 
{: .grid }
{% include markdown-link-references.md %}
