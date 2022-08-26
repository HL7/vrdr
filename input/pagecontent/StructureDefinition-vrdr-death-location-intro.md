### Usage


| **#** |  **Description**   |  **IJE Name**   | IJE only |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | ------------- | ------------ | :----------: |---------- | -------- | -------- |
| 2 | State, U.S. Territory or Canadian Province of Death - code | DSTATE| |address.state or address.state.extension[nationalReportingJurisdictionId ] | codeable | [StatesTerritoriesProvincesVS] in state field or [JurisdictionVS] in extension | 
| 32 | County of Death Occurrence | COD| |address.district.extension[countyCode] | integer | see [CountyCodes] | 
| 129 | Death Institution name | DINSTI| x|name | string  | - | 
| 130 | Long String address for place of death | ADDRESS_D| x|address.line | string  | - | 
| 131 | Place of death. Street number | STNUM_D| x|address.extension[stnum] | string | - | 
| 132 | Place of death. Pre Directional | PREDIR_D| x|address.extension[predir] | string | - | 
| 133 | Place of death. Street name | STNAME_D| x|address.extension[stname] | string | - | 
| 134 | Place of death. Street designator | STDESIG_D| x|address.extension[stdesig] | string | - | 
| 135 | Place of death. Post Directional | POSTDIR_D| x|address.extension[postdir] | string | - | 
| 136 | Place of death. City or Town name | CITYTEXT_D| x|address.city | string | - | 
| 137 | Place of death. State name literal | STATETEXT_D| x|address.state (expanded from 2 letter code) | string | - | 
| 138 | Place of death. Zip code | ZIP9_D| x|address.postalCode | string | - | 
| 139 | Place of death. County of Death | COUNTYTEXT_D| x|address.district | string | - | 
| 140 | Place of death. City FIPS code | CITYCODE_D| x|address.city.extension[ cityCode] | integer | see [CityCodes] | 
| 141 | Place of death. Longitude | LONG_D| x|position.longitude | float | - | 
| 142 | Place of Death. Latitude | LAT_D| x|position.latitude | float | - | 
| 239 | Country of Death - Code | DTHCOUNTRYCD| x|address.country  | string  | [ResidenceCountryVS].  Note: For US Death certificates should be US | 
| 240 | Country of Death - Literal | DTHCOUNTRY| x|address.country  (expanded from 2 letter code) | string  | See [CountryLIterals].   Not used. For US Death certificates should be 'United States'. | 
{: .grid }
{% include markdown-link-references.md %}
