### Usage
The Place of Injury profile includes:

| **Name** |  **Field**   |  **Encoding**  |  **IJE Field Name(s)**  |
| ---------------| ------------------------ | ------------- | ------------------- |
| Injury Location (latitude) | position.latitude | float | LAT_I |
| Injury Location (longitude) | position.longitude | float | LONG_I |
| State of Injury  | address.state  | string  | STINJURY, STATECODE_I  |
| County of Injury  | address.district  | string  | COUNTYTEXT_I  |
| County of Injury  | <none> | 3 Digit County code (reference) | COUNTYCODE_I |
| City of Injury  | address.city  | string | CITYTEXT_I |
| City of Injury  | <none>  | 5 Digit Place code (reference) | CITYCODE_I  |
{: .grid }


### Conformance

{% include markdown-link-references.md %}
