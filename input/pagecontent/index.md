
### Overview

The VRDR FHIR IG provides guidance regarding the use of FHIR resources as a conduit for data required in the bidirectional exchange of mortality data between Jurisdictional Vital Records Offices (JVRO) in the US and U.S territories  and U.S. Centers for Disease Control and Prevention (CDC)/National Center for Health Statistics (NCHS).

Bidirectional exchange of mortality data between PHA Vital Records offices and NCHS is essential to effective public health surveillance and emergency response efforts. Automation of the reporting process adds efficiencies that dramatically improves the efficacy of event response, data analysis, and evidence-based measurable prevention of the causes of death.

The VRDR FHIR IG will provide guidance for the use of standard FHIR resources as a conduit for data required by vital records death reporting. The use of FHIR as a platform for automation of vital records death reporting is expected to improve existing automation by enabling wide-scale adoption and leveraging the potential of electronic health records and clinical decision support systems.  The VRDR FHIR IG will lay a foundation for expansion of automated standards-driven information exchange to include tributary flows of information from entities such as physicians, medical examiners, coroners, funeral directors, and family members to JVROs and between JVROs and secondary users of detailed mortality data and aggregate statistics.

The scope of the project is to develop a Fast Healthcare Interoperability Resources (FHIR) implementation guide (IG) for use in reporting of death events to the U.S. National Center for Health Statistics (NCHS) by State and Local Public Health Agencies (PHA).   The VRDR FHIR IG is a US realm specification based upon FHIR R4.  

This FHIR implementation guide is the primary work product of [project #1475](https://bit.ly/34DRIoA) "Vital Records Mortality and Morbidity Reporting FHIR IG" sponsored by the Health Level Seven (HL7) Public Health Work Group (PHWG).   This guide and related materials are based on reporting specifications in U.S. jurisdictions. The data content of this IG are based upon the [U.S. Standard Certificate of Death](https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf), and the associated [edit specification](https://www.cdc.gov/nchs/data/dvs/death_edit_specifications.pdf) for submission of death records to NCHS. 

### Development History
The STU2.2 version of this IG published in 2023 served as the basis for production submission of death records by jurisdictions to NCHS.  

The primary change in the STU3 version of this IG is the refactoring of content driven by the [harmonization of vital records FHIR Implementation Guides](https://hl7.org/fhir/us/vr-common-library/2024Jan/vr_ig_harmonization.html).  This introduces a dependency on the [Vital Records Common Library FHIR IG](https://hl7.org/fhir/us/vr-common-library/2024Jan) and loosening some unnecessary constraints so that VRDR resources can be reused within the [Medicolegal Death Investigation STU2 FHIR IG](https://build.fhir.org/ig/HL7/fhir-mdi-ig/) that is under development. This STU3 version also includes improved documentation, support for linkages from maternal death records to associated fetal death or birth records, and support for exchange of coded industry and occupation data. 

See the [change log](change_log.html) for an updated list of changes.


### Authors

<table>
<thead>
<tr>
<th>Name</th>
<th>Email/URL</th>
</tr>
</thead>
<tbody>
<tr>
<td>HL7 International - Public Health</td>
<td><a href="http://www.hl7.org/Special/committees/pher" target="_new">http://www.hl7.org/Special/committees/pher</a></td>
</tr>
<tr>
<td>Cynthia Bush, Health Scientist (Informatics), CDC/National Center for Health Statistics</td>
<td><a href="mailto:pdz1@cdc.gov">pdz1@cdc.gov</a></td>
</tr>
<tr>
<td>Saul A. Kravitz, MITRE Corporation</td>
<td><a href="mailto:saul@mitre.org">saul@mitre.org</a></td>
</tr>
</tbody>
</table>
