### Miscellaneous Comments
* *Missing or Required Data*:  The resources in this IG are designed to support a variety of use cases, each with its own rules about what data elements are required.  The focus on this IG has been how to represent data elements used in death reporting, not whether a particular data element is required in a particular exchange.  This IG has a high degree of optionality among and within its data profiles.  Implementers of this IG should specify their own rules for missing or required data elements. 
* *Guidance on Must Support*:  Pursuant to the above-described high level of optionality in this IG, no additonal must-support flags have been specified beyond those established by the US Core base profiles.   Use-case specific business rules that are outside of this IG will be used by recipients of data to determine if necessary data is missing.
* *Support for Legacy Inter-Jurisdictional Exchange (IJE) fields*:
    * This IG aims to support all data elements in use for exchange of death records among jurisdictional vital records offices, and between vital records offices and NCHS.   
    * The mapping of data elements to FHIR data elements is provided by [data dictionaries](DeathRecordDataDictionary.html).   Any data element for which there was any evidence of use was mapped.   
    * Some data elements have been [deprecated](https://build.fhir.org/ig/HL7/vrdr/DeathRecordDataDictionary.html#not-implemented-content), and are not supported. 

### Alias, Replace, Void Actions
The ALIAS and VOID IJE fields are used to direct an action be performed on a death record.  These actions are now specified through message types in the accompanying Vital Records Messaging Implementation Guide message descriptions for [Alias](https://build.fhir.org/ig/nightingaleproject/vital_records_fhir_messaging_ig/branches/main/message.html#alias) and [Void](https://build.fhir.org/ig/nightingaleproject/vital_records_fhir_messaging_ig/branches/main/message.html#void).  Sending a replacement death record is also specified through the [Replace](https://build.fhir.org/ig/nightingaleproject/vital_records_fhir_messaging_ig/branches/main/message.html#replace) message type, but the status of the replacement is mapped to the VRDR IG (see [DeathCertificate]).

### Local Time
All event times should be recorded as the local time and local time zone where they took place.
 
### Partial Dates and Times
Several date/time fields (Date of Death, Date of Surgery, Date of Birth, and Date of Injury) in the IG allow components of the field to be unknown.  The FHIR [date](https://build.fhir.org/datatypes.html#date) and [datetime](https://build.fhir.org/datatypes.html#datetime) fields provide the ability to leave the less significant components unspecified (e.g., 2018, 1973-06, or 1905-08-23 are valid dates).  In addition to the built-in FHIR method for specifying partial dates, this IG provides extensions ([ExtensionPartialDateVitalRecords] and [ExtensionPartialDateTimeVitalRecords]) that allow the components to be specified independently.  When using these extensions, a value must be specified for each component (e.g., year, month, day), or a missing value code specified.  This allows dates where any component is missing to be specified.   Creators of conformant content are free to choose to always use the Partial date and datetime extensions to represent their dates and times.

A value of unknown (all 9's) in IJE is equivalent to a null value and a DataAbsentReason extension with the value of "unknown".  See this [DeathDate](Observation-DeathDate-Example3.json.html) for an example of both unknown integer values -- the day of death, "99" in IJE -- and unknown time value -- the time of death, "9999" in IJE.  

A value of blank (all ' ') in IJE is equivalent to a null value and a DataAbsentReason extension with the value of "temp-unknown".

Note: The partial dates and times representation will be modified somewhat in the next update of VRDR.  See the [description in the draft Vital Records Common Library IG](https://build.fhir.org/ig/HL7/vr-common-library/usage.html#partial-dates-and-times).

### City Codes
FHIR [addresses](https://build.fhir.org/datatypes.html#Address) support a string value for city. The death record submission requires a 5 digit coded value, so the IG defines an extension [ExtensionCityCodeVitalRecords] for this purpose. The code should be selected to match the literal content of the city field. As of the date of publication, these codes should be in accordance with the [NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014](https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf).

### County Codes
FHIR [addresses](https://build.fhir.org/datatypes.html#Address) support a string value for county (district). The death record submission requires a 3 digit coded value, so the IG defines an extension [ExtensionDistrictCodeVitalRecords] for this purpose. The code should be selected to match the literal content of the district field. As of the date of publication, these codes should be in accordance with the [NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014](https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf).

### State Literals
States and jurisdictions are consistently represented using two letter postal codes bound to a string field.   The IJE typically represents states using a 2 letter postal code and a separate literal field.  Mapping from the 2 letter codes to literals must be provided outside of the VRDR IG, and can leverage the [ValueSetStatesTerritoriesAndProvincesVitalRecords].

### Country Literals
Countries are consistently represented using two letter postal codes bound to a string field.   The IJE typically represents countries using a 2 letter postal code and a separate literal field.  Mapping from the 2 letter codes to literals must be provided outside of the VRDR IG, and can leverage the [CodeSystemCountryCodeVitalRecords].

### Decedent Name
Profile conformance requires that either a first, last, or middle name be provided based on US Core requirements.  If no name components are available, a data absent reason should be provided for at least one name component in order to conform to the profile requirements.

NCHS submission requires only a last name. Last name is required for NCHS submission.  If the decedent's legal name is unknown, name.family should be reported as 'UNKNOWN', or omitted. Placeholder names such as 'John Doe' or 'Jane Doe' should not be reported.

### Decedent Gender
Profile conformance requires that gender be provided.   A value of 'unknown' will satisfy this requirement.   There is no IJE field that is mapped to the Decedent.gender field.

### Birthplace State and Country
Recording birthplace state and country is described in [Instruction Manual Part 8a (2004), Section I](https://www.cdc.gov/nchs/data/dvs/imp8a_printversion_112706.pdf).

| **address.country** | **address.state** | **BPLACE_CNT** | **BPLACE_ST** | **Comment** | 
| ------------------- | ----------------- | -------------- | ------------- | ----------- | 
| US or CA | Valid 2-letter state | Same as FHIR | Same as FHIR | &nbsp; 
| US  | Invalid code, Blank, or UNK | US  | ZZ  |  UNK is equivalent to ZZ. | 
| CA  | Invalid, Blank, or UNK | CA  | XX  |  | 
| Other valid country code (except ZZ, and obviously US and CA) | All values. | Same as FHIR | XX  |  | 
| ZZ or other invalid values | All values. | ZZ  | ZZ  | ZZ is a valid country code in the valueset. | 
{: .grid }

{% include markdown-link-references.md %}

