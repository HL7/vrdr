# vrdr
Vital Records Death Reporting

The purpose of the VRDR FHIR IG is to provide guidance regarding the use of FHIR resources as a conduit for data required in the bidirectional exchange of mortality data between State-run Public Health Agencies (PHA) Vital Records offices and U.S. National Center for Health Statistics (NCHS).

Maintenance Notes:
 - Much of the documentation is driven from the [IJE spreadsheet](https://build.fhir.org/ig/HL7/vrdr/IJE_File_Layouts_and_FHIR_Mapping_24-06-21.csv).  Because the IJE spreadsheet and [Forms Mapping spreadsheet](https://github.com/nightingaleproject/vital_records_sheets/blob/master/Forms_Mapping.csv) are used across multiple Vital Records IG's, maintenance of these spreadsheets are handled on the nightingaleproject github repository: https://github.com/nightingaleproject/vital_records_sheets. Best practice involves downloading the latest versions of the spreadsheets locally before running any of the tooling scripts. It is also recommended that the version of the spreadsheet used to build a version of an IG be checked in with the respective IG for tracking purposes. Instructions for downloading the appropriate spreadsheets are located at the top of each script. 
 - For detailed instructions on making updates to the data dictionaries ([death record](https://build.fhir.org/ig/HL7/vrdr/DeathRecordDataDictionary.html) or [mortality roster](https://build.fhir.org/ig/HL7/vrdr/MortalityRosterDataDictionary.html)), [VRDR Forms Mapping page](https://build.fhir.org/ig/HL7/vrdr/vrdr_forms_mapping.html), or <profile>-intro.md files, please see https://github.com/HL7/vrdr/blob/master/tools/README.md 

