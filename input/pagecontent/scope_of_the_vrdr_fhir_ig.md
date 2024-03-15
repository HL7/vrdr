### Scope
The scope of this VRDR FHIR IG is the reporting of incidents of death by State Registrars to the NCHS. The data content of this dataflow contains an aggregation of data collected in preceding dataflows and used in additional dataflows related to the secondary use of death information such as clinical research, law enforcement, and health policy determination.

<center>
<table><tr><td><img src="Scope.png" style="width:100%;"/></td></tr></table>
</center>

While the scope of this IG is limited to death reporting by State Registrars to the NCHS, the FHIR Resource Profiles have been designed with the intent of being reusable in related preceding and antecedent dataflows.

### Relationship with other Implementation Guides
* [NCHS Vital Records FHIR Messaging Implementation Guide](https://build.fhir.org/ig/nightingaleproject/vital_records_fhir_messaging_ig/branches/main/index.html):   The VRDR IG specifies the content of messages sent between JVROs and NCHS.  This associated IG specifies the messaging envelopes used for actual exchange of the content.
* [HL7 MDI Implementation Guide](https://build.fhir.org/ig/HL7/fhir-mdi-ig/):  The Medico-Legal Death Investigation (MDI) IG specifies FHIR content for the closely related MDI activity.  The MDI STU2 has been refactored to depend on both VRDR and the [Vital Records Common Library IG] as part of the [harmonization of vital records FHIR Implementation Guides](https://hl7.org/fhir/us/vr-common-library/2024Jan/vr_ig_harmonization.html).

{% include markdown-link-references.md %}