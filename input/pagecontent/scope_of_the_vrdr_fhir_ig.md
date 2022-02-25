### Scope
The scope of this VRDR FHIR IG is the reporting of incidents of death by State Registrars to the NCHS. The data content of this dataflow contains an aggregation of data collected in preceding dataflows and used in additional dataflows related to the secondary use of death information such as clinical research, law enforcement, and health policy determination.

<center>
<table><tr><td><img src="Scope.png" style="width:100%;"/></td></tr></table>
</center>

While the scope of this IG is limited to death reporting by State Registrars to the NCHS, the FHIR Resource Profiles have been designed with the intent of being reusable in related preceding and antecedent dataflows.

The actors supported in this implementation guide include:

* Jurisdictional Electronic Death Registration System (EDRS)
* The National Vital Statistics System (NVSS)
* Secondary Users of Death Information (Secondary Users)

<table><tr><td><img src="Sequences.png" style="width:100%;"/></td></tr></table>

The sequence of exchanges supported in this implementation guide include:

*** (5) Draft death certificate document from EDRS to the NVSS.**

In this exchange the regional EDRS sends a draft of the death certificate document with text values for causes of death and decedent race/ethnicity to the NVSS to be encoded.

*** (6) Standardized cause of death and decedent race/ethnicity coding from the NVSS to regional EDRS.**

In this exchange the NVSS returns coded values for causes of death and decedent race/ethnicity to the  EDRS for a particular death record. This exchange is outside the scope of this IG.

*** (7) Final death certificate document from  EDRS to the NVSS.**

In this exchange the  EDRS send the final death certificate to the NVSS. This exchange also supports the sending of a revised, amended, or replacement death certificate.

*** (8) Death certificate document from the NVSS to death information secondary users.**

In this exchange the NVSS sends a copy of the death certificate document it received from the regional EDRS to secondary users of death information.  This exchange is outside the scope of this IG.

*** (9) Death certificate document from  EDRS to death information secondary users.**

In this exchange the  EDRS send a copy of the final death certificate document to secondary users of death information.

### Relationship with other Implementation Guides
* [Vital Records FHIR Messaging Implementation Guide](http://build.fhir.org/ig/nightingaleproject/vital_records_fhir_messaging_ig/branches/IJEFieldNames/message.html)
* MDI Implementation Guide