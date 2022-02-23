### Usage
The Disposition Location profile contains the following information:

| **Name** |  **Field**   |  **Encoding**  |  **IJE Field Name(s)**  |
| ---------------| ------------------------ | ------------- | ------------------- |
| State, U.S. Territory or Canadian Province of Disposition - literal| address.state | string | DISPSTATE |
| State, U.S. Territory or Canadian Province of Disposition - code | address.state  | [StatesTerritoriesAndProvincesVS] | DISPSTATECD |
| City of Disposition - literal | address.city | string | DISPCITY |
| City of Disposition - code |  <none> | 5 Digit Place code (reference) | DISPCITYCD  **not supported by library or IG ** |
| Death Institution name | name | string | DINSTI |
{: .grid }


### Conformance

{% include markdown-link-references.md %}