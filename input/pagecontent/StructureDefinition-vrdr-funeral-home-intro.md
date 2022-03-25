### Usage


| **#** |  **Description**   |  **IJE Name**   |  **Field**  |  **Type**  | **Value Set**  |
| ---------| ------------- | ------------ | -------------- | -------- | -------- |
| 206 | Funeral Facility Name | FUNFACNAME| name | string |  | 
| 207 | Funeral Facility - Street number | FUNFACSTNUM| address.extension[stnum] | string |  | 
| 208 | Funeral Facility - Pre Directional | FUNFACPREDIR| address.extension[predir] | string |  | 
| 209 | Funeral Facility - Street name | FUNFACSTRNAME| address.extension[stname] | string |  | 
| 210 | Funeral Facility - Street designator | FUNFACSTRDESIG| address.extension[stdesig] | string |  | 
| 211 | Funeral Facility - Post Directional | FUNPOSTDIR| address.extension[postdir] | string |  | 
| 212 | Funeral Facility - Unit or apt number | FUNUNITNUM| address.extension[unitnum] | string |  | 
| 213 | Long string address for Funeral Facility same as above but allows states to choose the way they capture information. | FUNFACADDRESS| address.line | string | address.line  | 
| 214 | Funeral Facility - City or Town name | FUNCITYTEXT| address.city | string | address.city  | 
| 215 | State, U.S. Territory or Canadian Province of Funeral Facility - code | FUNSTATECD| address.state | string | [StatesTerritoriesProvincesVS] | 
| 216 | State, U.S. Territory or Canadian Province of Funeral Facility - literal | FUNSTATE| address.state. (expanded from code) | string | [StatesTerritoriesProvincesVS] | 
| 217 | Funeral Facility - ZIP | FUNZIP| address.postalCode | string |  | 
{: .grid }
{% include markdown-link-references.md %}
