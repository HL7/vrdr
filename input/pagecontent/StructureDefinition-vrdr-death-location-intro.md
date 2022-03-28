### Usage


| **#** |  **Description**   |  **IJE Name**   |  **Field**  |  **Type**  | **Value Set**  |
| ---------| ------------- | ------------ | -------------- | -------- | -------- |
| 2 | State, U.S. Territory or Canadian Province of Death - code | DSTATE| address.state or address.state.extension[nationalReportingJurisdictionId ] | codeable | [StatesTerritoriesProvincesVS] or [JurisdictionVS] | 
| 31 | Place of Death | DPLACE| type | codeable | [PlaceOfDeathVS] | 
| 32 | County of Death Occurrence | COD| address.district.extension[countyCode] | integer | see [CountyCodes] | 
| 130 | Long String address for place of death | ADDRESS_D| address.line | string  |  | 
| 131 | Place of death. Street number | STNUM_D| address.extension[stnum] | string |  | 
| 132 | Place of death. Pre Directional | PREDIR_D| address.extension[predir] | string |  | 
| 133 | Place of death. Street name | STNAME_D| address.extension[stname] | string |  | 
| 134 | Place of death. Street designator | STDESIG_D| address.extension[stdesig] | string |  | 
| 135 | Place of death. Post Directional | POSTDIR_D| address.extension[postdir] | string |  | 
| 136 | Place of death. City or Town name | CITYTEXT_D| address.city | string |  | 
| 137 | Place of death. State name literal | STATETEXT_D| address.state | string |  | 
| 138 | Place of death. Zip code | ZIP9_D| address.postalCode | string |  | 
| 139 | Place of death. County of Death | COUNTYTEXT_D| address.district | string |  | 
| 140 | Place of death. City FIPS code | CITYCODE_D| address.city.extension[ cityCode] | integer | see [CityCodes] | 
| 141 | Place of death. Longitude | LONG_D| position.longitude | float |  | 
| 142 | Place of Death. Latitude | LAT_D| position.latitude | float |  | 
| 239 | Country of Death - Code | DTHCOUNTRYCD| address.country  | string  | Not Used.  For US Death certificates should be US | 
| 240 | Country of Death - Literal | DTHCOUNTRY| address.country  | string  | Not used. For US Death certificates should be US | 
{: .grid }
{% include markdown-link-references.md %}
