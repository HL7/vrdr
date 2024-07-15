
### Overview

The VRDR FHIR IG specifies the the use of FHIR resources for the bidirectional exchange of mortality data between Jurisdictional Vital Records Offices (JVRO), and between JVROs and the U.S. Centers for Disease Control and Prevention (CDC)/National Center for Health Statistics (NCHS).  Jurisdictional Vital Records Offices (JVROs) submit vital records data (deaths, births, and fetal deaths) to NCHS under the terms bilateral contracts under the  Vital Statistics Cooperative Program  ([VSCP](https://www.ncbi.nlm.nih.gov/books/NBK219877/pdf/Bookshelf_NBK219877.pdf)).
The focus of this IG is the specification of data elements, not exchange mechanisms. The exchanged data entities are intended to be bundles representing death records and coded death record content.

Bidirectional exchange of mortality data between JVRO and NCHS is essential to support effective public health surveillance and emergency response efforts. Modernization of the reporting process should improve the timelineness of resporting and accuracy, and reduce costs. 

The VRDR FHIR IG lays the foundation for expansion of automated standards-driven information exchange to include tributary flows of information from entities such as physicians, medical examiners, coroners, funeral directors, and family members to JVROs and between JVROs and secondary users of detailed mortality data and aggregate statistics.

This FHIR implementation guide is the primary work product of [project #1475](https://bit.ly/34DRIoA) "Vital Records Mortality and Morbidity Reporting FHIR IG" sponsored by the Health Level Seven (HL7) Public Health Work Group (PHWG).   This guide and related materials are based on reporting specifications in U.S. jurisdictions. The data content of this IG are based upon the [U.S. Standard Certificate of Death](https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf), and the associated [edit specification](https://www.cdc.gov/nchs/data/dvs/death_edit_specifications.pdf) for submission of death records to NCHS. 

### Development History
The [STU2.2 version of this IG](https://hl7.org/fhir/us/vrdr/STU2.2/) published in 2023 served as the basis for production submission of death records by jurisdictions to NCHS.  

The primary change in the STU3 version of this IG is the refactoring of content driven by the [harmonization of vital records FHIR Implementation Guides]({{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}/vr_ig_harmonization.html).  This introduces a dependency on the [Vital Records Common Library FHIR IG]({{site.data.fhir.ver.hl7fhirusvrcommonlibrary}}) and loosening some unnecessary constraints so that VRDR resources can be reused within the [Medicolegal Death Investigation STU2 FHIR IG](https://hl7.org/fhir/us/mdi/2.0.0-snapshot1/) that is under development. This STU3 version also includes improved documentation, support for linkages from maternal death records to associated fetal death or birth records, and support for exchange of coded industry and occupation data. 

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
