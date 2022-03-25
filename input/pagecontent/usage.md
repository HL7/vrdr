### Miscellaneous Comments
* Guidance on missing data is missing from the IG
* Guidance on Must Support (and flag data elements as MS)
* Some IJE Fields intentionally not mapped
    * ALIAS, REPLACE, VOID
    * SEX_BYPASS  -- deprecated
* Some IJE fields map to:
    * Vital Records Messaging IG messages (e.g., VOID, ALIAS, and REPLACE  )
    * Vital Records Messaging IG content (e.g., coded ethnicity and race)
* Need to somehow differentiate between fields that are REQUIRED by NCHS and those that are mapped for the convenience of Inter-jurisdictional exchange.

### Partial Dates and Times
Several date/time fields (Date of Death, Date of Surgery, Date of Birth, and Date of Injry) in the IG allow components of the field to be unknown.  The FHIR [date](https://build.fhir.org/datatypes.html#date) and [datetime](https://build.fhir.org/datatypes.html#datetime) fields provide the ability to leave the less significant components unspecified (e.g., 2018, 1973-06, or 1905-08-23 are valid dates).  In addition to the built-in FHIR method for specifying partial dates, this IG provides extensions ([PartialDate] and [PartialDateTime]) that allow the components to be specified independently.  When using these extensions a value must be specified for each component (e.g., year, month, day), or a missing value code specified.  This allows dates where any component is missing to be specified.   Creaters of conformant content are free to choose to always use the Partial date and datetime extensions to represent their dates and times.
{% include markdown-link-references.md %}