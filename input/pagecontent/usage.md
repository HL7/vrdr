* use of code.text to include literal string when coded value is 'other'
* Guidance on missing data
* Guidance on Must Support (and flag data elements as MS)
* State/Province vs Jurisdiction -- when used
DSTATE = in an extension in Decedent, jurisdiction VS
BPLACE_ST = in astandard extension in Decedent.    state field means address state, not jurisdiction.   Would need to add extension to support inclusion of jurisdiction code, or constrain the address state field to jurisdiction.  If non-US this could be an issue.
BSTATE = is in BirthRecordIdentifier, and it is a Jurisdiction.
STATEC = is US State/Territory or CA Province/Territory, not Jurisdiction.
* Some IJE Fields intentionally not mapped
    * ALIAS, REPLACE, VOID
    * STNUM_R, PREDIR_R, STNAME_R, STDESIG_R, POSTDIR_R, UNITNUM_R -- not supported by FHIR Addresses
    * SEX_BYPASS  -- deprecated
    * STATESP  -- deprecated
    * SUR_MO, SUR_DY, SUR_YR  -- not supported
    * AUXNO2 -- use case unclear
* Some IJE fields map to:
    * Vital Records Messaging IG messages (e.g., VOID, ALIAS, and REPLACE  )
    * Vital Records Messaging IG content (e.g., coded ethnicity and race)
* Need to somehow differentiate between fields that are REQUIRED by NCHS and those that are mapped for the convenience of Inter-jurisdictional exchange.