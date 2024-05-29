### Usage


| **#** |  **Description**   |  **IJE Name**   | IJE only |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | ------------- | ------------ | :----------: |---------- | -------- | -------- |
| 206 | Funeral Facility Name | FUNFACNAME| x|name | string | - | 
| 207 | Funeral Facility - Street number | FUNFACSTNUM| x|address.extension[stnum] | string | - | 
| 208 | Funeral Facility - Pre Directional | FUNFACPREDIR| x|address.extension[predir] | string | - | 
| 209 | Funeral Facility - Street name | FUNFACSTRNAME| x|address.extension[stname] | string | - | 
| 210 | Funeral Facility - Street designator | FUNFACSTRDESIG| x|address.extension[stdesig] | string | - | 
| 211 | Funeral Facility - Post Directional | FUNPOSTDIR| x|address.extension[postdir] | string | - | 
| 212 | Funeral Facility - Unit or apt number | FUNUNITNUM| x|address.extension[unitnum] | string | - | 
| 213 | Long string address for Funeral Facility same as above but allows states to choose the way they capture information. | FUNFACADDRESS| x|address.line | string | address.line  | 
| 214 | Funeral Facility - City or Town name | FUNCITYTEXT| x|address.city | string | address.city  | 
| 215 | State, U.S. Territory or Canadian Province of Funeral Facility - code | FUNSTATECD| x|address.state | string | [StatesTerritoriesProvincesVS] | 
| 216 | State, U.S. Territory or Canadian Province of Funeral Facility - literal | FUNSTATE| x|address.state (expanded from 2 letter code) | string | See [StateLiterals] | 
| 217 | Funeral Facility - ZIP | FUNZIP| x|address.postalCode | string | - | 
{: .grid }
{% include markdown-link-references.md %}
