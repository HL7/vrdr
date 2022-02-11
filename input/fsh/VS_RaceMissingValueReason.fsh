ValueSet: RaceMissingValueReasonVS
Id: vrdr-race-nissing-value-reason-vs
Title: "Race Missing Value Reason"
Description: """A set of code values used to indicate the reason decedent race data is absent.

**Inter-jurisdictional Exchange (IJE) concept mapping**

|VRDR IG Code | VRDR IG Display Name | IJE Code |IJE Display Name
| -------- | -------- | -------- | --------|
|R|Refused|R|Refused|
|S|Sought, but unknown|S|Sought, but unknown|
|C|Not obtainable|C|Not obtainable|"""
* ^name = "Race Missing Value Reason"
* insert boilerplate
* MissingValueReasonCS#R "Refused"
* MissingValueReasonCS#S "Sought, but unknown"
* MissingValueReasonCS#C "Not obtainable"