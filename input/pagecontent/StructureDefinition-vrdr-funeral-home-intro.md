### Usage
The Funeral Home profile contains the following information:

| **Name** |  **Field**   |  **Encoding**  |  **IJE Field Name(s)**  |
| ---------------| ------------------------ | ------------- | ------------------- |
| Funeral Facility Name| name | string | FUNFACNAME |
| Funeral Facility Address | address.text  | string | FUNFACADDRESS |
| Funeral Home Address  | address.line  | string | FUNADDRESS  |
| Funeral Home - City  | address.city  | string | FUNCITYTEXT  |
| State, U.S. Territory or Canadian Province of Certifier - code | address.state | [StateTerritoryProvinceVS] | FUNSTATECD |
| State, U.S. Territory or Canadian Province of Certifier - literal | address.state | string | FUNSTATE |
| Funeral Home Zip | address.postalcode | string | FUNZIP |
| Funeral Home Address(predirectional) | address.extension[predir]  | string | FUNPREDIR  |
| Funeral Home Address(street number) | address.extension[stnum]  | string | FUNSTNUM  |
| Funeral Home Address(street name) | address.extension[stname]  | string | FUNSTNAME  |
| Funeral Home Address(street designator) | address.extension[stdesig]  | string | FUNSTDESIG  |
| Funeral Home Address(postdirectional) | address.extension[postdir]  | string | FUNPOSTDIR  |
| Funeral Home Address(unit number) | address.extension[unitnum]  | string | FUNUNITNUM  |
{: .grid }


### Conformance

{% include markdown-link-references.md %}
