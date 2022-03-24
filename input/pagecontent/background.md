The Centers for Disease Control (CDC) National Center for Health Statistics (NCHS) Division of Vital Statistics (DVS) is working closely with Federal, State, and local partners to take a fresh look at how mortality data are gathered, stored, and exchanged across the United States. DVS is focused on adopting best practices for information exchange that lessen the burden on data providers (e.g., vital records offices, medical examiner and coroner offices, toxicology labs) while providing a seamlessly automated data feed to public health and public safety data requestors.

To help make the mortality data ecosystem more connected, adaptable, and robust, they have chosen to leverage modern technologies and approaches, such as RESTful APIs and HL7s Fast Healthcare Interoperability Resources (FHIR) standard.

This implementation guide is an initial step to help define a common set of protocols and practices that developers can rely on to enhance their existing products and build solutions to help make mortality data flow more seamlessly.

### Structure of a Death Record
The profiles in this IG, together with profiles from USCore, are used to represent the content of the death record as used for submission from jurisdictional VROs to NCHS, and for inter-jurisdictional exchange among VROs.   The narrative content for each profile shows the mapping of death record content to the fields of the profile.   Instances of these profiles are assembled as shown below in a [DeathCertificateDocument], a profile of a FHIR Bundle of type document.  Within that Bundle are contained a [DeathCertificate], a profile of a FHIR Composition, along with instances of FHIR profiles that are referenced from the DeathCertificate.
<center>
<table><tr><td><img src="Structure.jpg" style="width:100%;"/></td></tr></table>
</center>
{% include markdown-link-references.md %}