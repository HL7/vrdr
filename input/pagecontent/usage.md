* use of code.text to include literal string when coded value is 'other'
* Guidance on missing data
* Guidance on Must Support (and flag data elements as MS)
* State/Province vs Jurisdiction -- when used
DSTATE = in an extension in Decedent, jurisdiction VS
BPLACE_ST = in astandard extension in Decedent.    state field means address state, not jurisdiction.   Would need to add extension to support inclusion of jurisdiction code, or constrain the address state field to jurisdiction.  If non-US this could be an issue.
BSTATE = is in BirthRecordIdentifier, and it is a Jurisdiction.
STATEC = is US State/Territory or CA Province/Territory, not Jurisdiction.