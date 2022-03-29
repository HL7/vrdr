### Usage
The Autopsy Performed Indicator profile captures the following values:

| **#** |  **Description**   |  **IJE Name**   | IJE only |  **Field**  |  **Type**  | **Value Set**  |
| ---------| ------------- | ------------ | ---------- |---------- | -------- | -------- |
| 109 | Was Autopsy performed | AUTOP| |value | codeable | [YesNoUnknownVS] | 
| 110 | Were Autopsy Findings Available to Complete the Cause of Death? | AUTOPF| |component[$loinc#69436-4].value | codeable | [YesNoUnknownNotApplicableVS] | 
{: .grid }
{% include markdown-link-references.md %}
