### Miscellaneous Comments
* Guidance on missing data is missing from the IG
* Guidance on Must Support (and flag data elements as MS)
* Some IJE Fields intentionally not mapped
    * SEX_BYPASS  -- deprecated

### Alias, Replace, Void Actions
Some IJE fields (ALIAS, REPLACE, VOID) are used to direct an action be performed on a death record.  These actions are now specified through message types in the accompanying Vital Records Messaging Implementation Guide message descriptions for [Alias](http://build.fhir.org/ig/nightingaleproject/vital_records_fhir_messaging_ig/branches/main/message.html#alias), [Replace](http://build.fhir.org/ig/nightingaleproject/vital_records_fhir_messaging_ig/branches/main/message.html#replace), and [Void](http://build.fhir.org/ig/nightingaleproject/vital_records_fhir_messaging_ig/branches/main/message.html#void).

### Partial Dates and Times
Several date/time fields (Date of Death, Date of Surgery, Date of Birth, and Date of Injury) in the IG allow components of the field to be unknown.  The FHIR [date](https://build.fhir.org/datatypes.html#date) and [datetime](https://build.fhir.org/datatypes.html#datetime) fields provide the ability to leave the less significant components unspecified (e.g., 2018, 1973-06, or 1905-08-23 are valid dates).  In addition to the built-in FHIR method for specifying partial dates, this IG provides extensions ([PartialDate] and [PartialDateTime]) that allow the components to be specified independently.  When using these extensions a value must be specified for each component (e.g., year, month, day), or a missing value code specified.  This allows dates where any component is missing to be specified.   Creaters of conformant content are free to choose to always use the Partial date and datetime extensions to represent their dates and times.

### City Codes
FHIR [addresses](https://build.fhir.org/datatypes.html#Address) support a string value for city. The death record submission requires a 5 digit coded value, so the IG defines an extension [CityCode] for this purpose. The code should be selected to match the literal content of the city field. As of the date of publication, these codes should be in accordance with the [NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014](https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf).

### County Codes
FHIR [addresses](https://build.fhir.org/datatypes.html#Address) support a string value for county (district). The death record submission requires a 3 digit coded value, so the IG defines an extension [DistrictCode] for this purpose. The code should be selected to match the literal content of the district field. As of the date of publication, these codes should be in accordance with the [NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014](https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf).

{% include markdown-link-references.md %}
