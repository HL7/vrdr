# **Background**

CDC’s National Center for Health Statistics is working closely with Federal, State, and local partners to take a fresh look at how mortality data are gathered, stored, and exchanged across the United States. They are focused on adopting best practices for information exchange that lessen burden on data providers (e.g., vital records offices, medical examiner and coroner offices, toxicology labs) while providing a seamless automated data feed to public health and public safety data requestors. 

To help make the mortality data ecosystem more connected, adaptable, and robust, they have chosen to leverage modern technologies and approaches, such as RESTful based APIs and HL7’s Fast Healthcare Interoperability Resources (FHIR) standard.

This implementation guide is an initial step to help define a common set of protocols and practices that developers can rely on to enhance their existing products and build solutions to help make mortality data flow more seamlessly.

--- 

## **Vital Records Death Reporting Dataflow**

The following diagram depicts the major flow of vital records death information. Information about the decedent are captured from a variety of sources, including but not limited to electronic heath record systems. Death investigation activities yield additional information concerning the manner of death, factors contributing to the cause of death, and the causal pathway of cause of death conditions. 

Medicolegal Death Investigators file death certifications with state death registrars where that data are combined with information concerning the disposition of the descendant’s remains. State registrars report death incidents occurring in their jurisdiction to the CDC’s National Center for Health Statistics (NCHS).

<center>

{{render:vrdr/image002 }}</center>

---

## **Scope of the VRDR FHIR IG**

The scope of this VRDR FHIR IG is the reporting of incidents of death by State Registrars to the NCHS. The data content of this dataflow contains an aggregation of data collected in preceding dataflows and used in additional dataflows related to the secondary use of death information such as clinical research, law enforcement, and health policy determination. 

<center>

{{render:vrdr/vrdrfhirigscope }}</center>

While the scope of this IG is limited to death reporting by State Registrars to the NCHS, the FHIR Resource Profiles have been designed with the intent of being reusable in related preceding and antecedent dataflows.








