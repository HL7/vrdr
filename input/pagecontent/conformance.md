### General Conformance Requirements
This FHIR IG specifies the content of data bundles sent as part of the death registration process.
The current agrement among the stakeholders in this process is codified in the Interjurisdictional Exchange (IJE) format.
Senders and receivers of data defined by the IJE standard, and thus by this IG, use various subsets of the data for their exchanges.  The primary conformance requirement is that the sender and the receiver of the data agree on the required fields for their exchange, with the required fields comprising a subset of the fields defined in the IJE format.   The data dictionary([html](DeathRecordDataDictionary.html), [xlsx](IJE_File_Layouts_Version_2021_FHIR.xlsx)) included in this IG specifies the mapping of these fields to FHIR elements.  The ability to generate and process the FHIR profiles, fields, and components referenced in the data dictionary required for the particular exchange between a sender and receiver represent the conformance requirements for this IG.   Creaters of content should consult with the intended recipient of the data to determine the precise set of fields that are required for their intended exchange.

### Capability Statement
No capability statement is included because no IG-specific operations or search capabilities are required and the only expectation is that senders can send a message bundle and receivers can receive one, where the messaging transactions are defined elsewhere.

### Must Support
Given the general conformance requirements outlined above, this IG does not add any Must Support flags to its profiles.  Fields that are used for exchange are all present in the differential view for each profile, documented in the [data dictionary](DeathRecordDataDictionary.html), and in the documentation for each profile.

### Missing Data
Where relevant, value sets bound to codeable concepts provide options to indicate that data is missing or unknown.   Some [date/time fields](usage.html#partial-dates-and-times) provide the ability to indicate unknown components (e.g., missing year). A bundle that does not include certain profile instances should be mapped to blank values in the IJE format.
