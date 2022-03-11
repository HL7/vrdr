### Usage
The Disposition Location profile contains the following information:

| **Name** |  **Field**   |  **Encoding**  |  **IJE Field Name(s)**  |
| ---------------| ------------------------ | ------------- | ------------------- |
| State, U.S. Territory or Canadian Province of Disposition - literal| address.state | string | DISPSTATE |
| State, U.S. Territory or Canadian Province of Disposition - code | address.state  | [StatesTerritoriesProvincesVS] | DISPSTATECD |
| City of Disposition - literal | address.city | string | DISPCITY |
| City of Disposition - code |  address.city.extension[ cityCode].value | 5 Digit Place code (reference) | DISPCITYCODE |
| Death Institution name | name | string | DINSTI |
{: .grid }


### Conformance

{% include markdown-link-references.md %}
