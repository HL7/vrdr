### Usage

The Decedent Age profile contains the following information:


| **Name** |  **Field**   |  **Encoding**  |  **IJE Field Name(s)**  |
| ---------------| ------------------------ | ------------- | ------------------- |
| Decedent Age   | valueQuantity.value  | decimal  | AGE  |
| Decedent Age (units)   | valueQuantity.system  | [UnitsOfAgeVS] | AGETYPE  |
| Age Edit Bypass FLag | value.extension[BypassEditFlag].value | [EditBypass01VS] | AGE_BYPASS  -- if extension not specified, blank   |
{: .grid }


### Conformance


{% include markdown-link-references.md %}
