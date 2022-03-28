### Usage


| **#** |  **Description**   |  **IJE Name**   |  **Field**  |  **Type**  | **Value Set**  |
| ---------| ------------- | ------------ | -------------- | -------- | -------- |
| 176 | County of Injury - literal | COUNTYTEXT_I| address.district | string |  | 
| 177 | County of Injury code | COUNTYCODE_I| address.district.extension[ countyCode].value | integer | see [CountyCodes] | 
| 178 | Town/city of Injury - literal | CITYTEXT_I| address.city | string |  | 
| 179 | Town/city of Injury code | CITYCODE_I| address.city.extension[ cityCode].value | integer | see [CityCodes] | 
| 180 | State, U.S. Territory or Canadian Province of Injury - code | STATECODE_I| address.state | string | [StatesTerritoriesProvincesVS] | 
| 181 | Place of injury. Longitude | LONG_I| position.longitude | float |  | 
| 182 | Place of injury. Latitude | LAT_I| position.latitude | float |  | 
{: .grid }
{% include markdown-link-references.md %}
