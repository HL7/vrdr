# **Profiles**

The VRDR FHIR IG makes use of 35 FHIR Resource Profiles, 33 for content and 2 for workflow management. The 33 content profiles are grouped into 4 profile groups. Each profile group represents an aspect of the data collected on the [U.S. Standard Certificate of Death](https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf).

1. ***Decedent Demographics:*** is a profile group comprised of profiles containing decedent demographic data. Demograhic data includes information about related persons (Mother, Father, and Spouse) and social determinants such as education level and usual occupation. The information in this profile group are provided by a decedent informant.

1. ***Death Investigation:*** is a profile group comprised of profiles containing data obtained during the course of investigating a death. Many of these items are conditionally present in a death certification transaction depending on wheather or not a autopy was performed, an injury incident occured, or a transportation event was involved.

1. ***Death Certification:*** is a profile group comprised of profiles containing data related to the primary concern of the VRDR IG, Death Certification. In this group the causes of death and the causal pathway are documented and attested to by a death certifier (coroner or medical examiner).

1. ***Decedent Disposition:*** is a profile group comprised of profiles containing data related to the disposition of the decedents remains. The data in this profile group is typically provided by the funeral home performing the disposition services. The content of this profile group is authenticated by the funeral home director.

---
<center>

## **Content Profiles and Profile Groups**</center>

|Profile Group|Profile Name|Base Resource| |Profile Group|Profile Name|Base Resource|
|-|||||||
||||||||
|**Decedent Demographics**|{{pagelink: BirthRecordIdentifier }}|[STU3 Observation](http://www.hl7.org/fhir/observation.html)||**Death Investigation**|{{pagelink: AutopsyPerformedIndicator }}|[STU3 Observation](http://www.hl7.org/fhir/observation.html)|
||{{pagelink: Decedent }}|US-Core Patient|||{{pagelink: DeathDate }}|[STU3 Observation](http://www.hl7.org/fhir/observation.html)|
||{{pagelink: DecedentEducationLevel }}|[STU3 Observation](http://www.hl7.org/fhir/observation.html)|||{{pagelink: DeathLocation }}|FHIR Location|
||{{pagelink: DecedentEmploymentHistory }}|[STU3 Observation](http://www.hl7.org/fhir/observation.html)|||{{pagelink: DeathPronouncementPerformer }}|FHIR Practitioner|
||{{pagelink: DecedentFather }}|FHIR RelatedPerson|||{{pagelink: DecedentAge }}|[STU3 Observation](http://www.hl7.org/fhir/observation.html)|
||{{pagelink: DecedentMother }}|FHIR RelatedPerson|||{{pagelink: DecedentPregnancy }}|[STU3 Observation](http://www.hl7.org/fhir/observation.html)|
||{{pagelink: DecedentSpouse }}|FHIR RelatedPerson|||{{pagelink: DecedentTransportationRole }}|[STU3 Observation](http://www.hl7.org/fhir/observation.html)|
||||||{{pagelink: ExaminerContacted }}|[STU3 Observation](http://www.hl7.org/fhir/observation.html)|
|**Death Certification**|{{pagelink: CauseOfDeathCondition }}|FHIR Condition|||{{pagelink: InjuryIncident }}|[STU3 Observation](http://www.hl7.org/fhir/observation.html)|
||{{pagelink: CauseofDeathPathway }}|FHIR List|||{{pagelink: InjuryLocation }}|FHIR Location|
||{{pagelink: Certifier }}|FHIR Practitioner|||{{pagelink: TobaccoUseContributedToDeath }}|[STU3 Observation](http://www.hl7.org/fhir/observation.html)|
||{{pagelink: ConditionContributingToDeath }}|FHIR Condition|||||
||{{pagelink: DeathCertificate }}|FHIR Composition||**Decedent Disposition**|{{pagelink: DecedentDispositionMethod }}|[STU3 Observation](http://www.hl7.org/fhir/observation.html)|
||{{pagelink: DeathCertificateDocument }}|FHIR Bundle|||{{pagelink: DispositionLocation }}|FHIR Location|
||{{pagelink: DeathCertificateReference }}|FHIR Document Reference|||{{pagelink: FuneralHome }}|FHIR Organization|
||{{pagelink: DeathCertification }}|FHIR Procedure|||{{pagelink: FuneralHomeDirector }}|FHIR PractitionerRole|
||{{pagelink: InterestedParty }}|FHIR Organization|||{{pagelink: Mortician }}|FHIR Practitioner|
||{{pagelink: MannerofDeath }}|[STU3 Observation](http://www.hl7.org/fhir/observation.html)|||||
||||||||

---

## **VRDR FHIR IG UML Data Model**

<center>

{{render:vrdr/profilestructuraldefinitions-duplicate-2}}</center>

---
