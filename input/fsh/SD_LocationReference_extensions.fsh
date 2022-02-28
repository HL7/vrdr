



Extension: InjuryLocationReference
Id: InjuryLocationReference
Title: "Injury Location Reference"
Description: "Injury Location Reference (Extension)"
* extension 0..0
* value[x] 1..1
* value[x] only Reference
* value[x] only Reference(InjuryLocation)


Extension: DeathLocationReference
Id: DeathLocationReference
Title: "Death Location Reference"
Description: "Death Location Reference (Extension)"
* extension 0..0
* value[x] 1..1
* value[x] only Reference
* value[x] only Reference(DeathLocation)

Extension: DispositionLocationReference
Id: DispositionLocationReference
Title: "Disposition Location Reference"
Description: "Disposition Location Reference (Extension)"
* extension 0..0
* value[x] 1..1
* value[x] only Reference
* valueReference only Reference(DispositionLocation)
