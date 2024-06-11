# vrdr
Vital Records Death Reporting

The purpose of the VRDR FHIR IG is to provide guidance regarding the use of FHIR resources as a conduit for data required in the bidirectional exchange of mortality data between State-run Public Health Agencies (PHA) Vital Records offices and U.S. National Center for Health Statistics (NCHS).

Maintenance Notes:
 - Much of the documentation is driven from the [IJE Spreadsheet](IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.csv).  If you need to update the narrative descriptions in the <profile>-intro.md files, first update the spreadsheet, and then run this [script](https://github.com/HL7/vrdr/blob/master/tools/makemarkdownfromexcel.rb).
 - FSH syntax documentation of examples is generated using the [fshtomd.rb script](https://github.com/HL7/vrdr/blob/master/tools/fshtomd.rb)
 - Using the Excel sheet to drive the documentation makes it difficult to manage changes using github.   Recommend replacing the XLSX format with a CSV format.
