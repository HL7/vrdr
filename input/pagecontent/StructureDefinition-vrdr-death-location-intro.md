### Usage
Note: STNUM_D, PREDIR_D, POSTDIR_D, STDESIG_D, STNAM_D are marked as '?'

| **Name** |  **Field**   |  **Encoding**  |  **IJE Field Name(s)**  |
| ---------------| ------------------------ | ------------- | ------------------- |
| Death Jurisdiction   | extension[ nationalJurisdictionId].value        | [JurisdictionVS] | jurisdictionID |
| State, U.S. Territory or Canadian Province of Death - code | address.state | [StatesTerritoriesProvincesVS] | DSTATE |
| Place of death. City FIPS code | address.city.extension[ cityCode].value  | 5 Digit Place code (reference) | CITYCODE_D  |
| Place of death. County of Death  | address.district.extension[ districtCode].value  | 3 Digit County code (reference) | COD  |
| Country of Death - Literal  | address.country  | string | DTHCOUNTRY ??  |
| Country of Death - Code | address.country.extension[ countryCode].value  | [ResidenceCountryVS] | DTHCOUNTRYCD |
| Long String address for place of death  | address.line  | string | ADDRESS_D  |
| Place of Death  | code  | [PlaceOfDeathVS] | DPLACE  |
| Place of death. Latitude | position.latitude | float | LAT_D |
| Place of death. Longitude | position.longitude | float | LONG_D |
| Place of death. City or Town name  | address.city  | string | CITYTEXT_D  |
| Place of death. County of Death  | address.district  | string | COUNTYTEXT_D  |
| Place of death. State name literal  | address.postalCode | string | ZIP9_D  |
{: .grid }


### Conformance

{% include markdown-link-references.md %}
