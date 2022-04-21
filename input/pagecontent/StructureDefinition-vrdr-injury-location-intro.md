### Usage


| **#** |  **Description**   |  **IJE Name**   | IJE only |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | ------------- | ------------ | :----------: |---------- | -------- | -------- |
| 176 | County of Injury - literal | COUNTYTEXT_I| x|address.district | string | - | 
| 177 | County of Injury code | COUNTYCODE_I| x|address.district.extension[ countyCode].value | integer | see [CountyCodes] | 
| 178 | Town/city of Injury - literal | CITYTEXT_I| x|address.city | string | - | 
| 179 | Town/city of Injury code | CITYCODE_I| x|address.city.extension[ cityCode].value | integer | see [CityCodes] | 
| 180 | State, U.S. Territory or Canadian Province of Injury - code | STATECODE_I| x|address.state | string | [StatesTerritoriesProvincesVS] | 
| 181 | Place of injury. Longitude | LONG_I| x|position.longitude | float | - | 
| 182 | Place of injury. Latitude | LAT_I| x|position.latitude | float | - | 
| 237 | State, U.S. Territory or Canadian Province of Injury - literal | STINJURY| x|address.state (expanded from 2 letter code) | string | See [StateLiterals] | 
{: .grid }
{% include markdown-link-references.md %}
