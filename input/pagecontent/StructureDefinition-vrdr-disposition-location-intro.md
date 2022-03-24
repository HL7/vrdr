### Usage


| **#** |  **Description**   |  **IJE Name**   |  **Field**  |  **Type**  | **Value Set**  |
| ---------| ------------- | ------------ | -------------- | -------- | -------- |
| 129 | Death Institution name | DINSTI| name | string  |  | 
| 202 | State, U.S. Territory or Canadian Province of Disposition - code | DISPSTATECD| address.state | string | [StatesTerritoriesProvincesVS] | 
| 203 | Disposition State or Territory - Literal | DISPSTATE| address.state | string | [StatesTerritoriesProvincesVS] | 
| 204 | Disposition City - Code | DISPCITYCODE| address.city.extension[ cityCode].value | integer |  | 
| 205 | Disposition City - Literal | DISPCITY| address.city | string |  | 
{: .grid }
{% include markdown-link-references.md %}
