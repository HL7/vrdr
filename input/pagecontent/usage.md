### Miscellaneous Comments
* *Missing or Required Data*:  The resources in this IG are designed to support a variety of use cases, each with its own rules about what data elements are required.  The focus on this IG has been how to represent data elements used in death reporting, not whether a particular data element is required in a particular exchange.  This IG has a high degree of optionality among and within its data profiles.  Implementers of this IG should specify their own rules for missing or required data elements. 
* *Guidance on Must Support*:  Pursuant to the above-described high level of optionality in this IG, no additonal must-support flags have been specified beyond those established by the US Core base profiles.   Use-case specific business rules that are outside of this IG will be used by recipients of data to determine if necessary data is missing.
* *Support for Legacy Inter-Jurisdictional Exchange (IJE) fields*:
    * This IG aims to support all data elements in use for exchange of death records among jurisdictional vital records offices, and between vital records offices and NCHS.   
    * The mapping of data elements to FHIR data elements is provided by [data dictionaries](DeathRecordDataDictionary.html).   Any data element for which there was any evidence of use was mapped.   
    * 
    Some data elements have been [deprecated](https://build.fhir.org/ig/HL7/vrdr/DeathRecordDataDictionary.html#not-implemented-content), and are not supported. 

### Usage Notes in Vital Records Common Library
Usage notes for extensions that have been transitioned from VRDR to VRCL are found in [VRCL's usage page]({{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/usage.html).

### Alias, Replace, Void Actions
The ALIAS and VOID IJE fields are used to direct an action be performed on a death record.  These actions are now specified through message types in the accompanying Vital Records Messaging Implementation Guide message descriptions for [Alias](https://build.fhir.org/ig/nightingaleproject/vital_records_fhir_messaging_ig/branches/main/message.html#alias) and [Void](https://build.fhir.org/ig/nightingaleproject/vital_records_fhir_messaging_ig/branches/main/message.html#void).  Sending a replacement death record is also specified through the [Replace](https://build.fhir.org/ig/nightingaleproject/vital_records_fhir_messaging_ig/branches/main/message.html#replace) message type, but the status of the replacement is mapped to the VRDR IG (see [DeathCertificate]).

### Local Time
All event times should be recorded as the local time and local time zone where they took place.

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

