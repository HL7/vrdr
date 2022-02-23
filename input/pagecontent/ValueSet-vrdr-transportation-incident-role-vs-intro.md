### Usage

| IJE code | IJE Description | FHIR code  |FHIR description|
| ----------------- | ------- | ---------| --------------- |
|DR |Driver/Operator| 236320001|Vehicle driver|
|PA |Driver/Operator| 257500003|Vehicle passenger|
|PE |Driver/Operator| 257518000|Pedestrian|
| <no code>  |               | UNK  | Unkown     |
| <literal text>   | Other  | Other |Other (specify in .text field)|
{: .grid }

If decedent was not injured in a transportation incident, the DecedentTransportationRole should not be included in the Death Certificate.   There is no code for Not Applicable.

Note that all codes except  UNK are drawn from the SNOMED-CT codesystem.
UNK is drawn from Null Flavor.
