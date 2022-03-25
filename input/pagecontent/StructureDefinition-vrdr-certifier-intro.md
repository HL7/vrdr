### Usage
The Certifier profile includes:

| **#** |  **Description**   |  **IJE Name**   |  **Field**  |  **Type**  | **Value Set**  |
| ---------| ------------- | ------------ | -------------- | -------- | -------- |
| 220 | Certifier's First Name | CERTFIRST| name.given  | string |  | 
| 221 | Certifier's Middle Name | CERTMIDDLE| name.given  | string |  | 
| 222 | Certifier's Last Name | CERTLAST| name.family  | string |  | 
| 223 | Certifier's Suffix Name | CERTSUFFIX| name.suffix  | string |  | 
| 224 | Certifier - Street number | CERTSTNUM| address.extension[stnum] | string |  | 
| 225 | Certifier - Pre Directional | CERTPREDIR| address.extension[predir] | string |  | 
| 226 | Certifier - Street name | CERTSTRNAME| address.extension[stname] | string |  | 
| 227 | Certifier - Street designator | CERTSTRDESIG| address.extension[stdesig] | string |  | 
| 228 | Certifier - Post Directional | CERTPOSTDIR| address.extension[postdir] | string |  | 
| 229 | Certifier - Unit or apt number | CERTUNITNUM| address.extension[unitnum] | string |  | 
| 230 | Long string address for Certifier same as above but allows states to choose the way they capture information. | CERTADDRESS| address.line  | string |  | 
| 231 | Certifier - City or Town name | CERTCITYTEXT| address.city  | string |  | 
| 232 | State, U.S. Territory or Canadian Province of Certifier - code | CERTSTATECD| address.state | string | [StatesTerritoriesProvincesVS] | 
| 233 | State, U.S. Territory or Canadian Province of Certifier - literal | CERTSTATE| address.state | string | [StatesTerritoriesProvincesVS] | 
| 234 | Certifier - Zip | CERTZIP| address.postalCode | string |  | 
{: .grid }
{% include markdown-link-references.md %}
