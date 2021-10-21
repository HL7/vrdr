<div class="panel panel-gitlab-purple">
Connectathon September 2021 Version of VRDR IG
{: .panel-heading}
<div class="panel-body">

This branch is the version of the VRDR IG used at the September 2021 Connectathon.
It is supported by the following software tools:

|Release|VRDR|VRDR.Messaging| Release|Canary | Release | JavaLib |
|:------:|:------:|:------:|:------:|:------:|:------:|:------:|
| v3.2.1| [nuget](https://www.nuget.org/packages/VRDR/3.2.1) [github](https://github.com/nightingaleproject/vrdr-dotnet/releases/tag/v3.2.1) |	[nuget](https://www.nuget.org/packages/VRDR.Messaging/3.2.1) [github](https://github.com/nightingaleproject/vrdr-dotnet/releases/tag/v3.2.1)| v3.1.0|[github .exe](https://github.com/nightingaleproject/canary/releases/download/v3.1.0/canary-3.1.0-windows-x64.zip) [dockerhub](https://hub.docker.com/layers/mitre/canary/v3.1.0/images/sha256-44bee0f166efb939c94990d9e458147e0328996d42825e1874aa31fb0721852b?context=explore)|v1.2.3 |[github](https://github.com/MortalityReporting/VRDR_javalib/releases/tag/v.1.2.3-R4-STU1.2) |

</div>
</div>
### Overview

The VRDR FHIR IG provides guidance regarding the use of FHIR resources as a conduit for data required in the bidirectional exchange of mortality data between State-run Public Health Agencies (PHA) Vital Records offices and U.S. Centers for Disease Control and Prevention (CDC)/National Center for Health Statistics (NCHS).

Bidirectional exchange of mortality data between PHA Vital Records offices and NCHS is essential to effective public health surveillance and emergency response efforts. Automation of the reporting process adds efficiencies that dramatically improves the efficacy of event response, data analysis, and evidence-based measurable prevention of the causes of death.

The VRDR FHIR IG will provide guidance for the use of standard FHIR resources as a conduit for data required by vital records death reporting. The use of FHIR as a platform for automation of vital records death reporting is expected to improve existing automation by enabling wide-scale adoption and leveraging the potential of electronic health records and clinical decision support systems.

The VRDR FHIR IG will lay a foundation for expansion of automated standards-driven information exchange to include tributary flows of information from entities such as physicians, medical examiners, coroners, funeral directors, and family members to public health agencies and between public health agencies and secondary users of detailed mortality data and aggregate statistics.

This FHIR implementation guide is the primary work product of [project #1475](https://bit.ly/34DRIoA) "Vital Records Mortality and Morbidity Reporting FHIR IG" sponsored by the Health Level Seven (HL7) Public Health Work Group (PHWG).

The scope of the project is to produce and ballot a Standard for Trail Use (STU) Fast Healthcare Interoperability Resources (FHIR) implementation guide (IG) for use in reporting of death events to the U.S. National Center for Health Statistics (NCHS) by State and Local Public Health Agencies (PHA). The VRDR FHIR IG is based upon FHIR R4. The VRDR FHIR IG was successfully balloted as a standard for trial use (STU) in May 2019.

This is a U.S. Realm Specification. This guide and related materials are based on reporting specifications in U.S. jurisdictions. The data content of this IG are based upon the [U.S. Standard Certificate of Death](https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf).



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
<td>AbdulMalik Shakir, FHL7, President and Chief Informatics Scientist Hi3 Solutions</td>
<td><a href="mailto:abdulmalik.shakir@hi3solutions.com">abdulmalik.shakir@hi3solutions.com</a></td>
</tr>
</tbody>
</table>
