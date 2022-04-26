### Usage

  Note:
  * The DeathCertification.performed and DeathCertificateDocument.attester.time should both be set to the death certification time.

  The Death Certification profile includes:

| **#** |  **Description**   |  **IJE Name**   | IJE only |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | ------------- | ------------ | :----------: |---------- | -------- | -------- |
| 119 | Title of Certifier | CERTL| |performer.function (note that if value is "OTH" then performed.function.text should contain 'Full Text for Other Individual Legally Allowed to Certify') | codeable | [CertifierTypesVS] | 
| 235 | Certifier Date Signed | CERTDATE| x|performed | dateTime | - | 
{: .grid }
{% include markdown-link-references.md %}
