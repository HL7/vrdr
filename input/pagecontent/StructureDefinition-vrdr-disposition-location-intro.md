### Usage
Implementors are free to use the name field for the name of the disposition location.

| **#** |  **Description**   |  **IJE Name**   |  **Field**  |  **Type**  | **Value Set**  |
| ---------| ------------- | ------------ | -------------- | -------- | -------- |
| 202 | State, U.S. Territory or Canadian Province of Disposition - code | DISPSTATECD| address.state | string | [StatesTerritoriesProvincesVS] | 
| 203 | Disposition State or Territory - Literal | DISPSTATE| address.state | string | [StatesTerritoriesProvincesVS] | 
| 204 | Disposition City - Code | DISPCITYCODE| address.city.extension[ cityCode].value | integer | see [CityCodes] | 
| 205 | Disposition City - Literal | DISPCITY| address.city | string |  | 
{: .grid }
{% include markdown-link-references.md %}
