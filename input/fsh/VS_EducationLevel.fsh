ValueSet: EducationLevelVS
Id: vrdr-education-level
Title: "Education Level PHVS_DecedentEducationLevel_NCHS"
Description: """A value set of educational milestones used to identify the highest

**Inter-jurisdictional Exchange (IJE) concept mapping**

|VRDR IG Code | VRDR IG Display Name | IJE Code |IJE Display Name
| -------- | -------- | -------- | --------|
|ASSOC|Associate's or technical degree complete|5|Associate Degree|
|BD|College or baccalaureate degree complete|6|Bachelor's Degree|
|ELEM|Elementary School|1|8th grade or less|
|GD|Graduate or professional Degree complete|7|Master's Degree|
|HS|High School or secondary school degree complete|3|High School Graduate or GED Completed|
|POSTG|Doctoral or post graduate education|8|Doctorate Degree or Professional Degree|
|SCOL|Some College education|4|Some college credit, but no degree|
|SEC|Some secondary or high school education|2|9th through 12th grade; no diploma|
|UNK|unknown|9|Unknown|"""
* insert boilerplate
* $v3-EducationLevel#ASSOC "Associate's or technical degree complete"
* $v3-EducationLevel#BD "College or baccalaureate degree complete"
* $v3-EducationLevel#ELEM "Elementary School"
* $v3-EducationLevel#GD "Graduate or professional Degree complete"
* $v3-EducationLevel#HS "High School or secondary school degree complete"
* $v3-EducationLevel#POSTG "Doctoral or post graduate education"
* $v3-EducationLevel#SCOL "Some College education"
* $v3-EducationLevel#SEC "Some secondary or high school education"
* $v3-NullFlavor#UNK "unknown"