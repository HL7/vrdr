### Usage
Note: STNUM_D, PREDIR_D, POSTDIR_D, STDESIG_D, STNAM_D are marked as '?'

| **Name** |  **Field**   |  **Encoding**  |  **IJE Field Name(s)**  |
| ---------------| ------------------------ | ------------- | ------------------- |
| Death Jurisdiction   | extension[ nationalJurisdictionId].value        | [JurisdictionVS] | jurisdictionID |
| Long String address for place of death  | address.line  | string | ADDRESS_D  |
| Place of Death  | type  | [PlaceOfDeathVS] | DPLACE  |
| Place of death. Latitude | position.latitude | float | LAT_D |
| Place of death. Longitude | position.longitude | float | LONG_D |
| Place of death. City or Town name  | address.city  | string | CITYTEXT_D  |
| Place of death. City FIPS code | address.city.extension[ cityCode].value  | 5 Digit Place code (reference) | CITYCODE_D  |
| Place of death. County of Death - code  | address.district.extension[ districtCode].value  | 3 Digit County code (reference) | COD  |
| Place of death. County of Death - literal | address.district  | string | COUNTYTEXT_D  |
| State, U.S. Territory or Canadian Province of Death - code | address.state | [JurisdictionVS] | DSTATE. For US Death certificates should be a US Jurisdiction. |
| Country of Death - Literal  | address.country  | string | DTHCOUNTRY. Not used.  For US Death certificates should be US  |
| Country of Death - Code | address.country  | [ResidenceCountryVS] | DTHCOUNTRYCD. Not used.  For US Death certificates should be US |
| Place of death. Postal Code  | address.postalCode | string | ZIP9_D  |
{: .grid }


### Conformance

{% include markdown-link-references.md %}
