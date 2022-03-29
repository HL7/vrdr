### Usage
The profile includes a component for the time of death pronouncement that is not currently used for death certificate submission.

  The certificate signing date is passed via the [DeathCertification] profile.

  The death date specifies the date the death occurred, not the date the record was submitted.

  The pronouncer of death can be specified by reference to a USCore Practitioner instance from the 'performer' field.   This instance should be included in the [DeathCertificateDocument] and referenced from the [DeathCertificate].

| **#** |  **Description**   |  **IJE Name**   |  **Field**  |  **Type**  | **Value Set**  |
| ---------| ------------- | ------------ | -------------- | -------- | -------- |
| 1 | Date of Death--Year | DOD_YR| value | dateTime | Required for processing | 
| 34 | Date of Death--Month | DOD_MO| value | dateTime | See [PartialDatesAndTimes] | 
| 35 | Date of Death--Day | DOD_DY| value | dateTime | See [PartialDatesAndTimes] | 
| 36 | Time of Death | TOD| value | dateTime | See [PartialDatesAndTimes] | 
| 218 | Person Pronouncing Date Signed | PPDATESIGNED| component[$loinc#80616-6].value | dateTime |  | 
| 219 | Person Pronouncing Time Pronounced | PPTIME| component[$loinc#80616-6].value | dateTime |  | 
{: .grid }
{% include markdown-link-references.md %}
