
RuleSet: BundleIdentifiers
* identifier.value ^short = "Death Record Identifier (YYYYJJNNNNNN)"
* identifier.value ^definition = "A unique value used by the NCHS to identify a death record. The NCHS uniquely identifies death records by combining three concepts: the year of death (as a four digit number), the jurisdiction of death (as a two character jurisdiction identifier), and the death certificate number assigned by the jurisdiction (a number with up to six digits, left padded with zeros). "
* identifier.value ^maxLength = 12
* identifier 1..1
* identifier.extension contains
    CertificateNumber named certificateNumber 0..1 and
    AuxiliaryStateIdentifier1 named auxiliaryStateIdentifier1 0..1 and
    AuxiliaryStateIdentifier2 named auxiliaryStateIdentifier2 0..1