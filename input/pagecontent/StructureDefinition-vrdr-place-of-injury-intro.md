### Usage
The Place of Injury profile includes:

| **Name** |  **Field**   |  **Encoding**  |  **IJE Field Name(s)**  |
| ---------------| ------------------------ | ------------- | ------------------- |
| Injury Location (latitude) | position.latitude | float | LAT_I |
| Injury Location (longitude) | position.longitude | float | LONG_I |
| State of Injury  | address.state  | string  | STINJURY_I **not supported by IG** |
| County of Injury  | address.district  | string  | CITYTEXT_I **not supported by library or IG** |
| County of Injury  | <none> | 3 Digit County code (reference) | COUNTYCODE_I **not supported by library or IG**|
| City of Injury  | address.city  | string | CITYTEXT_I **not supported by library**|
| City of Injury  | <none>  | 5 Digit Place code (reference) | CITYCODE_I **not supported by library or IG** |
{: .grid }


### Conformance

{% include markdown-link-references.md %}
