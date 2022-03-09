### Usage

The Decedent Transportation Role profile contains the following information:


| **Name** |  **Field**   |  **Encoding**  |  **IJE Field Name(s)**  |
| ---------------| ------------------------ | ------------- | ------------------- |
| If Transportation Accident, Specify   | value  | [TransportationIncidentRoleVS]  | TRANSPRT  |
| If Transportation Accident, Specify   | value.text  | string (if value.code = OTH) the role should be specified in value.text.  | TRANSPRT  |
{: .grid }

In the case where the death was not transportation-related, an instance of this profile would not be included in the deathc certificate.

### Conformance

{% include markdown-link-references.md %}
