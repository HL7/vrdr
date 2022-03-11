### Usage
The Certifier profile includes:

| **Name** |  **Field**   |  **Encoding**  |  **IJE Field Name(s)**  |
| ---------------| ------------------------ | ------------- | ------------------- |
| Certifier's First Name | name.given | string | CERTFIRST |
| Certifier's Middle Name | name.given | string | CERTMIDDLE |
| Certifier's Last Name | name.family | string | CERTLAST |
| Certifier's Name Suffidx | name.suffix | string | CERTSUFFIX |
| Certifier's Address(  | address.line  | string | CERTADDRESS  |
| Certifier's - City  | address.city  | string | CERTCITYTEXT  || State, U.S. Territory or Canadian Province of Certifier - code | address.state | [StateTerritoryProvinceVS] | CERTSTATECD |
| State, U.S. Territory or Canadian Province of Certifier - literal | address.state | string | CERTSTATE |
| Certifier Zip | address.postalcode | string | CERTZIP |
| Certifier's Address((predirectional) | address.extension[predir]  | string | CERTPREDIR  |
| Certifier's Address((street number) | address.extension[stnum]  | string | CERTSTNUM  |
| Certifier's Address((street name) | address.extension[stname]  | string | CERTSTNAME  |
| Certifier's Address((street designator) | address.extension[stdesig]  | string | CERTSTDESIG  |
| Certifier's Address((postdirectional) | address.extension[postdir]  | string | CERTPOSTDIR  |
| Certifier's Address((unit number) | address.extension[unitnum]  | string | CERTUNITNUM  |
{: .grid }


### Conformance

{% include markdown-link-references.md %}
