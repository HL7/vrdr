### Usage
Implementors are free to use the name field for the name of the disposition location.

| **#** |  **Description**   |  **IJE Name**   | IJE only |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | ------------- | ------------ | :----------: |---------- | -------- | -------- |
| 202 | State, U.S. Territory or Canadian Province of Disposition - code | DISPSTATECD| x|address.state | string | [StatesTerritoriesProvincesVS] | 
| 203 | Disposition State or Territory - Literal | DISPSTATE| x|address.state (expanded from 2 letter code) | string | See [StateLiterals] | 
| 204 | Disposition City - Code | DISPCITYCODE| x|address.city.extension[ cityCode].value | integer | see [CityCodes] | 
| 205 | Disposition City - Literal | DISPCITY| x|address.city | string | - | 
{: .grid }
{% include markdown-link-references.md %}
