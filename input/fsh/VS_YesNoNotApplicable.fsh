ValueSet: YesNoNotApplicableVS
Id: vrdr-yes-no-not-applicable-vs
Title: "Yes No NotApplicable"
Description: """A set of codes used to express an affirmative response (Yes), negative response (No), or indicate that a response is not applicable (NA) with regard to the question posed.

**Inter-jurisdictional Exchange (IJE) concept mapping**

|VRDR IG Code | VRDR IG Display Name | IJE Code |IJE Display Name
| -------- | -------- | -------- | --------|
|N|No|Y|Yes|
|Y|Yes|N|No|
|NA|not applicable|X|Not Applicable: Computer generated|"""
* $v2-0136#N "No"
* $v2-0136#Y "Yes"
* $v3-NullFlavor#NA "not applicable"

ValueSet: NotApplicableVS
Id: vrdr-not-applicable-vs
Title: "NotApplicable"
Description: "Value set with Not Applicable"
* $v3-NullFlavor#NA "not applicable"