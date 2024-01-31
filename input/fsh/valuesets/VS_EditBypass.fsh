ValueSet: EditBypass01VS //decedent age edit flag
Id: vrdr-edit-bypass-01-vs
Title: "Edit Bypass 01"
Description: "A subset of code values (0 and 1) use to indicate the outcome of data validation assessment for unusual data values."
* insert boilerplate
* CodeSystemEditFlagsVitalRecords#0 "Edit Passed"
* CodeSystemEditFlagsVitalRecords#1 "Edit Failed, Data Queried, and Verified"
* ^experimental = false

ValueSet: EditBypass012VS //preg status edit flag
Id: vrdr-edit-bypass-012-vs
Title: "Edit Bypass 012"
Description: "A subset of code values (0, 1, and 2) use to indicate the outcome of data validation assessment for unusual data values."
* insert boilerplate
* CodeSystemEditFlagsVitalRecords#0 "Edit Passed"
* CodeSystemEditFlagsVitalRecords#1 "Edit Failed, Data Queried, and Verified"
* CodeSystemEditFlagsVitalRecords#2 "Edit Failed, Data Queried, but not Verified"
* ^experimental = false

ValueSet: EditBypass0124VS //marital status edit flag
Id: vrdr-edit-bypass-0124-vs
Title: "Edit Bypass 0124"
Description: "A subset of code values (0, 1, 2, and 4) use to indicate the outcome of data validation assessment for unusual data values."
* insert boilerplate
* CodeSystemEditFlagsVitalRecords#0 "Edit Passed"
* CodeSystemEditFlagsVitalRecords#1 "Edit Failed, Data Queried, and Verified"
* CodeSystemEditFlagsVitalRecords#2 "Edit Failed, Data Queried, but not Verified"
* CodeSystemEditFlagsVitalRecords#4 "Edit Failed, Query Needed"
* ^experimental = false
