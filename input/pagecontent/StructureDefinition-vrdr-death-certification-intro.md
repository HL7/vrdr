### Usage
The Death Certification profile includes:

| **Name** |  **Field**   |  **Encoding**  |  **IJE Field Name(s)**  |
| ---------------| ------------------------ | ------------- | ------------------- |
| Certifier Date Signed | performed | dateTime | CERTDATE |
| Certifier Role | performer.function (note that if value is "OTH" then performed.function.text should contain 'Full Text for Other Individual Legally Allowed to Certify') | [CertifierTypesVS] | CERTL **library doesn't handle OTH case** |
| Certifier  | performer  | Reference to the Certifier | see the [Certifier] profile|
{: .grid }


### Conformance

{% include markdown-link-references.md %}
