### Usage

   Additional information on Record Axis Cause of death can be found in the case of multiple causes of death can be found in this CDC [publication](https://www.cdc.gov/nchs/data/dvs/Multiple-Cause-Record-Layout-2020.pdf)
.  Previously a subset of records classified to ICD-10 CHAPTER XV - Pregnancy, childbirth and the puerperium (O00-O99) were flagged by the presence of a '1' in the 5th position of the 2nd condition (position = 2).
These are instances where a decedent < 45 years of age has been classified as a maternal
death using input from the information entered in the [DecedentPregnancyStatus], and the 2nd condition represents the cause of death
to which the given record would be classified had the causes of death been processed without [National Vital Statistics Reports Volume 69, Number 2 January, 2020 (cdc.gov)](https://www.cdc.gov/nchs/data/nvsr/nvsr69/nvsr69-02-508.pdf).


In the FHIR encoding, in lieu of using the 5th position of the ICD10 code, a flag has been added to each Record Cause of Death condition that should be set to true in these cases, and should be absent or false elsewhere.
* insert RequireMetaProfile(Profile: RecordAxisCauseOfDeath)

| **#** |  **Description**   |  **IJE Name**   | IJE only |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | ------------- | ------------ | :----------: |---------- | -------- | -------- |
| 108 | Record-axis codes | RAC| |Each entry is a 3-tuple (value, component[position], component[WouldBeUnderlyingCauseOfDeathWithoutPregnancy]) | codeable | [ICD10CausesOfDeathVS] | 
{: .grid }
{% include markdown-link-references.md %}
