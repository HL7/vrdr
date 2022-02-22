### Usage


| **Name** |  **Field**   |  **Encoding**  |  **IJE Field Name(s)**  |
| ---------------| ------------------------ | ------------- | ------------------- |
| Death Jurisdiction   | extension[ nationalJurisdictionId].value        | [JurisdictionVS] | jurisdictionID |
| State, U.S. Territory or Canadian Province of Death - code | [StatesTerritoriesProvincesVS] | DSTATE |
| City of Death  | address.city.extension[ cityCode].value  | 5 Digit Place code (reference) | CITYCODE_D  |
| County of Death  | address.district.extension[ districtCode].value  | 3 Digit County code (reference) | COD  |
| Country of Death - Literal  | address.country  | string | DTHCOUNTRY ??  |
| County of Death Code | address.country.extension[ countryCode].value  | [ResidenceCountryVS] | DTHCOUNTRYCD ?? |
| PlaceOfDeath  | code  | [PlaceOfDeathVS] | DPLACE  |
| Death Location (latitude) | position.latitude | float | LAT_D |
| Death Location (longitude) | position.longitude | float | LONG_D |
| Death Location - address  | address.line  | string | ADDRESS_D  |
| Death Location - City  | address.city  | string | CITYTEXT_D  |
| Death Location - County  | address.district  | string | COUNTYTEXT_D  |
| Death Location - Zipcode  | address.postalCode | string | ZIP9_D  |
{: .grid }


### Conformance

{% include markdown-link-references.md %}
