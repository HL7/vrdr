CodeSystem: CodeSystemEditFlagsVitalRecords
Id: CodeSystem-vr-edit-flags
Title: "Birth and Death Edit Flags Vital Records"
Description: "This code system contains codes to represent all edit flags"
* ^caseSensitive = true
* ^content = #complete
* ^experimental = false
* #0 "Edit Passed" "Edit Passed" //PHC1362
* #0off "Off" //PHC1380
* #1 "Edit Failed, Data Queried, and Verified" "Edit Failed, Data Queried, and Verified" //PHC1363
* #1queriedCorrect "Queried, and Correct" "Queried, and Correct" //PHC1494
* #1dataQueried "Data queried" "Data queried" //PHC2143
* #2 "Edit Failed, Data Queried, but not Verified" "Edit Failed, Data Queried, but not Verified" //PHC1364 
* #2pluralityQueriedInconsistent "Plurality/Set Order Queried, Inconsistent" "Plurality/Set Order Queried, Inconsistent" //PHC1495
* #3 "Edit Failed, Review Needed" "Edit Failed, Review Needed" //PHC1366
* #4 "Edit Failed, Query Needed" "Edit Failed, Query Needed" //PHC1365



// * #DEducBypass0 "Decedents Education - Edit Passed" // * #editBypass0
// * #DEducBypass1 "Decedents Education - Edit Failed, Data Queried, and Verified" // * #editBypass1
// * #DEducBypass2 "Decedents Education - Edit Failed, Data Queried, but not Verified" // * #editBypass2
// * #DEducBypass3 "Decedents Education - Edit Failed, Review Needed" // * #editBypass3
// * #DEducBypass4 "Decedents Education - Edit Failed, Query Needed" // * #editBypass4
// * #sexBypass0 "Sex - Edit Passed" // * #editBypass0
// * #sexBypass1 "Sex - Edit Failed, Data Queried, and Verified" // * #editBypass1
// * #ageBypass0 "Age - Edit Passed" // * #editBypass0
// * #ageBypass1 "Age - Edit Failed, Data Queried, and Verified" // * #editBypass1
// * #maritalBypass0 "Marital - Edit Passed" // * #editBypass0
// * #maritalBypass1 "Marital - Edit Failed, Data Queried, and Verified" // * #editBypass1
// * #maritalBypass2 "Marital - Edit Failed, Data Queried, but not Verified" // * #editBypass2
// * #maritalBypass4 "Marital - Edit Failed, Query Needed" // * #editBypass4
// * #MAgeBypass0 "Mothers Age - Edit Passed" // * #editBypass0
// * #MAgeAgeBypass1 "Mothers Age - Data Queried" // #dataQueried
// * #FAgeBypass0 "Fathers Age - Edit Passed" //PHC1362 // * #editBypass0
// * #FAgeBypass1 "Fathers Age - Data Queried" //PHC2143 // #dataQueried
// * #MEducBypass0 "Mothers Education - Edit Passed" // #editBypass0
// * #MEducBypass1 "Mothers Education - Edit Failed, Data Queried and Verified" //  #editBypass1
// * #MEducBypass2 "Mothers Education - Edit Failed, Data Queried, but not Verified" // #editBypass2
// * #FEducBypass0 "Fathers Education - Edit Passed" //  #editBypass0
// * #FEducBypass1 "Fathers Education - Edit Failed, Data Queried and Verified" //  #editBypass1
// * #FEducBypass2 "Fathers Education - Edit Failed, Data Queried, but not Verified" //  #editBypass2
// * #NPrevBypass0 "Number of Prenatal Care Visits - Edit Passed" //  #editBypass0
// * #NPrevBypass1 "Number of Prenatal Care Visits - Edit Failed, Number Verified" //  #editBypass1
// * #NPrevBypass2 "Number of Prenatal Care Visits - Edit Failed, Number not Verified" //  #editBypass2
// * #HGTBypass0 "Mothers Height - Edit Passed" // #editBypass0
// * #HGTBypass1 "Mothers Height - Edit Failed, Number Verified" // #editBypass1
// * #HGTBypass2 "Mothers Height - Edit Failed, Number not Verified" // #editBypass2
// * #PWGTBypass0 "Mothers Prepregnancy Weight - Edit Passed"  #editBypass0
// * #PWGTBypass1 "Mothers Prepregnancy Weight - Edit Failed, Number Verified" // #editBypass1
// * #PWGTBypass2 "Mothers Prepregnancy Weight - Edit Failed, Number not Verified" // #editBypass2
// * #DWGTBypass0 "Mothers Delivery Weight - Edit Passed" // #editBypass0
// * #DWGTBypass1 "Mothers Delivery Weight - Edit Failed, Number Verified" // #editBypass1
// * #DWGTBypass2 "Mothers Delivery Weight - Edit Failed, Number not Verified" // #editBypass2
// * #NPCesBypass0 "Number of Previous Cesareans - Edit Passed" // #editBypass0
// * #NPCesBypass1 "Number of Previous Cesareans - Edit Failed, Verified" // #editBypass1
// * #birthweightBypass0 "Birthweight - Off" // #off
// * #birthweightBypass1 "Birthweight - Queried data correct, out of range" // #correctOutOfRange
// * #birthweightBypass2 "Birthweight - Queried, failed birthweight/gestation edit" // #failedBirthWeightGestationEdit
// * #OWGestBypass0 "Obstetric Estimation of Gestation - Off" // #off
// * #OWGestBypass1 "Obstetric Estimation of Gestation - Queried data correct, out of range" // #correctOutOfRange
// * #pluralityBypass0 "Plurality - Off" //  #off
// * #pluralityBypass1 "Plurality - Queried, and Correct" // #correctOutOfRange
// * #pluralityBypass2 "Plurality - Plurality/Set Order Queried, Inconsistent" // #pluralityQueriedInconsistent
// * #fetalWeightBypass0 "Weight of Fetus - Off" // #off
// * #fetalWeightBypass1 "Weight of Fetus - Queried data correct, out of range" // #correctOutOfRange
// * #fetalWeightBypass2 "Weight of Fetus - Queried, failed delivery weight/gestation edit" // #failedBirthWeightGestationEdit
// * #pregnancyReportBypass0 "Pregnancy Report - Edit Passed" // #editBypass0
// * #pregnancyReportBypass1 "Pregnancy Report - Edit Failed, Data Queried, and Verified" // #editBypass1
// * #pregnancyReportBypass2 "Pregnancy Report - Edit Failed, Data Queried, but not Verified" //#editBypass2
