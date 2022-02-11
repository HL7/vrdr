ValueSet: MaritalStatusVS
Id: vrdr-marital-status-vs
Title: "Marital Status Value Set "
Description: """The set of codes used to indicate the marital status of the decedent. PHV

**Inter-jurisdictional Exchange (IJE) concept mapping**

|VRDR IG Code | VRDR IG Display Name | IJE Code |IJE Display Name
| -------- | -------- | -------- | --------|
|D|Divorced|D|Divorced|
|L|Legally Separated|A|Married but Separated|
|M|Married|M|Married|
|S|Never Married|S|Never Married|
|W|Widowed|W|Widowed|
|UNK|unknown|U|Not Classifiable|"""
* insert boilerplate
* $v3-MaritalStatus#D "Divorced"
* $v3-MaritalStatus#L "Legally Separated"
* $v3-MaritalStatus#M "Married"
* $v3-MaritalStatus#S "Never Married"
* $v3-MaritalStatus#W "Widowed"
* $v3-NullFlavor#UNK "unknown"