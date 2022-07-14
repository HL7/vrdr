### Usage
Note: The Certifier profile is based on the [US Core Practitioner](http://hl7.org/fhir/us/core/StructureDefinition-us-core-practitioner.html) which requires an identifier be included.
The death record submission process does not require an identifier.  As a result, death record submissions that are complete will be flagged as invalid by the FHIR validator, unless they include
an identifier.

| **#** |  **Description**   |  **IJE Name**   | IJE only |  **Field**  |  **Type**  | **Value Set**  |
| :---------: | ------------- | ------------ | :----------: |---------- | -------- | -------- |
| 220 | Certifier's First Name | CERTFIRST| x|name.given , name.use = official | string | - | 
| 221 | Certifier's Middle Name | CERTMIDDLE| x|name.given , name.use = official | string | - | 
| 222 | Certifier's Last Name | CERTLAST| x|name.family , name.use = official | string | - | 
| 223 | Certifier's Suffix Name | CERTSUFFIX| x|name.suffix , name.use = official | string | - | 
| 224 | Certifier - Street number | CERTSTNUM| x|address.extension[stnum] | string | - | 
| 225 | Certifier - Pre Directional | CERTPREDIR| x|address.extension[predir] | string | - | 
| 226 | Certifier - Street name | CERTSTRNAME| x|address.extension[stname] | string | - | 
| 227 | Certifier - Street designator | CERTSTRDESIG| x|address.extension[stdesig] | string | - | 
| 228 | Certifier - Post Directional | CERTPOSTDIR| x|address.extension[postdir] | string | - | 
| 229 | Certifier - Unit or apt number | CERTUNITNUM| x|address.extension[unitnum] | string | - | 
| 230 | Long string address for Certifier same as above but allows states to choose the way they capture information. | CERTADDRESS| x|address.line  | string | - | 
| 231 | Certifier - City or Town name | CERTCITYTEXT| x|address.city  | string | - | 
| 232 | State, U.S. Territory or Canadian Province of Certifier - code | CERTSTATECD| x|address.state | string | [StatesTerritoriesProvincesVS] | 
| 233 | State, U.S. Territory or Canadian Province of Certifier - literal | CERTSTATE| x|address.state (expanded from 2 letter code) | string | See [StateLiterals] | 
| 234 | Certifier - Zip | CERTZIP| x|address.postalCode | string | - | 
{: .grid }
{% include markdown-link-references.md %}
