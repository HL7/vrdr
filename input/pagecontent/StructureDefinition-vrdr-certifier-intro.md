### Usage
The Certifier profile includes:

| **Name** |  **Field**   |  **Encoding**  |  **IJE Field Name(s)**  |
| ---------------| ------------------------ | ------------- | ------------------- |
| Certifier's First Name | name.given | string | CERTFIRST |
| Certifier's Middle Name | name.given | string | CERTMIDDLE |
| Certifier's Last Name | name.family | string | CERTLAST |
| Certifier's Name Suffidx | name.suffix | string | CERTSUFFIX |
| Certifier Address Components | address | string | CERTSTNUM, CERTPREDIR, CERTSTRNAME, CERTCITYTEXT, CERTSTRDESIG, CERTUNITNUM **not supported by library** |
| State, U.S. Territory or Canadian Province of Certifier - code | address.state | [StateTerritoryProvinceVS] | CERTSTATECD |
| State, U.S. Territory or Canadian Province of Certifier - literal | address.state | string | CERTSTATE |
| Certifier Zip | address.postalcode | string | CERTZIP |
{: .grid }


### Conformance

{% include markdown-link-references.md %}
