### Usage

The Decedent Education level profile contains the following information:


| **Name** |  **Field**   |  **Encoding**  |  **IJE Field Name(s)**  |
| ---------------| ------------------------ | ------------- | ------------------- |
| Husband's Surname/Wife's Maiden Last Name   | name.family  | string  | SPOUSEL  *** not supported by library ***|
| Spouse's First name   | name.given  | string  | SPOUSEF  *** not supported by library *** |
| Spouse's middle name   | name.given  | string  | SPOUSEMIDNAME *** not supported by library *** |
| Spouse's suffix   | name.suffix  | string  | SPOUSESUFFIX  *** not supported by library *** |
| Spouse is Alive?   | extension[SpouseIsAlive]  | needs to be defined (yes, no, *unmarried*, unknown)| SPOUSEL  **not supported by library** |
{: .grid }


### Conformance

{% include markdown-link-references.md %}
