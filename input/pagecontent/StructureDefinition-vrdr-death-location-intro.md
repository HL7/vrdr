### Usage
Note: STNUM_D, PREDIR_D, POSTDIR_D, STDESIG_D, STNAM_D are marked as '?'

| **Name** |  **Field**   |  **Encoding**  |  **IJE Field Name(s)**  |
| ---------------| ------------------------ | ------------- | ------------------- |
| Long String address for place of death  | address.line  | string | ADDRESS_D  |
| Place of death - address(predirectional) | address.extension[predir]  | string | PREDIR_D  |
| Place of death - address(street number) | address.extension[stnum]  | string | STNUM_D  |
| Place of death - address(street name) | address.extension[stname]  | string | STNAM_D |
| Place of death - address(street designator) | address.extension[stdesig]  | string | STDESIG_D  |
| Place of death - address(postdirectional) | address.extension[postdir]  | string | POSTDIR_RD |
| Place of death code  | type  | [PlaceOfDeathVS] | DPLACE  |
| Place of death. Latitude | position.latitude | float | LAT_D |
| Place of death. Longitude | position.longitude | float | LONG_D |
| Place of death. City or Town name  | address.city  | string | CITYTEXT_D  |
| Place of death. City FIPS code | address.city.extension[ cityCode].value  | 5 Digit Place code (reference) | CITYCODE_D  |
| Place of death. County of Death - code  | address.district.extension[ districtCode].value  | 3 Digit County code (reference) | COD  |
| Place of death. County of Death - literal | address.district  | string | COUNTYTEXT_D  |
| State, U.S. Territory or Canadian Province of Death - code | address.state or address.state.extension[| [StatesTerritoriesAndProvincesVS] | DSTATE, STATETEXT_D (expansion of coded value). For US Death certificates should be a US State or Territory. |
| Death Jurisdiction | address.state or address.state.extension[ nationalJurisdictionId].value  if present      | [JurisdictionVS] | jurisdictionID |
| Country of Death - Literal  | address.country  | string | DTHCOUNTRY. Not used.  For US Death certificates should be US  |
| Country of Death - Code | address.country  | [ResidenceCountryVS] | DTHCOUNTRYCD. Not used.  For US Death certificates should be US |
| Place of death. Postal Code  | address.postalCode | string | ZIP9_D  |
{: .grid }


### Conformance

{% include markdown-link-references.md %}
